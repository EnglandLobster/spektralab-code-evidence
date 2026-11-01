; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/024.bc'
source_filename = "spk_halo_splat"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_halo_splat(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %2, <3 x i32> noundef %3) local_unnamed_addr #0 {
  %5 = extractelement <3 x i32> %3, i64 0
  %6 = load i32, ptr addrspace(1) %1, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %7 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 1
  %8 = load i32, ptr addrspace(1) %7, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %9 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 2
  %10 = load i32, ptr addrspace(1) %9, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %11 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 3
  %12 = load i32, ptr addrspace(1) %11, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %13 = mul i32 %12, %10
  %14 = icmp ult i32 %5, %13
  br i1 %14, label %15, label %117

15:                                               ; preds = %4
  %16 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 4
  %17 = load i32, ptr addrspace(1) %16, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %18 = udiv i32 %5, %12
  %19 = urem i32 %5, %12
  %20 = tail call float @air.convert.f.f32.u.i32(i32 %17) #3
  %21 = add i32 %17, -1
  %22 = tail call float @air.convert.f.f32.u.i32(i32 %21) #3
  %23 = fmul float %22, 5.000000e-01
  %24 = mul i32 %18, %17
  %25 = tail call float @air.convert.f.f32.u.i32(i32 %24) #3
  %26 = fadd float %25, %23
  %27 = mul i32 %19, %17
  %28 = tail call float @air.convert.f.f32.u.i32(i32 %27) #3
  %29 = fadd float %23, %28
  %30 = fsub float %26, %20
  %31 = tail call float @air.floor.f32(float %30) #3
  %32 = tail call i32 @air.convert.s.i32.f.f32(float %31) #3
  %33 = fadd float %20, %26
  %34 = tail call float @air.ceil.f32(float %33) #3
  %35 = tail call i32 @air.convert.s.i32.f.f32(float %34) #3
  %36 = add i32 %35, -1
  %37 = fsub float %29, %20
  %38 = tail call float @air.floor.f32(float %37) #3
  %39 = tail call i32 @air.convert.s.i32.f.f32(float %38) #3
  %40 = fadd float %20, %29
  %41 = tail call float @air.ceil.f32(float %40) #3
  %42 = tail call i32 @air.convert.s.i32.f.f32(float %41) #3
  %43 = add i32 %42, -1
  %44 = icmp slt i32 %32, %36
  br i1 %44, label %45, label %49

45:                                               ; preds = %15
  %46 = add nsw i32 %6, -1
  %47 = icmp slt i32 %39, %43
  %48 = add nsw i32 %8, -1
  br label %67

49:                                               ; preds = %80, %15
  %50 = phi <3 x float> [ zeroinitializer, %15 ], [ %84, %80 ]
  %51 = fmul float %20, %20
  %52 = insertelement <3 x float> poison, float %51, i64 0
  %53 = shufflevector <3 x float> %52, <3 x float> poison, <3 x i32> zeroinitializer
  %54 = fdiv <3 x float> %50, %53
  %55 = extractelement <3 x float> %54, i64 0
  %56 = mul i32 %5, 3
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %57
  store float %55, ptr addrspace(1) %58, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %59 = extractelement <3 x float> %54, i64 1
  %60 = add i32 %56, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %61
  store float %59, ptr addrspace(1) %62, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %63 = extractelement <3 x float> %54, i64 2
  %64 = add i32 %56, 2
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %65
  store float %63, ptr addrspace(1) %66, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  br label %117

67:                                               ; preds = %80, %45
  %68 = phi i32 [ %32, %45 ], [ %70, %80 ]
  %69 = phi <3 x float> [ zeroinitializer, %45 ], [ %84, %80 ]
  %70 = add nsw i32 %68, 1
  %71 = tail call float @air.convert.f.f32.s.i32(i32 %70) #3
  %72 = fsub float %71, %26
  %73 = tail call float @air.fabs.f32(float %72) #3
  %74 = fdiv float %73, %20
  %75 = fsub float 1.000000e+00, %74
  %76 = tail call float @air.fmax.f32(float 0.000000e+00, float %75) #3
  br i1 %47, label %77, label %80

77:                                               ; preds = %67
  %78 = tail call i32 @air.clamp.s.i32(i32 %70, i32 0, i32 %46) #3
  %79 = mul i32 %78, %8
  br label %86

80:                                               ; preds = %86, %67
  %81 = phi <3 x float> [ zeroinitializer, %67 ], [ %115, %86 ]
  %82 = insertelement <3 x float> poison, float %76, i64 0
  %83 = shufflevector <3 x float> %82, <3 x float> poison, <3 x i32> zeroinitializer
  %84 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %83, <3 x float> %81, <3 x float> %69)
  %85 = icmp eq i32 %70, %36
  br i1 %85, label %49, label %67, !llvm.loop !36

86:                                               ; preds = %86, %77
  %87 = phi i32 [ %39, %77 ], [ %89, %86 ]
  %88 = phi <3 x float> [ zeroinitializer, %77 ], [ %115, %86 ]
  %89 = add nsw i32 %87, 1
  %90 = tail call float @air.convert.f.f32.s.i32(i32 %89) #3
  %91 = fsub float %90, %29
  %92 = tail call float @air.fabs.f32(float %91) #3
  %93 = fdiv float %92, %20
  %94 = fsub float 1.000000e+00, %93
  %95 = tail call float @air.fmax.f32(float 0.000000e+00, float %94) #3
  %96 = tail call i32 @air.clamp.s.i32(i32 %89, i32 0, i32 %48) #3
  %97 = add i32 %96, %79
  %98 = insertelement <3 x float> poison, float %95, i64 0
  %99 = shufflevector <3 x float> %98, <3 x float> poison, <3 x i32> zeroinitializer
  %100 = mul i32 %97, 3
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %101
  %103 = load float, ptr addrspace(1) %102, align 4, !tbaa !32, !alias.scope !38, !noalias !39
  %104 = insertelement <3 x float> undef, float %103, i64 0
  %105 = add i32 %100, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %106
  %108 = load float, ptr addrspace(1) %107, align 4, !tbaa !32, !alias.scope !38, !noalias !39
  %109 = insertelement <3 x float> %104, float %108, i64 1
  %110 = add i32 %100, 2
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %111
  %113 = load float, ptr addrspace(1) %112, align 4, !tbaa !32, !alias.scope !38, !noalias !39
  %114 = insertelement <3 x float> %109, float %113, i64 2
  %115 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %99, <3 x float> %114, <3 x float> %88)
  %116 = icmp eq i32 %89, %43
  br i1 %116, label %80, label %86, !llvm.loop !40

117:                                              ; preds = %49, %4
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.clamp.s.i32(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fmax.f32(float, float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fabs.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.s.i32(i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.convert.s.i32.f.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.ceil.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.floor.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.u.i32(i32) local_unnamed_addr #2

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
!15 = !{ptr @spk_halo_splat, !16, !17}
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
!28 = distinct !{!28, !"air-alias-scopes(spk_halo_splat)"}
!29 = !{!30, !31}
!30 = distinct !{!30, !28, !"air-alias-scope-arg(0)"}
!31 = distinct !{!31, !28, !"air-alias-scope-arg(2)"}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !24, i64 0}
!34 = !{!31}
!35 = !{!30, !27}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!30}
!39 = !{!27, !31}
!40 = distinct !{!40, !37}
