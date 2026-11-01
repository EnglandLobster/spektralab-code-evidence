; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/003.bc'
source_filename = "spk_sep_fir_acc"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_sep_fir_acc(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %4, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %5, <3 x i32> noundef %6) local_unnamed_addr #0 {
  %8 = extractelement <3 x i32> %6, i64 0
  %9 = load i32, ptr addrspace(1) %4, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %10 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 1
  %11 = load i32, ptr addrspace(1) %10, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %12 = mul i32 %11, %9
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %163

14:                                               ; preds = %7
  %15 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 2
  %16 = load i32, ptr addrspace(1) %15, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %17 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 3
  %18 = load i32, ptr addrspace(1) %17, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %19 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 4
  %20 = load i32, ptr addrspace(1) %19, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %21 = udiv i32 %8, %11
  %22 = urem i32 %8, %11
  %23 = icmp eq i32 %18, 0
  %24 = select i1 %23, i32 %9, i32 %11
  %25 = select i1 %23, i32 %21, i32 %22
  %26 = icmp slt i32 %16, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %14
  %28 = sub nsw i32 0, %16
  %29 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 5
  %30 = load i32, ptr addrspace(1) %29, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %31 = icmp eq i32 %30, 0
  %32 = icmp slt i32 %24, 2
  %33 = shl i32 %24, 1
  %34 = add i32 %33, -2
  %35 = sub nsw i32 0, %24
  %36 = mul i32 %21, %11
  %37 = shl nuw i32 %16, 1
  %38 = or i32 %37, 1
  %39 = shl i32 %38, 1
  br label %50

40:                                               ; preds = %91, %14
  %41 = phi <3 x float> [ zeroinitializer, %14 ], [ %127, %91 ]
  %42 = icmp eq i32 %20, 0
  %43 = mul i32 %8, 3
  %44 = zext i32 %43 to i64
  br i1 %42, label %45, label %130

45:                                               ; preds = %40
  %46 = add i32 %43, 1
  %47 = zext i32 %46 to i64
  %48 = add i32 %43, 2
  %49 = zext i32 %48 to i64
  br label %153

50:                                               ; preds = %91, %27
  %51 = phi <3 x float> [ zeroinitializer, %27 ], [ %127, %91 ]
  %52 = phi i32 [ %28, %27 ], [ %128, %91 ]
  br i1 %31, label %65, label %53

53:                                               ; preds = %50
  br i1 %32, label %91, label %54

54:                                               ; preds = %53
  %55 = add nsw i32 %52, %25
  %56 = tail call i32 @llvm.abs.i32(i32 %55, i1 true) #3
  %57 = icmp slt i32 %56, %34
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = srem i32 %56, %34
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i32 [ %59, %58 ], [ %56, %54 ]
  %62 = icmp ult i32 %61, %24
  %63 = sub nsw i32 %34, %61
  %64 = select i1 %62, i32 %61, i32 %63
  br label %91

65:                                               ; preds = %50
  %66 = add nsw i32 %52, %25
  %67 = icmp sgt i32 %66, -1
  %68 = icmp slt i32 %66, %24
  %69 = and i1 %67, %68
  br i1 %69, label %91, label %70

70:                                               ; preds = %65
  %71 = icmp sge i32 %66, %35
  %72 = icmp slt i32 %66, 0
  %73 = and i1 %72, %71
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = xor i32 %66, -1
  br label %91

76:                                               ; preds = %70
  %77 = icmp sle i32 %33, %66
  %78 = or i1 %68, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = xor i32 %66, -1
  %81 = add i32 %33, %80
  br label %91

82:                                               ; preds = %76
  %83 = srem i32 %66, %33
  %84 = icmp slt i32 %83, 0
  %85 = select i1 %84, i32 %33, i32 0
  %86 = add nsw i32 %85, %83
  %87 = icmp slt i32 %86, %24
  %88 = xor i32 %86, -1
  %89 = add i32 %33, %88
  %90 = select i1 %87, i32 %86, i32 %89
  br label %91

91:                                               ; preds = %82, %79, %74, %65, %60, %53
  %92 = phi i32 [ %64, %60 ], [ 0, %53 ], [ %75, %74 ], [ %81, %79 ], [ %90, %82 ], [ %66, %65 ]
  %93 = mul i32 %92, %11
  %94 = add i32 %93, %22
  %95 = add i32 %92, %36
  %96 = select i1 %23, i32 %94, i32 %95
  %97 = add nsw i32 %52, %16
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %98
  %100 = load float, ptr addrspace(1) %99, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %101 = insertelement <3 x float> undef, float %100, i64 0
  %102 = add i32 %97, %38
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %103
  %105 = load float, ptr addrspace(1) %104, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %106 = insertelement <3 x float> %101, float %105, i64 1
  %107 = add i32 %97, %39
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %108
  %110 = load float, ptr addrspace(1) %109, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %111 = insertelement <3 x float> %106, float %110, i64 2
  %112 = mul i32 %96, 3
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %113
  %115 = load float, ptr addrspace(1) %114, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %116 = insertelement <3 x float> undef, float %115, i64 0
  %117 = add i32 %112, 1
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %118
  %120 = load float, ptr addrspace(1) %119, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %121 = insertelement <3 x float> %116, float %120, i64 1
  %122 = add i32 %112, 2
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %123
  %125 = load float, ptr addrspace(1) %124, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %126 = insertelement <3 x float> %121, float %125, i64 2
  %127 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %126, <3 x float> %111, <3 x float> %51)
  %128 = add i32 %52, 1
  %129 = icmp eq i32 %52, %16
  br i1 %129, label %40, label %50, !llvm.loop !44

130:                                              ; preds = %40
  %131 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %44
  %132 = load float, ptr addrspace(1) %131, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %133 = insertelement <3 x float> undef, float %132, i64 0
  %134 = add i32 %43, 1
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %135
  %137 = load float, ptr addrspace(1) %136, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %138 = insertelement <3 x float> %133, float %137, i64 1
  %139 = add i32 %43, 2
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %140
  %142 = load float, ptr addrspace(1) %141, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %143 = insertelement <3 x float> %138, float %142, i64 2
  %144 = load float, ptr addrspace(1) %3, align 4, !tbaa !38, !alias.scope !48, !noalias !49
  %145 = insertelement <3 x float> undef, float %144, i64 0
  %146 = getelementptr inbounds float, ptr addrspace(1) %3, i64 1
  %147 = load float, ptr addrspace(1) %146, align 4, !tbaa !38, !alias.scope !48, !noalias !49
  %148 = insertelement <3 x float> %145, float %147, i64 1
  %149 = getelementptr inbounds float, ptr addrspace(1) %3, i64 2
  %150 = load float, ptr addrspace(1) %149, align 4, !tbaa !38, !alias.scope !48, !noalias !49
  %151 = insertelement <3 x float> %148, float %150, i64 2
  %152 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %41, <3 x float> %151, <3 x float> %143)
  br label %153

153:                                              ; preds = %130, %45
  %154 = phi i64 [ %49, %45 ], [ %140, %130 ]
  %155 = phi i64 [ %47, %45 ], [ %135, %130 ]
  %156 = phi <3 x float> [ %41, %45 ], [ %152, %130 ]
  %157 = extractelement <3 x float> %156, i64 0
  %158 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %44
  store float %157, ptr addrspace(1) %158, align 4, !tbaa !38, !alias.scope !50, !noalias !51
  %159 = extractelement <3 x float> %156, i64 1
  %160 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %155
  store float %159, ptr addrspace(1) %160, align 4, !tbaa !38, !alias.scope !50, !noalias !51
  %161 = extractelement <3 x float> %156, i64 2
  %162 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %154
  store float %161, ptr addrspace(1) %162, align 4, !tbaa !38, !alias.scope !50, !noalias !51
  br label %163

163:                                              ; preds = %153, %7
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

attributes #0 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!15 = !{ptr @spk_sep_fir_acc, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"img"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"w"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"accin"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"wt"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!24 = !{i32 6, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C++ TBAA"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"air-alias-scope-arg(4)"}
!31 = distinct !{!31, !"air-alias-scopes(spk_sep_fir_acc)"}
!32 = !{!33, !34, !35, !36, !37}
!33 = distinct !{!33, !31, !"air-alias-scope-arg(0)"}
!34 = distinct !{!34, !31, !"air-alias-scope-arg(1)"}
!35 = distinct !{!35, !31, !"air-alias-scope-arg(2)"}
!36 = distinct !{!36, !31, !"air-alias-scope-arg(3)"}
!37 = distinct !{!37, !31, !"air-alias-scope-arg(5)"}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !27, i64 0}
!40 = !{!34}
!41 = !{!33, !35, !36, !30, !37}
!42 = !{!33}
!43 = !{!34, !35, !36, !30, !37}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!35}
!47 = !{!33, !34, !36, !30, !37}
!48 = !{!36}
!49 = !{!33, !34, !35, !30, !37}
!50 = !{!37}
!51 = !{!33, !34, !35, !36, !30}
