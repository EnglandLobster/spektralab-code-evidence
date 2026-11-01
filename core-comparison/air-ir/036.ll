; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/036.bc'
source_filename = "spk_cctf_encode_matrix"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: convergent mustprogress nounwind
define void @spk_cctf_encode_matrix(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %3, <3 x i32> noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = extractelement <3 x i32> %4, i64 0
  %8 = load i32, ptr addrspace(1) %2, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %67

10:                                               ; preds = %5
  %11 = getelementptr inbounds i32, ptr addrspace(1) %2, i64 1
  %12 = load i32, ptr addrspace(1) %11, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %13 = mul i32 %7, 3
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %14
  %16 = load float, ptr addrspace(1) %15, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %17 = add i32 %13, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %18
  %20 = load float, ptr addrspace(1) %19, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %21 = add i32 %13, 2
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %22
  %24 = load float, ptr addrspace(1) %23, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %25 = bitcast ptr %6 to ptr
  call void @llvm.lifetime.start.p0(ptr %6)
  %26 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 0
  %27 = load float, ptr addrspace(1) %1, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %28 = getelementptr inbounds float, ptr addrspace(1) %1, i64 3
  %29 = load float, ptr addrspace(1) %28, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %30 = fmul float %20, %29
  %31 = tail call float @llvm.fmuladd.f32(float %16, float %27, float %30)
  %32 = getelementptr inbounds float, ptr addrspace(1) %1, i64 6
  %33 = load float, ptr addrspace(1) %32, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %34 = tail call float @llvm.fmuladd.f32(float %24, float %33, float %31)
  store float %34, ptr %26, align 4, !tbaa !34
  %35 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %36 = getelementptr inbounds float, ptr addrspace(1) %1, i64 1
  %37 = load float, ptr addrspace(1) %36, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %38 = getelementptr inbounds float, ptr addrspace(1) %1, i64 4
  %39 = load float, ptr addrspace(1) %38, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %40 = fmul float %20, %39
  %41 = tail call float @llvm.fmuladd.f32(float %16, float %37, float %40)
  %42 = getelementptr inbounds float, ptr addrspace(1) %1, i64 7
  %43 = load float, ptr addrspace(1) %42, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %44 = tail call float @llvm.fmuladd.f32(float %24, float %43, float %41)
  store float %44, ptr %35, align 4, !tbaa !34
  %45 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %46 = getelementptr inbounds float, ptr addrspace(1) %1, i64 2
  %47 = load float, ptr addrspace(1) %46, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %48 = getelementptr inbounds float, ptr addrspace(1) %1, i64 5
  %49 = load float, ptr addrspace(1) %48, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %50 = fmul float %20, %49
  %51 = tail call float @llvm.fmuladd.f32(float %16, float %47, float %50)
  %52 = getelementptr inbounds float, ptr addrspace(1) %1, i64 8
  %53 = load float, ptr addrspace(1) %52, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %54 = tail call float @llvm.fmuladd.f32(float %24, float %53, float %51)
  store float %54, ptr %45, align 4, !tbaa !34
  br label %56

55:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(ptr %6)
  br label %67

56:                                               ; preds = %56, %10
  %57 = phi i32 [ 0, %10 ], [ %65, %56 ]
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %58
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = tail call fastcc float @_Z16cctf_encode_modefj(float noundef %60, i32 noundef %12) #5
  %62 = add i32 %57, %13
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %63
  store float %61, ptr addrspace(1) %64, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %65 = add nuw nsw i32 %57, 1
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %55, label %56, !llvm.loop !42

67:                                               ; preds = %55, %5
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define internal fastcc float @_Z16cctf_encode_modefj(float noundef %0, i32 noundef %1) unnamed_addr #1 {
  switch i32 %1, label %37 [
    i32 0, label %3
    i32 1, label %16
    i32 2, label %22
    i32 3, label %24
  ]

3:                                                ; preds = %2
  %4 = fcmp ugt float %0, 0x3F69A5C380000000
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = fmul float %0, 0x4029D70A40000000
  br label %37

7:                                                ; preds = %3
  %8 = fcmp olt float %0, 0.000000e+00
  %9 = fcmp ogt float %0, 0.000000e+00
  %10 = select i1 %9, float 1.000000e+00, float 0.000000e+00
  %11 = select i1 %8, float -1.000000e+00, float %10
  %12 = tail call float @air.fabs.f32(float %0) #6
  %13 = tail call float @air.pow.f32(float %12, float 0x3FDAAAAAA0000000) #6
  %14 = fmul float %11, %13
  %15 = tail call float @llvm.fmuladd.f32(float %14, float 0x3FF0E147A0000000, float 0xBFAC28F5C0000000)
  br label %37

16:                                               ; preds = %2
  %17 = fcmp olt float %0, 0x3F60000000000000
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = fmul float %0, 1.600000e+01
  br label %37

20:                                               ; preds = %16
  %21 = tail call float @air.pow.f32(float %0, float 0x3FE1C71C80000000) #6
  br label %37

22:                                               ; preds = %2
  %23 = tail call float @air.pow.f32(float %0, float 0x3FDD19EB20000000) #6
  br label %37

24:                                               ; preds = %2
  %25 = fcmp olt float %0, 0x3F926E9780000000
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = fmul float %0, 4.500000e+00
  br label %37

28:                                               ; preds = %24
  %29 = fcmp olt float %0, 0.000000e+00
  %30 = fcmp ogt float %0, 0.000000e+00
  %31 = select i1 %30, float 1.000000e+00, float 0.000000e+00
  %32 = select i1 %29, float -1.000000e+00, float %31
  %33 = tail call float @air.fabs.f32(float %0) #6
  %34 = tail call float @air.pow.f32(float %33, float 0x3FDCCCCCC0000000) #6
  %35 = fmul float %32, %34
  %36 = tail call float @llvm.fmuladd.f32(float %35, float 0x3FF1958100000000, float 0xBFB9581000000000)
  br label %37

37:                                               ; preds = %28, %26, %22, %20, %18, %7, %5, %2
  %38 = phi float [ %23, %22 ], [ %6, %5 ], [ %15, %7 ], [ %19, %18 ], [ %21, %20 ], [ %27, %26 ], [ %36, %28 ], [ %0, %2 ]
  ret float %38
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.pow.f32(float, float) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fabs.f32(float) local_unnamed_addr #3

declare void @llvm.lifetime.end.i64(i64)

declare void @llvm.lifetime.start.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

attributes #0 = { convergent mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { inlinehint mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind willreturn memory(none) }

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
!15 = !{ptr @spk_cctf_encode_matrix, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"x"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"m"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!22 = !{i32 4, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C++ TBAA"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"air-alias-scope-arg(2)"}
!29 = distinct !{!29, !"air-alias-scopes(spk_cctf_encode_matrix)"}
!30 = !{!31, !32, !33}
!31 = distinct !{!31, !29, !"air-alias-scope-arg(0)"}
!32 = distinct !{!32, !29, !"air-alias-scope-arg(1)"}
!33 = distinct !{!33, !29, !"air-alias-scope-arg(3)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !25, i64 0}
!36 = !{!31}
!37 = !{!32, !28, !33}
!38 = !{!32}
!39 = !{!31, !28, !33}
!40 = !{!33}
!41 = !{!31, !32, !28}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
