; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/056.bc'
source_filename = "spk_lut3d_trilinear"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_lut3d_trilinear(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %4, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %5, <3 x i32> noundef %6) local_unnamed_addr #0 {
  %8 = extractelement <3 x i32> %6, i64 0
  %9 = load i32, ptr addrspace(1) %4, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %139

11:                                               ; preds = %7
  %12 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 1
  %13 = load i32, ptr addrspace(1) %12, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %14 = add i32 %13, -1
  %15 = tail call float @air.convert.f.f32.u.i32(i32 %14) #3
  %16 = mul i32 %8, 3
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %17
  %19 = load float, ptr addrspace(1) %18, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %20 = load float, ptr addrspace(1) %2, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %21 = fsub float %19, %20
  %22 = load float, ptr addrspace(1) %3, align 4, !tbaa !38, !alias.scope !44, !noalias !45
  %23 = fmul float %21, %22
  %24 = add i32 %16, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %25
  %27 = load float, ptr addrspace(1) %26, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %28 = getelementptr inbounds float, ptr addrspace(1) %2, i64 1
  %29 = load float, ptr addrspace(1) %28, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %30 = fsub float %27, %29
  %31 = getelementptr inbounds float, ptr addrspace(1) %3, i64 1
  %32 = load float, ptr addrspace(1) %31, align 4, !tbaa !38, !alias.scope !44, !noalias !45
  %33 = fmul float %30, %32
  %34 = add i32 %16, 2
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %35
  %37 = load float, ptr addrspace(1) %36, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %38 = getelementptr inbounds float, ptr addrspace(1) %2, i64 2
  %39 = load float, ptr addrspace(1) %38, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %40 = fsub float %37, %39
  %41 = getelementptr inbounds float, ptr addrspace(1) %3, i64 2
  %42 = load float, ptr addrspace(1) %41, align 4, !tbaa !38, !alias.scope !44, !noalias !45
  %43 = fmul float %40, %42
  %44 = tail call float @air.clamp.f32(float %23, float 0.000000e+00, float 1.000000e+00) #3
  %45 = fmul float %15, %44
  %46 = tail call float @air.clamp.f32(float %33, float 0.000000e+00, float 1.000000e+00) #3
  %47 = fmul float %15, %46
  %48 = tail call float @air.clamp.f32(float %43, float 0.000000e+00, float 1.000000e+00) #3
  %49 = fmul float %15, %48
  %50 = tail call float @air.floor.f32(float %45) #3
  %51 = tail call i32 @air.convert.u.i32.f.f32(float %50) #3
  %52 = tail call float @air.floor.f32(float %47) #3
  %53 = tail call i32 @air.convert.u.i32.f.f32(float %52) #3
  %54 = tail call float @air.floor.f32(float %49) #3
  %55 = tail call i32 @air.convert.u.i32.f.f32(float %54) #3
  %56 = tail call float @air.convert.f.f32.u.i32(i32 %51) #3
  %57 = fsub float %45, %56
  %58 = tail call float @air.convert.f.f32.u.i32(i32 %53) #3
  %59 = fsub float %47, %58
  %60 = tail call float @air.convert.f.f32.u.i32(i32 %55) #3
  %61 = fsub float %49, %60
  %62 = add i32 %51, 1
  %63 = tail call i32 @air.min.u.i32(i32 %62, i32 %14) #3
  %64 = add i32 %53, 1
  %65 = tail call i32 @air.min.u.i32(i32 %64, i32 %14) #3
  %66 = add i32 %55, 1
  %67 = tail call i32 @air.min.u.i32(i32 %66, i32 %14) #3
  %68 = mul i32 %51, %13
  %69 = add i32 %53, %68
  %70 = mul i32 %13, 3
  %71 = mul i32 %70, %69
  %72 = add i32 %65, %68
  %73 = mul i32 %70, %72
  %74 = mul i32 %63, %13
  %75 = add i32 %74, %53
  %76 = mul i32 %70, %75
  %77 = add i32 %74, %65
  %78 = mul i32 %70, %77
  %79 = mul i32 %55, 3
  %80 = mul i32 %67, 3
  %81 = fsub float 1.000000e+00, %57
  %82 = fsub float 1.000000e+00, %59
  %83 = fsub float 1.000000e+00, %61
  br label %84

84:                                               ; preds = %84, %11
  %85 = phi i32 [ 0, %11 ], [ %137, %84 ]
  %86 = add i32 %85, %79
  %87 = add i32 %86, %71
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %88
  %90 = load float, ptr addrspace(1) %89, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %91 = add i32 %85, %80
  %92 = add i32 %91, %71
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %93
  %95 = load float, ptr addrspace(1) %94, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %96 = add i32 %86, %73
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %97
  %99 = load float, ptr addrspace(1) %98, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %100 = add i32 %91, %73
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %101
  %103 = load float, ptr addrspace(1) %102, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %104 = add i32 %86, %76
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %105
  %107 = load float, ptr addrspace(1) %106, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %108 = add i32 %91, %76
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %109
  %111 = load float, ptr addrspace(1) %110, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %112 = add i32 %86, %78
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %113
  %115 = load float, ptr addrspace(1) %114, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %116 = add i32 %91, %78
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %117
  %119 = load float, ptr addrspace(1) %118, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %120 = fmul float %61, %95
  %121 = tail call float @llvm.fmuladd.f32(float %90, float %83, float %120)
  %122 = fmul float %61, %103
  %123 = tail call float @llvm.fmuladd.f32(float %99, float %83, float %122)
  %124 = fmul float %61, %111
  %125 = tail call float @llvm.fmuladd.f32(float %107, float %83, float %124)
  %126 = fmul float %61, %119
  %127 = tail call float @llvm.fmuladd.f32(float %115, float %83, float %126)
  %128 = fmul float %59, %123
  %129 = tail call float @llvm.fmuladd.f32(float %121, float %82, float %128)
  %130 = fmul float %59, %127
  %131 = tail call float @llvm.fmuladd.f32(float %125, float %82, float %130)
  %132 = fmul float %57, %131
  %133 = tail call float @llvm.fmuladd.f32(float %129, float %81, float %132)
  %134 = add i32 %85, %16
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %135
  store float %133, ptr addrspace(1) %136, align 4, !tbaa !38, !alias.scope !48, !noalias !49
  %137 = add nuw nsw i32 %85, 1
  %138 = icmp eq i32 %137, 3
  br i1 %138, label %139, label %84, !llvm.loop !50

139:                                              ; preds = %84, %7
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.min.u.i32(i32, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.u.i32(i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.convert.u.i32.f.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.floor.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.clamp.f32(float, float, float) local_unnamed_addr #2

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
!15 = !{ptr @spk_lut3d_trilinear, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"density"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"lut"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"lo"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"inv_span"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!24 = !{i32 6, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C++ TBAA"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"air-alias-scope-arg(4)"}
!31 = distinct !{!31, !"air-alias-scopes(spk_lut3d_trilinear)"}
!32 = !{!33, !34, !35, !36, !37}
!33 = distinct !{!33, !31, !"air-alias-scope-arg(0)"}
!34 = distinct !{!34, !31, !"air-alias-scope-arg(1)"}
!35 = distinct !{!35, !31, !"air-alias-scope-arg(2)"}
!36 = distinct !{!36, !31, !"air-alias-scope-arg(3)"}
!37 = distinct !{!37, !31, !"air-alias-scope-arg(5)"}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !27, i64 0}
!40 = !{!33}
!41 = !{!34, !35, !36, !30, !37}
!42 = !{!35}
!43 = !{!33, !34, !36, !30, !37}
!44 = !{!36}
!45 = !{!33, !34, !35, !30, !37}
!46 = !{!34}
!47 = !{!33, !35, !36, !30, !37}
!48 = !{!37}
!49 = !{!33, !34, !35, !36, !30}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
