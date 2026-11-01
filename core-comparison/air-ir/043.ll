; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/043.bc'
source_filename = "spk_overscan_add_mask"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define void @spk_overscan_add_mask(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef captures(none) "air-buffer-no-alias" %3, <3 x i32> noundef %4) local_unnamed_addr #0 {
  %6 = extractelement <3 x i32> %4, i64 0
  %7 = load i32, ptr addrspace(1) %2, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %65

9:                                                ; preds = %5
  %10 = getelementptr inbounds float, ptr addrspace(1) %1, i64 2
  %11 = load float, ptr addrspace(1) %10, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %12 = tail call i32 @air.convert.u.i32.f.f32(float %11) #3
  %13 = load float, ptr addrspace(1) %1, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %14 = tail call i32 @air.convert.s.i32.f.f32(float %13) #3
  %15 = urem i32 %6, %12
  %16 = add nsw i32 %15, %14
  %17 = getelementptr inbounds float, ptr addrspace(1) %1, i64 1
  %18 = load float, ptr addrspace(1) %17, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %19 = tail call i32 @air.convert.s.i32.f.f32(float %18) #3
  %20 = udiv i32 %6, %12
  %21 = add nsw i32 %20, %19
  %22 = icmp slt i32 %16, 0
  %23 = icmp slt i32 %21, 0
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %65, label %25

25:                                               ; preds = %9
  %26 = getelementptr inbounds float, ptr addrspace(1) %1, i64 4
  %27 = load float, ptr addrspace(1) %26, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %28 = tail call i32 @air.convert.s.i32.f.f32(float %27) #3
  %29 = icmp slt i32 %16, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %25
  %31 = getelementptr inbounds float, ptr addrspace(1) %1, i64 5
  %32 = load float, ptr addrspace(1) %31, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %33 = tail call i32 @air.convert.s.i32.f.f32(float %32) #3
  %34 = icmp slt i32 %21, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = zext i32 %6 to i64
  %37 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %36
  %38 = load float, ptr addrspace(1) %37, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %39 = fcmp ugt float %38, 0.000000e+00
  br i1 %39, label %40, label %65

40:                                               ; preds = %35
  %41 = tail call i32 @air.convert.u.i32.f.f32(float %27) #3
  %42 = mul i32 %41, %21
  %43 = add i32 %42, %16
  %44 = mul i32 %43, 3
  %45 = getelementptr inbounds float, ptr addrspace(1) %1, i64 6
  %46 = load float, ptr addrspace(1) %45, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %47 = zext i32 %44 to i64
  %48 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %47
  %49 = load float, ptr addrspace(1) %48, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %50 = tail call float @llvm.fmuladd.f32(float %38, float %46, float %49)
  store float %50, ptr addrspace(1) %48, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %51 = getelementptr inbounds float, ptr addrspace(1) %1, i64 7
  %52 = load float, ptr addrspace(1) %51, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %53 = add i32 %44, 1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %54
  %56 = load float, ptr addrspace(1) %55, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %57 = tail call float @llvm.fmuladd.f32(float %38, float %52, float %56)
  store float %57, ptr addrspace(1) %55, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %58 = getelementptr inbounds float, ptr addrspace(1) %1, i64 8
  %59 = load float, ptr addrspace(1) %58, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %60 = add i32 %44, 2
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %61
  %63 = load float, ptr addrspace(1) %62, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %64 = tail call float @llvm.fmuladd.f32(float %38, float %59, float %63)
  store float %64, ptr addrspace(1) %62, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  br label %65

65:                                               ; preds = %40, %35, %30, %25, %9, %5
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.convert.u.i32.f.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.convert.s.i32.f.f32(float) local_unnamed_addr #2

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
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
!15 = !{ptr @spk_overscan_add_mask, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"mask"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"M"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"n"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"canvas"}
!22 = !{i32 4, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"tid"}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C++ TBAA"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"air-alias-scope-arg(2)"}
!29 = distinct !{!29, !"air-alias-scopes(spk_overscan_add_mask)"}
!30 = !{!31, !32, !33}
!31 = distinct !{!31, !29, !"air-alias-scope-arg(0)"}
!32 = distinct !{!32, !29, !"air-alias-scope-arg(1)"}
!33 = distinct !{!33, !29, !"air-alias-scope-arg(3)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !25, i64 0}
!36 = !{!32}
!37 = !{!31, !28, !33}
!38 = !{!31}
!39 = !{!32, !28, !33}
!40 = !{!33}
!41 = !{!31, !32, !28}
