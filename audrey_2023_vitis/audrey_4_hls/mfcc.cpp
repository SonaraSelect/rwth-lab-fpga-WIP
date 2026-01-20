#include <hls_stream.h>
#include <hls_math.h>
#include <hls_fft.h>
#include <ap_axi_sdata.h>
#include <cmath>
#include <complex>
#include <cstring>

#include "mfcc.h"
#include "mel_filterbank.h"

void feature_0_stft(complex_fft_in_t audio[WIN_SIZE_SAMPLES], fix_t abs_spectrogram[N_SPECTROGRAM_BINS]);
void feature_1_mel(fix_t abs_spectrogram[N_SPECTROGRAM_BINS], fix_t mel_filtered[N_MFCC]);
void feature_2_log(fix_t mel_filtered[N_MFCC], fix_t mfcc[N_MFCC]);


void mfcc(
    hls::stream<AXI_TYPE> &in_stream,
    hls::stream<AXI_TYPE> &out_stream
) {

/// Task: use pragmas to define HLS INTERFACE. example: #pragma HLS INTERFACE axis port=in_stream
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=in_stream
#pragma HLS INTERFACE axis port=out_stream

    ////////////////////////////////////////
    // INPUT ///////////////////////////////
    ////////////////////////////////////////
    #ifdef FEATURE_0_STFT
        complex_fft_in_t audio[WIN_SIZE_SAMPLES];
        task_2: for (int i = 0; i < WIN_SIZE_SAMPLES; i++) {
        /// Task: check if the loop can be pipelined or unrole using the pragmas
#pragma HLS PIPELINE II=1
            AXI_TYPE val_in = in_stream.read();
            audio[i].real(val_in.data);
            audio[i].imag(0);
        }
    #else // allow to start from STFT output for debugging purposes
        fix_t abs_spectrogram[N_SPECTROGRAM_BINS];
        task_3: for (int i = 0; i < N_SPECTROGRAM_BINS; i++) {
#pragma HLS PIPELINE II=1
        /// Task: check if the loop can be pipelined or unrole using the pragmas
            AXI_TYPE val_in = in_stream.read();
            abs_spectrogram[i] = val_in.data;
        }
    #endif

    ////////////////////////////////////////
    // STFT ////////////////////////////////
    ////////////////////////////////////////
    #ifdef FEATURE_0_STFT
        complex_fft_out_t fft_out[WIN_SIZE_SAMPLES];
        fix_t abs_spectrogram[N_SPECTROGRAM_BINS];
        feature_0_stft(audio, abs_spectrogram);
    #endif

    ////////////////////////////////////////
    // MEL /////////////////////////////////
    ////////////////////////////////////////
    #ifdef FEATURE_1_MEL
        fix_t mel_filtered[N_MFCC];
        feature_1_mel(abs_spectrogram, mel_filtered);
    #endif

    ////////////////////////////////////////
    // LOG /////////////////////////////////
    ////////////////////////////////////////
    #ifdef FEATURE_2_LOG
        fix_t mfcc[N_MFCC];
        feature_2_log(mel_filtered, mfcc);
    #endif

    ////////////////////////////////////////
    // OUTPUT //////////////////////////////
    ////////////////////////////////////////
    #ifndef FEATURE_1_MEL
        task_4: for (int m = 0; m < N_SPECTROGRAM_BINS; m++) {
#pragma HLS PIPELINE II=1
        /// Task: check if the loop can be pipelined or unrole using the pragmas
            AXI_TYPE val_out;
            val_out.data = abs_spectrogram[m];
            val_out.keep = -1; // All bytes are valid
            val_out.strb = -1;
            val_out.user = 0;
            val_out.last = (m == N_SPECTROGRAM_BINS - 1) ? 1 : 0;
            val_out.id = 0;
            val_out.dest = 0;
            out_stream.write(val_out);
        } 
    #elif !defined(FEATURE_2_LOG)
        task_5: for (int m = 0; m < N_MFCC; m++) {
#pragma HLS UNROLL
        /// Task: check if the loop can be pipelined or unrole using the pragmas
            AXI_TYPE val_out;
            val_out.data = mel_filtered[m];
            val_out.keep = -1; // All bytes are valid
            val_out.strb = -1;
            val_out.user = 0;
            val_out.last = (m == N_MFCC - 1) ? 1 : 0;
            val_out.id = 0;
            val_out.dest = 0;
            out_stream.write(val_out);
        } 
    #else
        task_6: for (int m = 0; m < N_MFCC; m++) {
        /// Task: check if the loop can be pipelined or unrole using the pragmas
#pragma HLS PIPELINE II=1
            AXI_TYPE val_out;
            val_out.data = mfcc[m];
            val_out.keep = -1; // All bytes are valid
            val_out.strb = -1;
            val_out.user = 0;
            val_out.last = (m == N_MFCC - 1) ? 1 : 0;
            val_out.id = 0;
            val_out.dest = 0;
            out_stream.write(val_out);
        }
    #endif

}


////////// Implementations of individual steps //////////


////////////////////////////////////////
// STFT ////////////////////////////////
////////////////////////////////////////
// Using structure below? 
struct config1 : hls::ip_fft::params_t {
    static const unsigned ordering_opt = hls::ip_fft::natural_order;
    static const unsigned config_width = TOTAL_BITS;
    static const unsigned input_width = 16;
    static const unsigned output_width = 16;
    static const unsigned phase_factor_width = 24;
    static const unsigned scaling_opt = hls::ip_fft::scaled;
    //static const unsigned channels = 8;
};

typedef hls::ip_fft::config_t<config1> config_t;
typedef hls::ip_fft::status_t<config1> status_t;


void feature_0_stft(complex_fft_in_t audio[WIN_SIZE_SAMPLES], fix_t abs_spectrogram[N_SPECTROGRAM_BINS]) {
	/*
    fix_t fft_out[WIN_SIZE_SAMPLES];

    config_t fft_config;
    status_t fft_status;
    
    fft_config.setDir(1); // Set FFT direction (e.g., forward FFT)
    fft_config.setSch(0xAAA); // Set a known scaling schedule

    hls::fft<config1>(audio, fft_out, &fft_status, &fft_config);
    
    // Temporary variable of output for further processing
    fix_t fft_out_tmp[WIN_SIZE_SAMPLES];
    for (int k = 0; k < WIN_SIZE_SAMPLES; k++) {
        fft_out_tmp[k] = fft_out[k];
    }
    */
    
    // Absolute of all coefficients from 0 to N_SPECTROGRAM_BINS
    for (int k = 0; k <= N_SPECTROGRAM_BINS; k++) {
#pragma HLS PIPELINE II=1
    /// Task: check if the loop can be pipelined or unrole using the pragmas
        int k_ = k + N_SPECTROGRAM_BINS/2;
        //out[k] = hls::sqrt(fft_out_tmp[k_].real() * fft_out_tmp[k_].real() + fft_out_tmp[k_].imag() * fft_out_tmp[k_].imag());
        abs_spectrogram[k] = fix_t(-1);
    }

}


////////////////////////////////////////
// MEL /////////////////////////////////
////////////////////////////////////////
void feature_1_mel(fix_t abs_spectrogram[N_SPECTROGRAM_BINS], fix_t mel_filtered[N_MFCC]) {
    for (int m = 0; m < N_MFCC; m++) {
    /// Task: check if the loop can be pipelined or unrole using the pragmas
        fix_t sum = 0;
        int start_idx = first_ind[m];   
        
        // Apply the weights for each filter
        for (int i = 0; i < MAX_NON_ZERO_FILTERS; i++) {
            sum += fix_t(abs_spectrogram[start_idx + i] * mel_filterbank[m][i]);
        }
    
        mel_filtered[m] = fix_t(sum);
    }  
}


////////////////////////////////////////
// LOG /////////////////////////////////
////////////////////////////////////////
void feature_2_log(fix_t mel_filtered[N_MFCC], fix_t mfcc[N_MFCC]) {
    for (int m = 0; m < N_MFCC; m++) {
#pragma HLS PIPELINE II=1
    /// Task: check if the loop can be pipelined or unrole using the pragmas
        mfcc[m] = hls::log(mel_filtered[m] + (fix_t) 3.90625e-3);
    }
}
