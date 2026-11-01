; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/007.bc'
source_filename = "spk_mask_reduce"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_mask_reduce(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %4, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %5, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %6, <3 x i32> noundef %7) local_unnamed_addr #0 {
  %9 = load i32, ptr addrspace(1) %5, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %10 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 2
  %11 = load i32, ptr addrspace(1) %10, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %12 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 3
  %13 = load i32, ptr addrspace(1) %12, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %14 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 4
  %15 = load i32, ptr addrspace(1) %14, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %16 = extractelement <3 x i32> %7, i64 0
  %17 = mul i32 %13, %11
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %150

19:                                               ; preds = %8
  %20 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 1
  %21 = load i32, ptr addrspace(1) %20, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %22 = udiv i32 %16, %11
  %23 = urem i32 %16, %11
  %24 = mul i32 %23, %9
  %25 = udiv i32 %24, %11
  %26 = add nuw i32 %23, 1
  %27 = mul i32 %26, %9
  %28 = udiv i32 %27, %11
  %29 = add i32 %25, 1
  %30 = tail call i32 @air.max.u.i32(i32 %28, i32 %29) #3
  %31 = mul i32 %22, %21
  %32 = udiv i32 %31, %13
  %33 = add nuw i32 %22, 1
  %34 = mul i32 %33, %21
  %35 = udiv i32 %34, %13
  %36 = add i32 %32, 1
  %37 = tail call i32 @air.max.u.i32(i32 %35, i32 %36) #3
  %38 = tail call i32 @air.min.u.i32(i32 %30, i32 %9) #3
  %39 = tail call i32 @air.min.u.i32(i32 %37, i32 %21) #3
  %40 = icmp ugt i32 %39, %32
  br i1 %40, label %41, label %54

41:                                               ; preds = %19
  %42 = icmp ugt i32 %38, %25
  %43 = icmp eq i32 %15, 0
  %44 = getelementptr inbounds float, ptr addrspace(1) %4, i64 1
  %45 = getelementptr inbounds float, ptr addrspace(1) %4, i64 2
  br label %46

46:                                               ; preds = %63, %41
  %47 = phi i32 [ %32, %41 ], [ %65, %63 ]
  %48 = phi float [ 0.000000e+00, %41 ], [ %64, %63 ]
  br i1 %42, label %49, label %63

49:                                               ; preds = %46
  %50 = mul i32 %47, %9
  %51 = load float, ptr addrspace(1) %4, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %52 = load float, ptr addrspace(1) %44, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %53 = load float, ptr addrspace(1) %45, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  br label %67

54:                                               ; preds = %63, %19
  %55 = phi float [ 0.000000e+00, %19 ], [ %64, %63 ]
  %56 = sub i32 %38, %25
  %57 = sub i32 %39, %32
  %58 = mul i32 %57, %56
  %59 = tail call float @air.convert.f.f32.u.i32(i32 %58) #3
  %60 = fdiv float %55, %59
  %61 = zext i32 %16 to i64
  %62 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %61
  store float %60, ptr addrspace(1) %62, align 4, !tbaa !40, !alias.scope !44, !noalias !45
  br label %150

63:                                               ; preds = %145, %46
  %64 = phi float [ %48, %46 ], [ %147, %145 ]
  %65 = add nuw i32 %47, 1
  %66 = icmp eq i32 %65, %39
  br i1 %66, label %54, label %46, !llvm.loop !46

67:                                               ; preds = %145, %49
  %68 = phi i32 [ %25, %49 ], [ %148, %145 ]
  %69 = phi float [ %48, %49 ], [ %147, %145 ]
  %70 = add i32 %68, %50
  %71 = mul i32 %70, 3
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %72
  %74 = load float, ptr addrspace(1) %73, align 4, !tbaa !40, !alias.scope !48, !noalias !49
  %75 = add i32 %71, 1
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %76
  %78 = load float, ptr addrspace(1) %77, align 4, !tbaa !40, !alias.scope !48, !noalias !49
  %79 = add i32 %71, 2
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %80
  %82 = load float, ptr addrspace(1) %81, align 4, !tbaa !40, !alias.scope !48, !noalias !49
  br i1 %43, label %120, label %83

83:                                               ; preds = %83, %67
  %84 = phi float [ %111, %83 ], [ 0.000000e+00, %67 ]
  %85 = phi float [ %114, %83 ], [ 0.000000e+00, %67 ]
  %86 = phi i32 [ %118, %83 ], [ 0, %67 ]
  %87 = phi float [ %117, %83 ], [ 0.000000e+00, %67 ]
  %88 = mul i32 %86, 3
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %89
  %91 = load float, ptr addrspace(1) %90, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %92 = add i32 %88, 1
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %93
  %95 = load float, ptr addrspace(1) %94, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %96 = fmul float %78, %95
  %97 = tail call float @llvm.fmuladd.f32(float %74, float %91, float %96) #4
  %98 = add i32 %88, 2
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %99
  %101 = load float, ptr addrspace(1) %100, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %102 = tail call float @llvm.fmuladd.f32(float %82, float %101, float %97) #4
  %103 = zext i32 %86 to i64
  %104 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %103
  %105 = load float, ptr addrspace(1) %104, align 4, !tbaa !40, !alias.scope !52, !noalias !53
  %106 = fadd float %105, %102
  %107 = fmul float %106, 0xC00A934F00000000
  %108 = tail call float @air.exp2.f32(float %107) #3
  %109 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %89
  %110 = load float, ptr addrspace(1) %109, align 4, !tbaa !40, !alias.scope !54, !noalias !55
  %111 = tail call float @llvm.fmuladd.f32(float %108, float %110, float %84) #4
  %112 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %93
  %113 = load float, ptr addrspace(1) %112, align 4, !tbaa !40, !alias.scope !54, !noalias !55
  %114 = tail call float @llvm.fmuladd.f32(float %108, float %113, float %85) #4
  %115 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %99
  %116 = load float, ptr addrspace(1) %115, align 4, !tbaa !40, !alias.scope !54, !noalias !55
  %117 = tail call float @llvm.fmuladd.f32(float %108, float %116, float %87) #4
  %118 = add nuw i32 %86, 1
  %119 = icmp eq i32 %118, %15
  br i1 %119, label %120, label %83, !llvm.loop !56

120:                                              ; preds = %83, %67
  %121 = phi float [ 0.000000e+00, %67 ], [ %117, %83 ]
  %122 = phi float [ 0.000000e+00, %67 ], [ %114, %83 ]
  %123 = phi float [ 0.000000e+00, %67 ], [ %111, %83 ]
  %124 = fmul float %51, %123
  %125 = insertelement <3 x float> undef, float %124, i64 0
  %126 = fmul float %52, %122
  %127 = insertelement <3 x float> %125, float %126, i64 1
  %128 = fmul float %53, %121
  %129 = insertelement <3 x float> %127, float %128, i64 2
  br label %130

130:                                              ; preds = %130, %120
  %131 = phi float [ 0.000000e+00, %120 ], [ %142, %130 ]
  %132 = phi i32 [ 0, %120 ], [ %143, %130 ]
  %133 = extractelement <3 x float> %129, i32 %132
  %134 = add nuw nsw i32 %132, 3
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %135
  %137 = load float, ptr addrspace(1) %136, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %138 = fmul float %133, %137
  %139 = tail call float @air.fmax.f32(float %138, float 0.000000e+00) #3
  %140 = tail call float @air.log2.f32(float %139) #3
  %141 = tail call float @air.fmax.f32(float %140, float -2.000000e+01) #3
  %142 = fadd float %131, %141
  %143 = add nuw nsw i32 %132, 1
  %144 = icmp eq i32 %143, 3
  br i1 %144, label %145, label %130, !llvm.loop !57

145:                                              ; preds = %130
  %146 = fmul float %142, 0x3FD5555560000000
  %147 = fadd float %69, %146
  %148 = add nuw i32 %68, 1
  %149 = icmp eq i32 %148, %38
  br i1 %149, label %63, label %67, !llvm.loop !58

150:                                              ; preds = %54, %8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fmax.f32(float, float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.log2.f32(float) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.exp2.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.u.i32(i32) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.min.u.i32(i32, i32) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.max.u.i32(i32, i32) local_unnamed_addr #1

attributes #0 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind willreturn memory(none) }
attributes #4 = { nounwind }

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
!15 = !{ptr @spk_mask_reduce, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"cmy"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"chd"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"base"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"ixs"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"p"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!24 = !{i32 6, !"air.buffer", !"air.location_index", i32 6, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!25 = !{i32 7, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C++ TBAA"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"air-alias-scope-arg(5)"}
!32 = distinct !{!32, !"air-alias-scopes(spk_mask_reduce)"}
!33 = !{!34, !35, !36, !37, !38, !39}
!34 = distinct !{!34, !32, !"air-alias-scope-arg(0)"}
!35 = distinct !{!35, !32, !"air-alias-scope-arg(1)"}
!36 = distinct !{!36, !32, !"air-alias-scope-arg(2)"}
!37 = distinct !{!37, !32, !"air-alias-scope-arg(3)"}
!38 = distinct !{!38, !32, !"air-alias-scope-arg(4)"}
!39 = distinct !{!39, !32, !"air-alias-scope-arg(6)"}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !28, i64 0}
!42 = !{!38}
!43 = !{!34, !35, !36, !37, !31, !39}
!44 = !{!39}
!45 = !{!34, !35, !36, !37, !38, !31}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!34}
!49 = !{!35, !36, !37, !38, !31, !39}
!50 = !{!35}
!51 = !{!34, !36, !37, !38, !31, !39}
!52 = !{!36}
!53 = !{!34, !35, !37, !38, !31, !39}
!54 = !{!37}
!55 = !{!34, !35, !36, !38, !31, !39}
!56 = distinct !{!56, !47}
!57 = distinct !{!57, !47}
!58 = distinct !{!58, !47}
