; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/002.bc'
source_filename = "spk_zoom_rows"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_zoom_rows(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %2, <3 x i32> noundef %3) local_unnamed_addr #0 {
  %5 = extractelement <3 x i32> %3, i64 0
  %6 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 3
  %7 = load i32, ptr addrspace(1) %6, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %8 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 6
  %9 = load i32, ptr addrspace(1) %8, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %10 = mul i32 %9, %7
  %11 = icmp ult i32 %5, %10
  br i1 %11, label %12, label %119

12:                                               ; preds = %4
  %13 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 1
  %14 = load i32, ptr addrspace(1) %13, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %15 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 5
  %16 = load i32, ptr addrspace(1) %15, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %17 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 4
  %18 = load i32, ptr addrspace(1) %17, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %19 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 2
  %20 = load i32, ptr addrspace(1) %19, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %21 = load i32, ptr addrspace(1) %1, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %22 = udiv i32 %5, %7
  %23 = add i32 %22, %18
  %24 = urem i32 %5, %7
  %25 = shl i32 %23, 1
  %26 = or i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = zext i32 %21 to i64
  %29 = mul nuw nsw i64 %27, %28
  %30 = zext i32 %20 to i64
  %31 = sub nsw i64 %29, %30
  %32 = shl nuw nsw i64 %30, 1
  %33 = add i32 %21, -1
  %34 = zext i32 %33 to i64
  %35 = mul nsw i64 %32, %34
  %36 = icmp sgt i64 %31, %35
  %37 = shl nuw nsw i64 %35, 1
  %38 = sub nsw i64 %37, %31
  %39 = select i1 %36, i64 %38, i64 %31
  %40 = tail call i64 @llvm.abs.i64(i64 %39, i1 true) #4
  %41 = udiv i64 %40, %32
  %42 = mul nsw i64 %41, %32
  %43 = sub nsw i64 %40, %42
  %44 = tail call float @air.convert.f.f32.s.i64(i64 %43) #5
  %45 = tail call float @air.convert.f.f32.s.i64(i64 %32) #5
  %46 = fdiv float %44, %45
  %47 = trunc i64 %41 to i32
  %48 = add nsw i32 %47, 1
  %49 = tail call i32 @air.min.s.i32(i32 %48, i32 %33) #5
  %50 = shl i32 %24, 1
  %51 = or i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = zext i32 %14 to i64
  %54 = mul nuw nsw i64 %52, %53
  %55 = zext i32 %7 to i64
  %56 = sub nsw i64 %54, %55
  %57 = shl nuw nsw i64 %55, 1
  %58 = add i32 %14, -1
  %59 = zext i32 %58 to i64
  %60 = mul nsw i64 %57, %59
  %61 = icmp sgt i64 %56, %60
  %62 = shl nuw nsw i64 %60, 1
  %63 = sub nsw i64 %62, %56
  %64 = select i1 %61, i64 %63, i64 %56
  %65 = tail call i64 @llvm.abs.i64(i64 %64, i1 true) #4
  %66 = udiv i64 %65, %57
  %67 = mul nsw i64 %66, %57
  %68 = sub nsw i64 %65, %67
  %69 = tail call float @air.convert.f.f32.s.i64(i64 %68) #5
  %70 = tail call float @air.convert.f.f32.s.i64(i64 %57) #5
  %71 = fdiv float %69, %70
  %72 = trunc i64 %66 to i32
  %73 = add nsw i32 %72, 1
  %74 = tail call i32 @air.min.s.i32(i32 %73, i32 %58) #5
  %75 = sub nsw i32 %47, %16
  %76 = sub nsw i32 %49, %16
  %77 = mul i32 %23, %7
  %78 = add i32 %77, %24
  %79 = mul i32 %75, %14
  %80 = add i32 %79, %72
  %81 = mul i32 %80, 3
  %82 = add i32 %74, %79
  %83 = mul i32 %82, 3
  %84 = mul i32 %76, %14
  %85 = add i32 %84, %72
  %86 = mul i32 %85, 3
  %87 = add i32 %74, %84
  %88 = mul i32 %87, 3
  %89 = mul i32 %78, 3
  br label %90

90:                                               ; preds = %90, %12
  %91 = phi i32 [ 0, %12 ], [ %117, %90 ]
  %92 = add i32 %91, %81
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %93
  %95 = load float, ptr addrspace(1) %94, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %96 = add i32 %91, %83
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %97
  %99 = load float, ptr addrspace(1) %98, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %100 = add i32 %91, %86
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %101
  %103 = load float, ptr addrspace(1) %102, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %104 = add i32 %91, %88
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %105
  %107 = load float, ptr addrspace(1) %106, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %108 = fsub float %99, %95
  %109 = tail call float @llvm.fmuladd.f32(float %71, float %108, float %95)
  %110 = fsub float %107, %103
  %111 = tail call float @llvm.fmuladd.f32(float %71, float %110, float %103)
  %112 = fsub float %111, %109
  %113 = tail call float @llvm.fmuladd.f32(float %46, float %112, float %109)
  %114 = add i32 %91, %89
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %115
  store float %113, ptr addrspace(1) %116, align 4, !tbaa !32, !alias.scope !36, !noalias !37
  %117 = add nuw nsw i32 %91, 1
  %118 = icmp eq i32 %117, 3
  br i1 %118, label %119, label %90, !llvm.loop !38

119:                                              ; preds = %90, %4
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
!15 = !{ptr @spk_zoom_rows, !16, !17}
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
!28 = distinct !{!28, !"air-alias-scopes(spk_zoom_rows)"}
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
