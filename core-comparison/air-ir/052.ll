; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/052.bc'
source_filename = "spk_zoom_bilinear_mirror"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_zoom_bilinear_mirror(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %2, <3 x i32> noundef %3) local_unnamed_addr #0 {
  %5 = extractelement <3 x i32> %3, i64 0
  %6 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 2
  %7 = load i32, ptr addrspace(1) %6, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %8 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 3
  %9 = load i32, ptr addrspace(1) %8, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %10 = mul i32 %9, %7
  %11 = icmp ult i32 %5, %10
  br i1 %11, label %12, label %108

12:                                               ; preds = %4
  %13 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 1
  %14 = load i32, ptr addrspace(1) %13, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %15 = load i32, ptr addrspace(1) %1, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %16 = udiv i32 %5, %9
  %17 = urem i32 %5, %9
  %18 = shl i32 %16, 1
  %19 = or i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = zext i32 %15 to i64
  %22 = mul nuw nsw i64 %20, %21
  %23 = zext i32 %7 to i64
  %24 = sub nsw i64 %22, %23
  %25 = shl nuw nsw i64 %23, 1
  %26 = add i32 %15, -1
  %27 = zext i32 %26 to i64
  %28 = mul nsw i64 %25, %27
  %29 = icmp sgt i64 %24, %28
  %30 = shl nuw nsw i64 %28, 1
  %31 = sub nsw i64 %30, %24
  %32 = select i1 %29, i64 %31, i64 %24
  %33 = tail call i64 @llvm.abs.i64(i64 %32, i1 true) #4
  %34 = udiv i64 %33, %25
  %35 = mul nsw i64 %34, %25
  %36 = sub nsw i64 %33, %35
  %37 = tail call float @air.convert.f.f32.s.i64(i64 %36) #5
  %38 = tail call float @air.convert.f.f32.s.i64(i64 %25) #5
  %39 = fdiv float %37, %38
  %40 = trunc i64 %34 to i32
  %41 = add nsw i32 %40, 1
  %42 = tail call i32 @air.min.s.i32(i32 %41, i32 %26) #5
  %43 = shl i32 %17, 1
  %44 = or i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = zext i32 %14 to i64
  %47 = mul nuw nsw i64 %45, %46
  %48 = zext i32 %9 to i64
  %49 = sub nsw i64 %47, %48
  %50 = shl nuw nsw i64 %48, 1
  %51 = add i32 %14, -1
  %52 = zext i32 %51 to i64
  %53 = mul nsw i64 %50, %52
  %54 = icmp sgt i64 %49, %53
  %55 = shl nuw nsw i64 %53, 1
  %56 = sub nsw i64 %55, %49
  %57 = select i1 %54, i64 %56, i64 %49
  %58 = tail call i64 @llvm.abs.i64(i64 %57, i1 true) #4
  %59 = udiv i64 %58, %50
  %60 = mul nsw i64 %59, %50
  %61 = sub nsw i64 %58, %60
  %62 = tail call float @air.convert.f.f32.s.i64(i64 %61) #5
  %63 = tail call float @air.convert.f.f32.s.i64(i64 %50) #5
  %64 = fdiv float %62, %63
  %65 = trunc i64 %59 to i32
  %66 = add nsw i32 %65, 1
  %67 = tail call i32 @air.min.s.i32(i32 %66, i32 %51) #5
  %68 = mul i32 %14, %40
  %69 = add i32 %68, %65
  %70 = mul i32 %69, 3
  %71 = add i32 %67, %68
  %72 = mul i32 %71, 3
  %73 = mul i32 %42, %14
  %74 = add i32 %73, %65
  %75 = mul i32 %74, 3
  %76 = add i32 %67, %73
  %77 = mul i32 %76, 3
  %78 = mul i32 %5, 3
  br label %79

79:                                               ; preds = %79, %12
  %80 = phi i32 [ 0, %12 ], [ %106, %79 ]
  %81 = add i32 %80, %70
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %82
  %84 = load float, ptr addrspace(1) %83, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %85 = add i32 %80, %72
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %86
  %88 = load float, ptr addrspace(1) %87, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %89 = add i32 %80, %75
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %90
  %92 = load float, ptr addrspace(1) %91, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %93 = add i32 %80, %77
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %94
  %96 = load float, ptr addrspace(1) %95, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %97 = fsub float %88, %84
  %98 = tail call float @llvm.fmuladd.f32(float %64, float %97, float %84)
  %99 = fsub float %96, %92
  %100 = tail call float @llvm.fmuladd.f32(float %64, float %99, float %92)
  %101 = fsub float %100, %98
  %102 = tail call float @llvm.fmuladd.f32(float %39, float %101, float %98)
  %103 = add i32 %80, %78
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %104
  store float %102, ptr addrspace(1) %105, align 4, !tbaa !32, !alias.scope !36, !noalias !37
  %106 = add nuw nsw i32 %80, 1
  %107 = icmp eq i32 %106, 3
  br i1 %107, label %108, label %79, !llvm.loop !38

108:                                              ; preds = %79, %4
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.min.s.i32(i32, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.s.i64(i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

attributes #0 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
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
!15 = !{ptr @spk_zoom_bilinear_mirror, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"img"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!21 = !{i32 3, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C++ TBAA"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"air-alias-scope-arg(1)"}
!28 = distinct !{!28, !"air-alias-scopes(spk_zoom_bilinear_mirror)"}
!29 = !{!30, !31}
!30 = distinct !{!30, !28, !"air-alias-scope-arg(0)"}
!31 = distinct !{!31, !28, !"air-alias-scope-arg(2)"}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !24, i64 0}
!34 = !{!30}
!35 = !{!27, !31}
!36 = !{!31}
!37 = !{!30, !27}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
