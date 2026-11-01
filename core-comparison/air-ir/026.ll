; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/026.bc'
source_filename = "spk_log10_guarded"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define void @spk_log10_guarded(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %3, <3 x i32> noundef %4) local_unnamed_addr #0 {
  %6 = extractelement <3 x i32> %4, i64 0
  %7 = load i32, ptr addrspace(1) %2, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = zext i32 %6 to i64
  %11 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %10
  %12 = load float, ptr addrspace(1) %11, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %13 = urem i32 %6, 3
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %14
  %16 = load float, ptr addrspace(1) %15, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %17 = fmul float %12, %16
  %18 = tail call float @air.fmax.f32(float %17, float 0.000000e+00) #2
  %19 = fadd float %18, 0x3DDB7CDFE0000000
  %20 = tail call float @air.log10.f32(float %19) #2
  %21 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %10
  store float %20, ptr addrspace(1) %21, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  br label %22

22:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.log10.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fmax.f32(float, float) local_unnamed_addr #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nounwind willreturn memory(none) }

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
!15 = !{ptr @spk_log10_guarded, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"x"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"k"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"n"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!22 = !{i32 4, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C++ TBAA"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"air-alias-scope-arg(2)"}
!29 = distinct !{!29, !"air-alias-scopes(spk_log10_guarded)"}
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
