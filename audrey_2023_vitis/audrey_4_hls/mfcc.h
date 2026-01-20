#ifndef MFCC_HLS_H
#define MFCC_HLS_H

#include "ap_fixed.h"
#include <hls_x_complex.h>
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_fixed.h>


// 3 Steps for feature extraction:
//
// 1. FEATURE_0_STFT: Compute the Short-Time Fourier Transform (STFT) - only consider ABS of coefficients from 0 to N_SPECTROGRAM_BINS-1
// 2. FEATURE_1_MEL: Apply the Mel filterbank to the magnitude spectrogram
// 3. FEATURE_2_LOG: Take the logarithm of the output of the previous step

// TODO uncomment when implemented from top to bottom (FEATURE_0_STFT can be skipped for debugging purposes)
#define FEATURE_0_STFT
#define FEATURE_1_MEL
#define FEATURE_2_LOG

#define TOTAL_BITS 16
#define INTEGER 8

typedef ap_fixed<TOTAL_BITS,INTEGER> fix_t;
typedef hls::axis<fix_t, 0, 0, 0> AXI_TYPE;
typedef hls::x_complex<fix_t> complex_fix_t;

// For FFT only, subject to change
//typedef ap_fixed<16,1> ap_fft_t;
typedef fix_t ap_fft_t;
typedef hls::x_complex<ap_fft_t> complex_fft_in_t;
typedef hls::x_complex<ap_fft_t> complex_fft_out_t;

// Function that implements step as specified with FEATURE_X_XXXX
void mfcc(hls::stream<AXI_TYPE> &in_stream, hls::stream<AXI_TYPE> &out_stream);

#define SAMPLING_RATE 16000
#define WIN_SIZE_MS 32           // milliseconds
#define WIN_STRIDE_MS 10         // milliseconds
#define N_MFCC 42
#define LOWER_EDGE_HERTZ 20.0f
#define UPPER_EDGE_HERTZ 8000.0f

#define WIN_SIZE_SAMPLES 512     // (int) (WIN_SIZE_MS * SAMPLING_RATE / 1000)
#define WIN_STRIDE_SAMPLES 160   // (int) (WIN_STRIDE_MS * SAMPLING_RATE / 1000)
#define N_FRAMES 97              // (int) (1 + (SAMPLING_RATE - WIN_SIZE_SAMPLES) / WIN_STRIDE_SAMPLES)
#define N_SPECTROGRAM_BINS 257   // (int) (WIN_SIZE_SAMPLES / 2 + 1)

#endif
