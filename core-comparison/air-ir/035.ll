; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/035.bc'
source_filename = "spk_cctf_decode"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: convergent mustprogress nounwind
define void @spk_cctf_decode(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %2, <3 x i32> noundef %3) local_unnamed_addr #0 {
  %5 = extractelement <3 x i32> %3, i64 0
  %6 = load i32, ptr addrspace(1) %1, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %9
  %11 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 1
  %12 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %9
  %13 = load float, ptr addrspace(1) %12, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %14 = load i32, ptr addrspace(1) %11, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %15 = tail call fastcc float @_Z16cctf_decode_modefj(float noundef %13, i32 noundef %14) #4
  store float %15, ptr addrspace(1) %10, align 4, !tbaa !32, !alias.scope !36, !noalias !37
  br label %16

16:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define internal fastcc float @_Z16cctf_decode_modefj(float noundef %0, i32 noundef %1) unnamed_addr #1 {
  switch i32 %1, label %41 [
    i32 0, label %3
    i32 1, label %17
    i32 2, label %23
    i32 3, label %25
  ]

3:                                                ; preds = %2
  %4 = fcmp ugt float %0, 0x3FA4B5DAA0000000
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = fdiv float %0, 0x4029D70A40000000
  br label %41

7:                                                ; preds = %3
  %8 = fadd float %0, 0x3FAC28F5C0000000
  %9 = fdiv float %8, 0x3FF0E147A0000000
  %10 = fcmp olt float %9, 0.000000e+00
  %11 = fcmp ogt float %9, 0.000000e+00
  %12 = select i1 %11, float 1.000000e+00, float 0.000000e+00
  %13 = select i1 %10, float -1.000000e+00, float %12
  %14 = tail call float @air.fabs.f32(float %9) #5
  %15 = tail call float @air.pow.f32(float %14, float 0x4003333340000000) #5
  %16 = fmul float %13, %15
  br label %41

17:                                               ; preds = %2
  %18 = fcmp olt float %0, 3.125000e-02
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = fmul float %0, 6.250000e-02
  br label %41

21:                                               ; preds = %17
  %22 = tail call float @air.pow.f32(float %0, float 0x3FFCCCCCC0000000) #5
  br label %41

23:                                               ; preds = %2
  %24 = tail call float @air.pow.f32(float %0, float 0x4001980000000000) #5
  br label %41

25:                                               ; preds = %2
  %26 = tail call float @air.pow.f32(float 0x3F926E9780000000, float 0x3FDCCCCCC0000000) #5
  %27 = tail call float @llvm.fmuladd.f32(float %26, float 0x3FF1958100000000, float 0xBFB9581000000000)
  %28 = fcmp ogt float %27, %0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = fdiv float %0, 4.500000e+00
  br label %41

31:                                               ; preds = %25
  %32 = fadd float %0, 0x3FB9581000000000
  %33 = fdiv float %32, 0x3FF1958100000000
  %34 = fcmp olt float %33, 0.000000e+00
  %35 = fcmp ogt float %33, 0.000000e+00
  %36 = select i1 %35, float 1.000000e+00, float 0.000000e+00
  %37 = select i1 %34, float -1.000000e+00, float %36
  %38 = tail call float @air.fabs.f32(float %33) #5
  %39 = tail call float @air.pow.f32(float %38, float 0x4001C71C80000000) #5
  %40 = fmul float %37, %39
  br label %41

41:                                               ; preds = %31, %29, %23, %21, %19, %7, %5, %2
  %42 = phi float [ %24, %23 ], [ %6, %5 ], [ %16, %7 ], [ %20, %19 ], [ %22, %21 ], [ %30, %29 ], [ %40, %31 ], [ %0, %2 ]
  ret float %42
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.pow.f32(float, float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fabs.f32(float) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { convergent mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { inlinehint mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!air.version = !{!10}
!air.language_version = !{!11}
!air.compile_options = !{!12, !13, !14}
!air.kernel = !{!15}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 27, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{i32 7, !"air.max_device_buffers", i32 31}
!4 = !{i32 7, !"air.max_constant_buffers", i32 31}
!5 = !{i32 7, !"air.max_threadgroup_buffers", i32 31}
!6 = !{i32 7, !"air.max_textures", i32 128}
!7 = !{i32 7, !"air.max_read_write_textures", i32 8}
!8 = !{i32 7, !"air.max_samplers", i32 16}
!9 = !{!"Apple metal version 32023.921 (metalfe-32023.921.6)"}
!10 = !{i32 2, i32 6, i32 0}
!11 = !{!"Metal", i32 3, i32 1, i32 0}
!12 = !{!"air.compile.denorms_disable"}
!13 = !{!"air.compile.fast_math_disable"}
!14 = !{!"air.compile.framebuffer_fetch_enable"}
!15 = !{ptr @spk_cctf_decode, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"x"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!21 = !{i32 3, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C++ TBAA"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"air-alias-scope-arg(1)"}
!28 = distinct !{!28, !"air-alias-scopes(spk_cctf_decode)"}
!29 = !{!30, !31}
!30 = distinct !{!30, !28, !"air-alias-scope-arg(0)"}
!31 = distinct !{!31, !28, !"air-alias-scope-arg(2)"}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !24, i64 0}
!34 = !{!30}
!35 = !{!27, !31}
!36 = !{!31}
!37 = !{!30, !27}
