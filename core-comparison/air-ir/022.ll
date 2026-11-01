; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/022.bc'
source_filename = "spk_lognormal_field"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

%struct.Rng = type <{ <4 x i32>, <2 x i32>, [8 x i8], <4 x i32>, i32, [12 x i8] }>

; Function Attrs: convergent nounwind
define void @spk_lognormal_field(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %2, <3 x i32> noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.Rng, align 16
  %6 = alloca %struct.Rng, align 16
  %7 = extractelement <3 x i32> %3, i64 0
  %8 = load i32, ptr addrspace(1) %1, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %9 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 1
  %10 = load i32, ptr addrspace(1) %9, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %11 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 2
  %12 = load i32, ptr addrspace(1) %11, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %13 = icmp ult i32 %7, %8
  br i1 %13, label %14, label %70

14:                                               ; preds = %4
  %15 = getelementptr inbounds i32, ptr addrspace(1) %1, i64 3
  %16 = load i32, ptr addrspace(1) %15, align 4, !tbaa !22, !alias.scope !26, !noalias !29
  %17 = load float, ptr addrspace(1) %0, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %18 = getelementptr inbounds float, ptr addrspace(1) %0, i64 1
  %19 = load float, ptr addrspace(1) %18, align 4, !tbaa !32, !alias.scope !34, !noalias !35
  %20 = fmul float %19, %19
  %21 = fmul float %17, %17
  %22 = fdiv float %20, %21
  %23 = fadd float %22, 1.000000e+00
  %24 = tail call float @air.log.f32(float %23) #5
  %25 = tail call float @air.sqrt.f32(float %24) #5
  %26 = tail call float @air.log.f32(float %17) #5
  %27 = fmul float %25, -5.000000e-01
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %25, float %26)
  %29 = icmp eq i32 %16, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %14
  %31 = bitcast ptr %5 to ptr
  %32 = insertelement <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, i32 %7, i64 0
  %33 = getelementptr inbounds %struct.Rng, ptr %5, i64 0, i32 0
  %34 = insertelement <2 x i32> <i32 poison, i32 0>, i32 %10, i64 0
  %35 = getelementptr inbounds %struct.Rng, ptr %5, i64 0, i32 1
  %36 = getelementptr inbounds %struct.Rng, ptr %5, i64 0, i32 4
  %37 = mul i32 %7, 3
  br label %38

38:                                               ; preds = %38, %30
  %39 = phi i32 [ 0, %30 ], [ %48, %38 ]
  call void @llvm.lifetime.start.p0(ptr %5)
  %40 = add i32 %39, %12
  %41 = insertelement <4 x i32> %32, i32 %40, i64 1
  store <4 x i32> %41, ptr %33, align 16, !tbaa !36
  store <2 x i32> %34, ptr %35, align 16, !tbaa !36
  store i32 0, ptr %36, align 16, !tbaa !37
  %42 = call fastcc float @_ZN3Rng6normalEv(ptr noundef nonnull %5) #6
  %43 = call float @llvm.fmuladd.f32(float %25, float %42, float %28)
  %44 = call float @air.exp.f32(float %43) #5
  %45 = add i32 %39, %37
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %46
  store float %44, ptr addrspace(1) %47, align 4, !tbaa !32, !alias.scope !39, !noalias !40
  call void @llvm.lifetime.end.p0(ptr %5)
  %48 = add nuw nsw i32 %39, 1
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %70, label %38, !llvm.loop !41

50:                                               ; preds = %14
  %51 = bitcast ptr %6 to ptr
  call void @llvm.lifetime.start.p0(ptr %6)
  %52 = insertelement <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, i32 %7, i64 0
  %53 = insertelement <4 x i32> %52, i32 %12, i64 1
  %54 = getelementptr inbounds %struct.Rng, ptr %6, i64 0, i32 0
  store <4 x i32> %53, ptr %54, align 16, !tbaa !36
  %55 = insertelement <2 x i32> <i32 poison, i32 0>, i32 %10, i64 0
  %56 = getelementptr inbounds %struct.Rng, ptr %6, i64 0, i32 1
  store <2 x i32> %55, ptr %56, align 16, !tbaa !36
  %57 = getelementptr inbounds %struct.Rng, ptr %6, i64 0, i32 4
  store i32 0, ptr %57, align 16, !tbaa !37
  %58 = call fastcc float @_ZN3Rng6normalEv(ptr noundef nonnull %6) #6
  %59 = call float @llvm.fmuladd.f32(float %25, float %58, float %28)
  %60 = call float @air.exp.f32(float %59) #5
  %61 = mul i32 %7, 3
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %62
  store float %60, ptr addrspace(1) %63, align 4, !tbaa !32, !alias.scope !39, !noalias !40
  %64 = add i32 %61, 1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %65
  store float %60, ptr addrspace(1) %66, align 4, !tbaa !32, !alias.scope !39, !noalias !40
  %67 = add i32 %61, 2
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %68
  store float %60, ptr addrspace(1) %69, align 4, !tbaa !32, !alias.scope !39, !noalias !40
  call void @llvm.lifetime.end.p0(ptr %6)
  br label %70

70:                                               ; preds = %50, %38, %4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.exp.f32(float) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nounwind
define internal fastcc float @_ZN3Rng6normalEv(ptr noundef %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 16, !tbaa !37
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 3
  %7 = load <4 x i32>, ptr %6, align 16
  %8 = add i32 %3, -1
  br label %46

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 0
  %11 = load <4 x i32>, ptr %10, align 16, !tbaa !36
  %12 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 1
  %13 = load <2 x i32>, ptr %12, align 16, !tbaa !36
  br label %14

14:                                               ; preds = %14, %9
  %15 = phi <4 x i32> [ %11, %9 ], [ %35, %14 ]
  %16 = phi <2 x i32> [ %13, %9 ], [ %39, %14 ]
  %17 = phi i32 [ 0, %9 ], [ %40, %14 ]
  %18 = extractelement <4 x i32> %15, i64 0
  %19 = tail call i32 @air.mul_hi.u.i32(i32 -766435501, i32 %18) #5
  %20 = mul i32 %18, -766435501
  %21 = extractelement <4 x i32> %15, i64 2
  %22 = tail call i32 @air.mul_hi.u.i32(i32 -845247145, i32 %21) #5
  %23 = mul i32 %21, -845247145
  %24 = extractelement <4 x i32> %15, i64 1
  %25 = extractelement <2 x i32> %16, i64 0
  %26 = xor i32 %25, %24
  %27 = xor i32 %26, %22
  %28 = insertelement <4 x i32> undef, i32 %27, i64 0
  %29 = insertelement <4 x i32> %28, i32 %23, i64 1
  %30 = extractelement <4 x i32> %15, i64 3
  %31 = extractelement <2 x i32> %16, i64 1
  %32 = xor i32 %31, %30
  %33 = xor i32 %32, %19
  %34 = insertelement <4 x i32> %29, i32 %33, i64 2
  %35 = insertelement <4 x i32> %34, i32 %20, i64 3
  %36 = add i32 %25, -1640531527
  %37 = insertelement <2 x i32> poison, i32 %36, i64 0
  %38 = add i32 %31, -1150833019
  %39 = insertelement <2 x i32> %37, i32 %38, i64 1
  %40 = add nuw nsw i32 %17, 1
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %14, !llvm.loop !43

42:                                               ; preds = %14
  %43 = extractelement <4 x i32> %11, i64 2
  %44 = add i32 %43, 1
  %45 = insertelement <4 x i32> %11, i32 %44, i64 2
  store <4 x i32> %45, ptr %10, align 16
  br label %46

46:                                               ; preds = %42, %5
  %47 = phi i32 [ %8, %5 ], [ 3, %42 ]
  %48 = phi <4 x i32> [ %7, %5 ], [ %35, %42 ]
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = shufflevector <4 x i32> %48, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %52 = add i32 %47, -1
  br label %90

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 0
  %55 = load <4 x i32>, ptr %54, align 16, !tbaa !36
  %56 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 1
  %57 = load <2 x i32>, ptr %56, align 16, !tbaa !36
  br label %58

58:                                               ; preds = %58, %53
  %59 = phi <4 x i32> [ %55, %53 ], [ %79, %58 ]
  %60 = phi <2 x i32> [ %57, %53 ], [ %83, %58 ]
  %61 = phi i32 [ 0, %53 ], [ %84, %58 ]
  %62 = extractelement <4 x i32> %59, i64 0
  %63 = tail call i32 @air.mul_hi.u.i32(i32 -766435501, i32 %62) #5
  %64 = mul i32 %62, -766435501
  %65 = extractelement <4 x i32> %59, i64 2
  %66 = tail call i32 @air.mul_hi.u.i32(i32 -845247145, i32 %65) #5
  %67 = mul i32 %65, -845247145
  %68 = extractelement <4 x i32> %59, i64 1
  %69 = extractelement <2 x i32> %60, i64 0
  %70 = xor i32 %69, %68
  %71 = xor i32 %70, %66
  %72 = insertelement <4 x i32> undef, i32 %71, i64 0
  %73 = insertelement <4 x i32> %72, i32 %67, i64 1
  %74 = extractelement <4 x i32> %59, i64 3
  %75 = extractelement <2 x i32> %60, i64 1
  %76 = xor i32 %75, %74
  %77 = xor i32 %76, %63
  %78 = insertelement <4 x i32> %73, i32 %77, i64 2
  %79 = insertelement <4 x i32> %78, i32 %64, i64 3
  %80 = add i32 %69, -1640531527
  %81 = insertelement <2 x i32> poison, i32 %80, i64 0
  %82 = add i32 %75, -1150833019
  %83 = insertelement <2 x i32> %81, i32 %82, i64 1
  %84 = add nuw nsw i32 %61, 1
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %58, !llvm.loop !43

86:                                               ; preds = %58
  %87 = extractelement <4 x i32> %55, i64 2
  %88 = add i32 %87, 1
  %89 = insertelement <4 x i32> %55, i32 %88, i64 2
  store <4 x i32> %89, ptr %54, align 16
  br label %90

90:                                               ; preds = %86, %50
  %91 = phi i32 [ %52, %50 ], [ 3, %86 ]
  %92 = phi <4 x i32> [ %51, %50 ], [ %79, %86 ]
  %93 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 3
  %94 = extractelement <4 x i32> %48, i64 0
  %95 = lshr i32 %94, 8
  %96 = tail call float @air.convert.f.f32.u.i32(i32 %95) #5
  %97 = fadd float %96, 5.000000e-01
  %98 = fmul float %97, 0x3E70000000000000
  %99 = extractelement <4 x i32> %92, i64 0
  %100 = shufflevector <4 x i32> %92, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %100, ptr %93, align 16, !tbaa !36
  store i32 %91, ptr %2, align 16, !tbaa !37
  %101 = lshr i32 %99, 8
  %102 = tail call float @air.convert.f.f32.u.i32(i32 %101) #5
  %103 = fadd float %102, 5.000000e-01
  %104 = fmul float %103, 0x3E70000000000000
  %105 = tail call float @air.log.f32(float %98) #5
  %106 = fmul float %105, -2.000000e+00
  %107 = tail call float @air.sqrt.f32(float %106) #5
  %108 = fmul float %104, 0x401921FB60000000
  %109 = tail call float @air.cos.f32(float %108) #5
  %110 = fmul float %107, %109
  ret float %110
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.cos.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.sqrt.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.log.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.u.i32(i32) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.mul_hi.u.i32(i32, i32) local_unnamed_addr #1

declare void @llvm.lifetime.end.i64(i64)

declare void @llvm.lifetime.start.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

attributes #0 = { convergent nounwind "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { nobuiltin "no-builtins" }

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
!15 = !{ptr @spk_lognormal_field, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"p"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!21 = !{i32 3, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C++ TBAA"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"air-alias-scope-arg(1)"}
!28 = distinct !{!28, !"air-alias-scopes(spk_lognormal_field)"}
!29 = !{!30, !31}
!30 = distinct !{!30, !28, !"air-alias-scope-arg(0)"}
!31 = distinct !{!31, !28, !"air-alias-scope-arg(2)"}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !24, i64 0}
!34 = !{!30}
!35 = !{!27, !31}
!36 = !{!24, !24, i64 0}
!37 = !{!38, !23, i64 48}
!38 = !{!"_ZTS3Rng", !24, i64 0, !24, i64 16, !24, i64 32, !23, i64 48}
!39 = !{!31}
!40 = !{!30, !27}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = distinct !{!43, !42}
