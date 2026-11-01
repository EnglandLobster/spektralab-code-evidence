; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/029.bc'
source_filename = "spk_matmul3"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define void @spk_matmul3(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %3, <3 x i32> noundef %4) local_unnamed_addr #0 {
  %6 = extractelement <3 x i32> %4, i64 0
  %7 = load i32, ptr addrspace(1) %2, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %51

9:                                                ; preds = %5
  %10 = mul i32 %6, 3
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %11
  %13 = load float, ptr addrspace(1) %12, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %14 = add i32 %10, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %15
  %17 = load float, ptr addrspace(1) %16, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %18 = add i32 %10, 2
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %19
  %21 = load float, ptr addrspace(1) %20, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %22 = load float, ptr addrspace(1) %1, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %23 = getelementptr inbounds float, ptr addrspace(1) %1, i64 3
  %24 = load float, ptr addrspace(1) %23, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %25 = fmul float %17, %24
  %26 = tail call float @llvm.fmuladd.f32(float %13, float %22, float %25)
  %27 = getelementptr inbounds float, ptr addrspace(1) %1, i64 6
  %28 = load float, ptr addrspace(1) %27, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %29 = tail call float @llvm.fmuladd.f32(float %21, float %28, float %26)
  %30 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %11
  store float %29, ptr addrspace(1) %30, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %31 = getelementptr inbounds float, ptr addrspace(1) %1, i64 1
  %32 = load float, ptr addrspace(1) %31, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %33 = getelementptr inbounds float, ptr addrspace(1) %1, i64 4
  %34 = load float, ptr addrspace(1) %33, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %35 = fmul float %17, %34
  %36 = tail call float @llvm.fmuladd.f32(float %13, float %32, float %35)
  %37 = getelementptr inbounds float, ptr addrspace(1) %1, i64 7
  %38 = load float, ptr addrspace(1) %37, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %39 = tail call float @llvm.fmuladd.f32(float %21, float %38, float %36)
  %40 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %15
  store float %39, ptr addrspace(1) %40, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %41 = getelementptr inbounds float, ptr addrspace(1) %1, i64 2
  %42 = load float, ptr addrspace(1) %41, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %43 = getelementptr inbounds float, ptr addrspace(1) %1, i64 5
  %44 = load float, ptr addrspace(1) %43, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %45 = fmul float %17, %44
  %46 = tail call float @llvm.fmuladd.f32(float %13, float %42, float %45)
  %47 = getelementptr inbounds float, ptr addrspace(1) %1, i64 8
  %48 = load float, ptr addrspace(1) %47, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %49 = tail call float @llvm.fmuladd.f32(float %21, float %48, float %46)
  %50 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %19
  store float %49, ptr addrspace(1) %50, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  br label %51

51:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!15 = !{ptr @spk_matmul3, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"x"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"m"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"n"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!22 = !{i32 4, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C++ TBAA"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"air-alias-scope-arg(2)"}
!29 = distinct !{!29, !"air-alias-scopes(spk_matmul3)"}
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
