; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/053.bc'
source_filename = "spk_to_rgba16"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_to_rgba16(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %2, <3 x i32> noundef %3) local_unnamed_addr #0 {
  %5 = extractelement <3 x i32> %3, i64 0
  %6 = load i32, ptr addrspace(1) %1, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %38

8:                                                ; preds = %4
  %9 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 2
  %10 = load i32, ptr addrspace(1) %9, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %11 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 1
  %12 = load i32, ptr addrspace(1) %11, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %13 = udiv i32 %5, %12
  %14 = urem i32 %5, %12
  %15 = mul i32 %13, %10
  %16 = add i32 %15, %14
  %17 = mul i32 %5, 3
  %18 = shl i32 %16, 2
  br label %24

19:                                               ; preds = %24
  %20 = shl i32 %16, 2
  %21 = or i32 %20, 3
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i16, ptr addrspace(1) %2, i64 %22
  store i16 -1, ptr addrspace(1) %23, align 2, !tbaa !32, !alias.scope !34, !noalias !35
  br label %38

24:                                               ; preds = %24, %8
  %25 = phi i32 [ 0, %8 ], [ %36, %24 ]
  %26 = add i32 %25, %17
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %27
  %29 = load float, ptr addrspace(1) %28, align 4, !tbaa !36, !alias.scope !38, !noalias !39
  %30 = tail call float @air.clamp.f32(float %29, float 0.000000e+00, float 1.000000e+00) #3
  %31 = tail call float @llvm.fmuladd.f32(float %30, float 6.553500e+04, float 5.000000e-01)
  %32 = tail call i16 @air.convert.u.i16.f.f32(float %31) #3
  %33 = add nuw nsw i32 %25, %18
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i16, ptr addrspace(1) %2, i64 %34
  store i16 %32, ptr addrspace(1) %35, align 2, !tbaa !32, !alias.scope !34, !noalias !35
  %36 = add nuw nsw i32 %25, 1
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %19, label %24, !llvm.loop !40

38:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i16 @air.convert.u.i16.f.f32(float) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.clamp.f32(float, float, float) local_unnamed_addr #1

attributes #0 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!15 = !{ptr @spk_to_rgba16, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"rgb"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 2, !"air.arg_type_align_size", i32 2, !"air.arg_type_name", !"ushort", !"air.arg_name", !"out"}
!21 = !{i32 3, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C++ TBAA"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"air-alias-scope-arg(1)"}
!28 = distinct !{!28, !"air-alias-scopes(spk_to_rgba16)"}
!29 = !{!30, !31}
!30 = distinct !{!30, !28, !"air-alias-scope-arg(0)"}
!31 = distinct !{!31, !28, !"air-alias-scope-arg(2)"}
!32 = !{!33, !33, i64 0}
!33 = !{!"short", !24, i64 0}
!34 = !{!31}
!35 = !{!30, !27}
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !24, i64 0}
!38 = !{!30}
!39 = !{!27, !31}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
