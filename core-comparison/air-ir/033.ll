; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/033.bc'
source_filename = "spk_spectral_epilogue"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_spectral_epilogue(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %4, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %5, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %6, <3 x i32> noundef %7) local_unnamed_addr #0 {
  %9 = extractelement <3 x i32> %7, i64 0
  %10 = load i32, ptr addrspace(1) %5, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %11 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 1
  %12 = load i32, ptr addrspace(1) %11, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %13 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 2
  %14 = load i32, ptr addrspace(1) %13, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %15 = icmp ult i32 %9, %10
  br i1 %15, label %16, label %103

16:                                               ; preds = %8
  %17 = mul i32 %9, 3
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %18
  %20 = load float, ptr addrspace(1) %19, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %21 = add i32 %17, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %22
  %24 = load float, ptr addrspace(1) %23, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %25 = add i32 %17, 2
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %26
  %28 = load float, ptr addrspace(1) %27, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %29 = icmp eq i32 %12, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %55, %16
  %31 = phi float [ 0.000000e+00, %16 ], [ %86, %55 ]
  %32 = phi float [ 0.000000e+00, %16 ], [ %89, %55 ]
  %33 = phi float [ 0.000000e+00, %16 ], [ %83, %55 ]
  %34 = load float, ptr addrspace(1) %4, align 4, !tbaa !40, !alias.scope !44, !noalias !45
  %35 = getelementptr inbounds float, ptr addrspace(1) %4, i64 3
  %36 = load float, ptr addrspace(1) %35, align 4, !tbaa !40, !alias.scope !44, !noalias !45
  %37 = tail call float @llvm.fmuladd.f32(float %33, float %34, float %36)
  %38 = tail call float @air.fmax.f32(float %37, float 0.000000e+00) #3
  %39 = fadd float %38, 0x3DDB7CDFE0000000
  %40 = getelementptr inbounds float, ptr addrspace(1) %4, i64 1
  %41 = load float, ptr addrspace(1) %40, align 4, !tbaa !40, !alias.scope !44, !noalias !45
  %42 = getelementptr inbounds float, ptr addrspace(1) %4, i64 4
  %43 = load float, ptr addrspace(1) %42, align 4, !tbaa !40, !alias.scope !44, !noalias !45
  %44 = tail call float @llvm.fmuladd.f32(float %31, float %41, float %43)
  %45 = tail call float @air.fmax.f32(float %44, float 0.000000e+00) #3
  %46 = fadd float %45, 0x3DDB7CDFE0000000
  %47 = getelementptr inbounds float, ptr addrspace(1) %4, i64 2
  %48 = load float, ptr addrspace(1) %47, align 4, !tbaa !40, !alias.scope !44, !noalias !45
  %49 = getelementptr inbounds float, ptr addrspace(1) %4, i64 5
  %50 = load float, ptr addrspace(1) %49, align 4, !tbaa !40, !alias.scope !44, !noalias !45
  %51 = tail call float @llvm.fmuladd.f32(float %32, float %48, float %50)
  %52 = tail call float @air.fmax.f32(float %51, float 0.000000e+00) #3
  %53 = fadd float %52, 0x3DDB7CDFE0000000
  %54 = icmp eq i32 %14, 0
  br i1 %54, label %92, label %96

55:                                               ; preds = %55, %16
  %56 = phi float [ %83, %55 ], [ 0.000000e+00, %16 ]
  %57 = phi i32 [ %90, %55 ], [ 0, %16 ]
  %58 = phi float [ %89, %55 ], [ 0.000000e+00, %16 ]
  %59 = phi float [ %86, %55 ], [ 0.000000e+00, %16 ]
  %60 = mul i32 %57, 3
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %61
  %63 = load float, ptr addrspace(1) %62, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %64 = add i32 %60, 1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %65
  %67 = load float, ptr addrspace(1) %66, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %68 = fmul float %24, %67
  %69 = tail call float @llvm.fmuladd.f32(float %20, float %63, float %68)
  %70 = add i32 %60, 2
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %71
  %73 = load float, ptr addrspace(1) %72, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %74 = tail call float @llvm.fmuladd.f32(float %28, float %73, float %69)
  %75 = zext i32 %57 to i64
  %76 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %75
  %77 = load float, ptr addrspace(1) %76, align 4, !tbaa !40, !alias.scope !48, !noalias !49
  %78 = fadd float %77, %74
  %79 = fmul float %78, 0xC00A934F00000000
  %80 = tail call float @air.exp2.f32(float %79) #3
  %81 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %61
  %82 = load float, ptr addrspace(1) %81, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %83 = tail call float @llvm.fmuladd.f32(float %80, float %82, float %56)
  %84 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %65
  %85 = load float, ptr addrspace(1) %84, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %86 = tail call float @llvm.fmuladd.f32(float %80, float %85, float %59)
  %87 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %71
  %88 = load float, ptr addrspace(1) %87, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %89 = tail call float @llvm.fmuladd.f32(float %80, float %88, float %58)
  %90 = add nuw i32 %57, 1
  %91 = icmp eq i32 %90, %12
  br i1 %91, label %30, label %55, !llvm.loop !52

92:                                               ; preds = %30
  %93 = tail call float @air.log10.f32(float %39) #3
  %94 = tail call float @air.log10.f32(float %46) #3
  %95 = tail call float @air.log10.f32(float %53) #3
  br label %96

96:                                               ; preds = %92, %30
  %97 = phi float [ %93, %92 ], [ %39, %30 ]
  %98 = phi float [ %94, %92 ], [ %46, %30 ]
  %99 = phi float [ %95, %92 ], [ %53, %30 ]
  %100 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %18
  store float %97, ptr addrspace(1) %100, align 4, !tbaa !40, !alias.scope !54, !noalias !55
  %101 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %22
  store float %98, ptr addrspace(1) %101, align 4, !tbaa !40, !alias.scope !54, !noalias !55
  %102 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %26
  store float %99, ptr addrspace(1) %102, align 4, !tbaa !40, !alias.scope !54, !noalias !55
  br label %103

103:                                              ; preds = %96, %8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.log10.f32(float) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.exp2.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fmax.f32(float, float) local_unnamed_addr #1

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
!15 = !{ptr @spk_spectral_epilogue, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"cmy"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"chd"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"base"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"ixs"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"ep"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!24 = !{i32 6, !"air.buffer", !"air.location_index", i32 6, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!25 = !{i32 7, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C++ TBAA"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"air-alias-scope-arg(5)"}
!32 = distinct !{!32, !"air-alias-scopes(spk_spectral_epilogue)"}
!33 = !{!34, !35, !36, !37, !38, !39}
!34 = distinct !{!34, !32, !"air-alias-scope-arg(0)"}
!35 = distinct !{!35, !32, !"air-alias-scope-arg(1)"}
!36 = distinct !{!36, !32, !"air-alias-scope-arg(2)"}
!37 = distinct !{!37, !32, !"air-alias-scope-arg(3)"}
!38 = distinct !{!38, !32, !"air-alias-scope-arg(4)"}
!39 = distinct !{!39, !32, !"air-alias-scope-arg(6)"}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !28, i64 0}
!42 = !{!34}
!43 = !{!35, !36, !37, !38, !31, !39}
!44 = !{!38}
!45 = !{!34, !35, !36, !37, !31, !39}
!46 = !{!35}
!47 = !{!34, !36, !37, !38, !31, !39}
!48 = !{!36}
!49 = !{!34, !35, !37, !38, !31, !39}
!50 = !{!37}
!51 = !{!34, !35, !36, !38, !31, !39}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!39}
!55 = !{!34, !35, !36, !37, !38, !31}
