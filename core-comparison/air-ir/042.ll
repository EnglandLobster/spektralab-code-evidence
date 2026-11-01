; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/042.bc'
source_filename = "spk_mask_soften"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_mask_soften(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %3, <3 x i32> noundef %4) local_unnamed_addr #0 {
  %6 = extractelement <3 x i32> %4, i64 0
  %7 = load i32, ptr addrspace(1) %2, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %8 = getelementptr inbounds i32, ptr addrspace(1) %2, i64 1
  %9 = load i32, ptr addrspace(1) %8, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %10 = getelementptr inbounds i32, ptr addrspace(1) %2, i64 3
  %11 = load i32, ptr addrspace(1) %10, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %12 = getelementptr inbounds i32, ptr addrspace(1) %2, i64 2
  %13 = load i32, ptr addrspace(1) %12, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %14 = mul i32 %9, %7
  %15 = icmp ult i32 %6, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %5
  %17 = urem i32 %6, %9
  %18 = udiv i32 %6, %9
  %19 = icmp slt i32 %13, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = sub nsw i32 0, %13
  %22 = icmp eq i32 %11, 1
  %23 = add nsw i32 %7, -1
  %24 = mul i32 %18, %9
  %25 = add nsw i32 %9, -1
  br label %30

26:                                               ; preds = %42, %16
  %27 = phi float [ 0.000000e+00, %16 ], [ %51, %42 ]
  %28 = zext i32 %6 to i64
  %29 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %28
  store float %27, ptr addrspace(1) %29, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  br label %54

30:                                               ; preds = %42, %20
  %31 = phi i32 [ %21, %20 ], [ %52, %42 ]
  %32 = phi float [ 0.000000e+00, %20 ], [ %51, %42 ]
  br i1 %22, label %33, label %37

33:                                               ; preds = %30
  %34 = add nsw i32 %31, %17
  %35 = tail call i32 @air.clamp.s.i32(i32 %34, i32 0, i32 %25) #3
  %36 = add i32 %35, %24
  br label %42

37:                                               ; preds = %30
  %38 = add nsw i32 %31, %18
  %39 = tail call i32 @air.clamp.s.i32(i32 %38, i32 0, i32 %23) #3
  %40 = mul i32 %39, %9
  %41 = add i32 %40, %17
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i32 [ %36, %33 ], [ %41, %37 ]
  %44 = add nsw i32 %31, %13
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %45
  %47 = load float, ptr addrspace(1) %46, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %48 = zext i32 %43 to i64
  %49 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %48
  %50 = load float, ptr addrspace(1) %49, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %51 = tail call float @llvm.fmuladd.f32(float %47, float %50, float %32)
  %52 = add i32 %31, 1
  %53 = icmp eq i32 %31, %13
  br i1 %53, label %26, label %30, !llvm.loop !42

54:                                               ; preds = %26, %5
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.clamp.s.i32(i32, i32, i32) local_unnamed_addr #2

attributes #0 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nounwind willreturn memory(none) }

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
!15 = !{ptr @spk_mask_soften, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"src"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"k"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!22 = !{i32 4, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"tid"}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C++ TBAA"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"air-alias-scope-arg(2)"}
!29 = distinct !{!29, !"air-alias-scopes(spk_mask_soften)"}
!30 = !{!31, !32, !33}
!31 = distinct !{!31, !29, !"air-alias-scope-arg(0)"}
!32 = distinct !{!32, !29, !"air-alias-scope-arg(1)"}
!33 = distinct !{!33, !29, !"air-alias-scope-arg(3)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !25, i64 0}
!36 = !{!33}
!37 = !{!31, !32, !28}
!38 = !{!32}
!39 = !{!31, !28, !33}
!40 = !{!31}
!41 = !{!32, !28, !33}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
