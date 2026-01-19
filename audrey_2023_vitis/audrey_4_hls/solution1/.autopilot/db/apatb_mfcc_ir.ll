; ModuleID = 'C:/Users/the5t/OneDrive/Documents/GitHub/rwth-lab-fpga-WIP/audrey_2023_vitis/audrey_4_hls/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>" = type { %"struct.hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>" }
%"struct.hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>" = type { %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>", %"struct.ap_uint<2>", %"struct.ap_uint<2>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 8, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 8, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: noinline
define void @apatb_mfcc_ir(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(8) %in_stream, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(8) %out_stream) local_unnamed_addr #0 {
entry:
  %in_stream_copy.data = alloca i16
  %in_stream_copy.keep = alloca i2
  %in_stream_copy.strb = alloca i2
  %in_stream_copy.last = alloca i1
  %out_stream_copy.data = alloca i16
  %out_stream_copy.keep = alloca i2
  %out_stream_copy.strb = alloca i2
  %out_stream_copy.last = alloca i1
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* nonnull %in_stream, i16* %in_stream_copy.data, i2* %in_stream_copy.keep, i2* %in_stream_copy.strb, i1* %in_stream_copy.last, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* nonnull %out_stream, i16* %out_stream_copy.data, i2* %out_stream_copy.keep, i2* %out_stream_copy.strb, i1* %out_stream_copy.last)
  call void @apatb_mfcc_hw(i16* %in_stream_copy.data, i2* %in_stream_copy.keep, i2* %in_stream_copy.strb, i1* %in_stream_copy.last, i16* %out_stream_copy.data, i2* %out_stream_copy.keep, i2* %out_stream_copy.strb, i1* %out_stream_copy.last)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %in_stream, i16* %in_stream_copy.data, i2* %in_stream_copy.keep, i2* %in_stream_copy.strb, i1* %in_stream_copy.last, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %out_stream, i16* %out_stream_copy.data, i2* %out_stream_copy.keep, i2* %out_stream_copy.strb, i1* %out_stream_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* noalias, i16* noalias "unpacked"="1.0" %_V_data_V, i2* noalias "unpacked"="1.1" %_V_keep_V, i2* noalias "unpacked"="1.2" %_V_strb_V, i1* noalias "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* noalias, i16* noalias "unpacked"="3.0" %_V_data_V1, i2* noalias "unpacked"="3.1" %_V_keep_V2, i2* noalias "unpacked"="3.2" %_V_strb_V3, i1* noalias "unpacked"="3.3" %_V_last_V4) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>.32"(i16* %_V_data_V, i2* %_V_keep_V, i2* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>.32"(i16* %_V_data_V1, i2* %_V_keep_V2, i2* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %1)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* noalias, i16* noalias "unpacked"="1.0" %_V_data_V, i2* noalias "unpacked"="1.1" %_V_keep_V, i2* noalias "unpacked"="1.2" %_V_strb_V, i1* noalias "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* noalias, i16* noalias "unpacked"="3.0" %_V_data_V1, i2* noalias "unpacked"="3.1" %_V_keep_V2, i2* noalias "unpacked"="3.2" %_V_strb_V3, i1* noalias "unpacked"="3.3" %_V_last_V4) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %0, i16* %_V_data_V, i2* %_V_keep_V, i2* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %1, i16* %_V_data_V1, i2* %_V_keep_V2, i2* %_V_strb_V3, i1* %_V_last_V4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* noalias align 512 %dst, i16* noalias "unpacked"="1.0" %src_V_data_V, i2* noalias "unpacked"="1.1" %src_V_keep_V, i2* noalias "unpacked"="1.2" %src_V_strb_V, i1* noalias "unpacked"="1.3" %src_V_last_V) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %dst, null
  %1 = or i1 %0, false
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>.27"(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* nonnull align 512 %dst, i16* %src_V_data_V, i2* %src_V_keep_V, i2* %src_V_strb_V, i1* %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>.27"(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* noalias nocapture align 512, i16* noalias nocapture "unpacked"="1.0" %_V_data_V, i2* noalias nocapture "unpacked"="1.1" %_V_keep_V, i2* noalias nocapture "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"
  %2 = alloca i16
  %3 = alloca i2
  %4 = alloca i2
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i16* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_2(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i16* %2 to i8*
  %9 = bitcast i16* %_V_data_V to i8*
  call void @fpga_fifo_pop_2(i8* %8, i8* %9)
  %10 = load volatile i16, i16* %2
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* %11 to i16*
  store i16 %10, i16* %12
  %13 = bitcast i2* %4 to i8*
  %14 = bitcast i2* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %13, i8* %14)
  %15 = bitcast i2* %4 to i8*
  %16 = load i8, i8* %15
  %17 = trunc i8 %16 to i2
  %18 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %19 = bitcast %"struct.ap_uint<2>"* %18 to i2*
  store i2 %17, i2* %19
  %20 = bitcast i2* %3 to i8*
  %21 = bitcast i2* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %20, i8* %21)
  %22 = bitcast i2* %3 to i8*
  %23 = load i8, i8* %22
  %24 = trunc i8 %23 to i2
  %25 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %26 = bitcast %"struct.ap_uint<2>"* %25 to i2*
  store i2 %24, i2* %26
  %27 = bitcast i1* %5 to i8*
  %28 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %27, i8* %28)
  %29 = bitcast i1* %5 to i8*
  %30 = load i8, i8* %29
  %31 = trunc i8 %30 to i1
  %32 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %33 = bitcast %"struct.ap_uint<1>"* %32 to i1*
  store i1 %31, i1* %33
  %34 = bitcast %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %1 to i8*
  %35 = bitcast %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %34, i8* %35)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>.32"(i16* noalias "unpacked"="0.0" %dst_V_data_V, i2* noalias "unpacked"="0.1" %dst_V_keep_V, i2* noalias "unpacked"="0.2" %dst_V_strb_V, i1* noalias "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %src, null
  %1 = or i1 false, %0
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>.35"(i16* %dst_V_data_V, i2* %dst_V_keep_V, i2* %dst_V_strb_V, i1* %dst_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>.35"(i16* noalias nocapture "unpacked"="0.0" %_V_data_V, i2* noalias nocapture "unpacked"="0.1" %_V_keep_V, i2* noalias nocapture "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* %8 to i16*
  %10 = bitcast i16* %9 to i8*
  %11 = bitcast i16* %_V_data_V to i8*
  call void @fpga_fifo_push_2(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<2>"* %12 to i2*
  %14 = bitcast i2* %13 to i8*
  %15 = bitcast i2* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<2>"* %16 to i2*
  %18 = bitcast i2* %17 to i8*
  %19 = bitcast i2* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_mfcc_hw(i16*, i2*, i2*, i1*, i16*, i2*, i2*, i1*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* noalias, i16* noalias "unpacked"="1.0" %_V_data_V, i2* noalias "unpacked"="1.1" %_V_keep_V, i2* noalias "unpacked"="1.2" %_V_strb_V, i1* noalias "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* noalias, i16* noalias "unpacked"="3.0" %_V_data_V1, i2* noalias "unpacked"="3.1" %_V_keep_V2, i2* noalias "unpacked"="3.2" %_V_strb_V3, i1* noalias "unpacked"="3.3" %_V_last_V4) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %0, i16* %_V_data_V, i2* %_V_keep_V, i2* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %1, i16* %_V_data_V1, i2* %_V_keep_V2, i2* %_V_strb_V3, i1* %_V_last_V4)
  ret void
}

define void @mfcc_hw_stub_wrapper(i16*, i2*, i2*, i1*, i16*, i2*, i2*, i1*) #5 {
entry:
  %8 = alloca %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"
  %9 = alloca %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %8, i16* %0, i2* %1, i2* %2, i1* %3, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %9, i16* %4, i2* %5, i2* %6, i1* %7)
  call void @mfcc_hw_stub(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %8, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %9)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %8, i16* %0, i2* %1, i2* %2, i1* %3, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"* %9, i16* %4, i2* %5, i2* %6, i1* %7)
  ret void
}

declare void @mfcc_hw_stub(%"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>, 0, 0, 0>, 0>"*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
