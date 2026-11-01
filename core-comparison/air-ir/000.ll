; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/000.bc'
source_filename = "spk_rows_copy"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define void @spk_rows_copy(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %2, <3 x i32> noundef %3) local_unnamed_addr #0 {
  %5 = extractelement <3 x i32> %3, i64 0
  %6 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 2
  %7 = load i32, ptr addrspace(1) %6, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %4
  %10 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 1
  %11 = load i32, ptr addrspace(1) %10, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %12 = load i32, ptr addrspace(1) %1, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %13 = mul i32 %12, %11
  %14 = add i32 %13, %5
  %15 = mul i32 %14, 3
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %16
  %18 = load float, ptr addrspace(1) %17, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %19 = mul i32 %5, 3
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %20
  store float %18, ptr addrspace(1) %21, align 4, !tbaa !32, !alias.scope !36, !noalias !37
  %22 = add i32 %15, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %23
  %25 = load float, ptr addrspace(1) %24, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %26 = add i32 %19, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %27
  store float %25, ptr addrspace(1) %28, align 4, !tbaa !32, !alias.scope !36, !noalias !37
  %29 = add i32 %15, 2
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %30
  %32 = load float, ptr addrspace(1) %31, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %33 = add i32 %19, 2
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %34
  store float %32, ptr addrspace(1) %35, align 4, !tbaa !32, !alias.scope !36, !noalias !37
  br label %36

36:                                               ; preds = %9, %4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }

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
!15 = !{ptr @spk_rows_copy, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"src"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!21 = !{i32 3, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C++ TBAA"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"air-alias-scope-arg(1)"}
!28 = distinct !{!28, !"air-alias-scopes(spk_rows_copy)"}
!29 = !{!30, !31}
!30 = distinct !{!30, !28, !"air-alias-scope-arg(0)"}
!31 = distinct !{!31, !28, !"air-alias-scope-arg(2)"}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !24, i64 0}
!34 = !{!30}
!35 = !{!27, !31}
!36 = !{!31}
!37 = !{!30, !27}
