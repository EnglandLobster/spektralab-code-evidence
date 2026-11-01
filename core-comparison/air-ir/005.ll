; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/005.bc'
source_filename = "spk_lincomb3"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define void @spk_lincomb3(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %4, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %5, <3 x i32> noundef %6) local_unnamed_addr #0 {
  %8 = extractelement <3 x i32> %6, i64 0
  %9 = load i32, ptr addrspace(1) %4, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = urem i32 %8, 3
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %13
  %15 = load float, ptr addrspace(1) %14, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %16 = zext i32 %8 to i64
  %17 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %16
  %18 = load float, ptr addrspace(1) %17, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %19 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %13
  %20 = load float, ptr addrspace(1) %19, align 4, !tbaa !38, !alias.scope !44, !noalias !45
  %21 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %16
  %22 = load float, ptr addrspace(1) %21, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %23 = fmul float %20, %22
  %24 = tail call float @llvm.fmuladd.f32(float %15, float %18, float %23)
  %25 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %16
  store float %24, ptr addrspace(1) %25, align 4, !tbaa !38, !alias.scope !48, !noalias !49
  br label %26

26:                                               ; preds = %11, %7
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
!15 = !{ptr @spk_lincomb3, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"x"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"y"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"a"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"b"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"n"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!24 = !{i32 6, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C++ TBAA"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"air-alias-scope-arg(4)"}
!31 = distinct !{!31, !"air-alias-scopes(spk_lincomb3)"}
!32 = !{!33, !34, !35, !36, !37}
!33 = distinct !{!33, !31, !"air-alias-scope-arg(0)"}
!34 = distinct !{!34, !31, !"air-alias-scope-arg(1)"}
!35 = distinct !{!35, !31, !"air-alias-scope-arg(2)"}
!36 = distinct !{!36, !31, !"air-alias-scope-arg(3)"}
!37 = distinct !{!37, !31, !"air-alias-scope-arg(5)"}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !27, i64 0}
!40 = !{!35}
!41 = !{!33, !34, !36, !30, !37}
!42 = !{!33}
!43 = !{!34, !35, !36, !30, !37}
!44 = !{!36}
!45 = !{!33, !34, !35, !30, !37}
!46 = !{!34}
!47 = !{!33, !35, !36, !30, !37}
!48 = !{!37}
!49 = !{!33, !34, !35, !36, !30}
