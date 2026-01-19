#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>
#include <cmath>
#include <cstring>

#include "../src/mfcc.h"

using namespace std;

template<int W, int I>
ap_fixed<W, I> abs_ap_fixed(ap_fixed<W, I> x) {
    return (x < 0) ? ap_fixed<W,I>(-x) : ap_fixed<W,I>(x);
}

int run() {

    fix_t audio[SAMPLING_RATE];
    fix_t spectrogram_out[N_FRAMES][N_SPECTROGRAM_BINS];
    fix_t mfcc_out[N_FRAMES][N_MFCC];

    // golden values
    fix_t spectrogram_golden[N_FRAMES][N_SPECTROGRAM_BINS];
    fix_t mfcc_golden[N_FRAMES][N_MFCC];
    
    ifstream fin;

    // Check enabled features
    #if !defined(FEATURE_0_STFT) && !defined(FEATURE_1_MEL) && !defined(FEATURE_2_LOG)
        cout << "NOTE: No FEATURE_X_XXXX is defined. By default, the STFT output is passed to the model and returned without any change. Uncomment defnintions in mfcc.h once further functionality is implemented." << endl;
    #else
        cout << "The following features are enabled:" << endl;
        #ifdef FEATURE_0_STFT
            cout << "FEATURE_0_STFT" << endl;
        #endif
        #ifdef FEATURE_1_MEL
            cout << "FEATURE_1_MEL" << endl;
        #endif
        #ifdef FEATURE_2_LOG
            cout << "FEATURE_2_LOG" << endl;
        #endif
    #endif

    for (int test_case = 0; test_case < 10; test_case++) { // iterate over audio sequences
        char audio_filename[100];
        char mfcc_filename[100];

        cout << "-------------------------------------------------------------" << endl;
        cout << "Test case number " << test_case << endl;

        // Load input file (either audio or spectrogram)
        #ifdef FEATURE_0_STFT
            sprintf(audio_filename, "stimuli/_00_%02d_audio.txt", test_case);
            fin.open(audio_filename);
            if (!fin) {
                cerr << "Failed to open " << audio_filename << endl;
                return 1;
            }
            float temp;
            for (int i = 0; i < 16000; i++) {
                fin >> audio[i];
            }
            fin.close();
        #else
            sprintf(audio_filename, "stimuli/_01_%02d_spectrogram.txt", test_case);
            fin.open(audio_filename);
            if (!fin) {
                cerr << "Failed to open " << audio_filename << endl;
                return 1;
            }
            float temp;
            for (int i = 0; i < N_FRAMES; i++) {
                for (int j = 0; j < N_SPECTROGRAM_BINS; j++) {
                    fin >> spectrogram_out[i][j];
                }
            }
            fin.close();
        #endif

        hls::stream<AXI_TYPE> in_stream;
        hls::stream<AXI_TYPE> out_stream;

        for (int frame = 0; frame < N_FRAMES; frame++) { // iterate over frames
            #ifdef FEATURE_0_STFT
                for (int i = 0; i < WIN_SIZE_SAMPLES; i++) {
                    AXI_TYPE val_in;
                    val_in.data = audio[i + frame * WIN_STRIDE_SAMPLES];
                    val_in.keep = -1;
                    val_in.strb = -1;
                    val_in.user = 0;
                    val_in.last = (i == WIN_SIZE_SAMPLES-1) ? 1 : 0;
                    val_in.id = 0;
                    val_in.dest = 0;
                    in_stream.write(val_in);
                }
            #else
                for (int i = 0; i < N_SPECTROGRAM_BINS; i++) {
                    AXI_TYPE val_in;
                    val_in.data = spectrogram_out[frame][i];
                    val_in.keep = -1;
                    val_in.strb = -1;
                    val_in.user = 0;
                    val_in.last = (i == N_SPECTROGRAM_BINS-1) ? 1 : 0;
                    val_in.id = 0;
                    val_in.dest = 0;
                    in_stream.write(val_in);
                }
            #endif

            mfcc(in_stream, out_stream);

            #ifndef FEATURE_1_MEL
                for (int m = 0; m < N_SPECTROGRAM_BINS; m++) {
                    AXI_TYPE val_out = out_stream.read();
                    spectrogram_out[frame][m] = fix_t(val_out.data);
                }
            #elif !defined(FEATURE_2_LOG)
                for (int m = 0; m < N_MFCC; m++) {
                    AXI_TYPE val_out = out_stream.read();
                    mfcc_out[frame][m] = fix_t(val_out.data);
                }
            #else
                for (int m = 0; m < N_MFCC; m++) {
                    AXI_TYPE val_out = out_stream.read();
                    mfcc_out[frame][m] = fix_t(val_out.data);
                }
            #endif

        } // end of frame
    
        // Load expected output and compare
        float max_diff = 0;
        #ifndef FEATURE_1_MEL
            sprintf(mfcc_filename, "stimuli/_01_%02d_spectrogram.txt", test_case);
            fin.open(mfcc_filename);
            if (!fin) {
                cerr << "Failed to open " << mfcc_filename << endl;
                return 1;
            }
            for (int i = 0; i < N_FRAMES; i++) {
                for (int j = 0; j < N_SPECTROGRAM_BINS; j++) {
                    fin >> spectrogram_golden[i][j];
                }
            }
            fin.close();
            for (int i = 0; i < N_FRAMES; i++) {
                for (int j = 0; j < N_SPECTROGRAM_BINS; j++) {
                    float diff = abs_ap_fixed(spectrogram_out[i][j] - spectrogram_golden[i][j]);
                    max_diff = max(max_diff, diff);
                    if (diff > 0) {
                        cout << "ERROR at frame " << i << ", index " << j << endl;
                        cout << "Expected: " << spectrogram_golden[i][j] << endl;
                        cout << "Got: " << spectrogram_out[i][j] << endl;
                        return 1;
                    }
                }
            }
        #elif !defined(FEATURE_2_LOG)
            sprintf(mfcc_filename, "stimuli/_02_%02d_mel_spectrogram.txt", test_case);
            fin.open(mfcc_filename);
            if (!fin) {
                cerr << "Failed to open " << mfcc_filename << endl;
                return 1;
            }
            for (int i = 0; i < N_FRAMES; i++) {
                for (int j = 0; j < N_MFCC; j++) {
                    fin >> mfcc_golden[i][j];
                }
            }
            fin.close();
            for (int i = 0; i < N_FRAMES; i++) {
                for (int j = 0; j < N_MFCC; j++) {
                    float diff = abs_ap_fixed(mfcc_out[i][j] - mfcc_golden[i][j]);
                    max_diff = max(max_diff, diff);
                    if (diff > 0) {
                        cout << "ERROR at frame " << i << ", index " << j << endl;
                        cout << "Expected: " << mfcc_golden[i][j] << endl;
                        cout << "Got: " << mfcc_out[i][j] << endl;
                        return 1;
                    }
                }
            }
        #else
            sprintf(mfcc_filename, "stimuli/_03_%02d_log_mel_spectrogram.txt", test_case);
            fin.open(mfcc_filename);
            if (!fin) {
                cerr << "Failed to open " << mfcc_filename << endl;
                return 1;
            }
            for (int i = 0; i < N_FRAMES; i++) {
                for (int j = 0; j < N_MFCC; j++) {
                    fin >> mfcc_golden[i][j];
                }
            }
            fin.close();
            for (int i = 0; i < N_FRAMES; i++) {
                for (int j = 0; j < N_MFCC; j++) {
                    float diff = abs_ap_fixed(mfcc_out[i][j] - mfcc_golden[i][j]);
                    max_diff = max(max_diff, diff);
                    if (diff > 3.90625e-3) { // Allowing single bit errors at LSB (2**(-DECIMAL))
                        cout << "ERROR at frame " << i << ", index " << j << endl;
                        cout << "Expected: " << mfcc_golden[i][j] << endl;
                        cout << "Got: " << mfcc_out[i][j] << endl;
                        return 1;
                    }
                }
            }
        #endif
        cout << "Max difference: " << max_diff << endl;   
        cout << "PASSED" << endl;

    } // end of test case

    return 0;
}


int main() {
    
    cout << "Starting testbench..." << endl;
    int ret = run();
    cout << "Testbench completed." << endl;

    return ret;
}