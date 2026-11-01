; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/057.bc'
source_filename = "spk_di_normalise"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define void @spk_di_normalise(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %4, <3 x i32> noundef %5) local_unnamed_addr #0 {
  %7 = extractelement <3 x i32> %5, i64 0
  %8 = load i32, ptr addrspace(1) %3, align 4, !tbaa !24, !alias.scope !28, !noalias !31
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = urem i32 %7, 3
  %12 = zext i32 %7 to i64
  %13 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %12
  %14 = load float, ptr addrspace(1) %13, align 4, !tbaa !36, !alias.scope !38, !noalias !39
  %15 = zext i32 %11 to i64
  %16 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %15
  %17 = load float, ptr addrspace(1) %16, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %18 = fsub float %14, %17
  %19 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %15
  %20 = load float, ptr addrspace(1) %19, align 4, !tbaa !36, !alias.scope !42, !noalias !43
  %21 = fmul float %18, %20
  %22 = tail call float @air.clamp.f32(float %21, float 0.000000e+00, float 1.000000e+00) #2
  %23 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %12
  store float %22, ptr addrspace(1) %23, align 4, !tbaa !36, !alias.scope !44, !noalias !45
  br label %24

24:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.clamp.f32(float, float, float) local_unnamed_addr #1

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
!15 = !{ptr @spk_di_normalise, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"density"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"lo"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"inv_span"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"n"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!23 = !{i32 5, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C++ TBAA"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"air-alias-scope-arg(3)"}
!30 = distinct !{!30, !"air-alias-scopes(spk_di_normalise)"}
!31 = !{!32, !33, !34, !35}
!32 = distinct !{!32, !30, !"air-alias-scope-arg(0)"}
!33 = distinct !{!33, !30, !"air-alias-scope-arg(1)"}
!34 = distinct !{!34, !30, !"air-alias-scope-arg(2)"}
!35 = distinct !{!35, !30, !"air-alias-scope-arg(4)"}
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !26, i64 0}
!38 = !{!32}
!39 = !{!33, !34, !29, !35}
!40 = !{!33}
!41 = !{!32, !34, !29, !35}
!42 = !{!34}
!43 = !{!32, !33, !29, !35}
!44 = !{!35}
!45 = !{!32, !33, !34, !29}
