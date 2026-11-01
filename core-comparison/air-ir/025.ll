; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/025.bc'
source_filename = "spk_halo_up_mix"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define void @spk_halo_up_mix(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %4, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %5, <3 x i32> noundef %6) local_unnamed_addr #0 {
  %8 = extractelement <3 x i32> %6, i64 0
  %9 = load i32, ptr addrspace(1) %4, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %10 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 1
  %11 = load i32, ptr addrspace(1) %10, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %12 = mul i32 %11, %9
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %192

14:                                               ; preds = %7
  %15 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 5
  %16 = load i32, ptr addrspace(1) %15, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %17 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 4
  %18 = load i32, ptr addrspace(1) %17, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %19 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 3
  %20 = load i32, ptr addrspace(1) %19, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %21 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 2
  %22 = load i32, ptr addrspace(1) %21, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %23 = udiv i32 %8, %11
  %24 = urem i32 %8, %11
  %25 = tail call float @air.convert.f.f32.u.i32(i32 %18) #3
  %26 = add i32 %18, -1
  %27 = tail call float @air.convert.f.f32.u.i32(i32 %26) #3
  %28 = fmul float %27, 5.000000e-01
  %29 = tail call float @air.convert.f.f32.u.i32(i32 %24) #3
  %30 = fsub float %29, %28
  %31 = fdiv float %30, %25
  %32 = tail call float @air.convert.f.f32.u.i32(i32 %23) #3
  %33 = fsub float %32, %28
  %34 = fdiv float %33, %25
  %35 = tail call float @air.floor.f32(float %31) #3
  %36 = tail call float @air.floor.f32(float %34) #3
  %37 = fsub float %31, %35
  %38 = fsub float %34, %36
  %39 = tail call i32 @air.convert.s.i32.f.f32(float %35) #3
  %40 = add nsw i32 %20, -1
  %41 = tail call i32 @air.clamp.s.i32(i32 %39, i32 0, i32 %40) #3
  %42 = add nsw i32 %39, 1
  %43 = tail call i32 @air.clamp.s.i32(i32 %42, i32 0, i32 %40) #3
  %44 = tail call i32 @air.convert.s.i32.f.f32(float %36) #3
  %45 = add nsw i32 %22, -1
  %46 = tail call i32 @air.clamp.s.i32(i32 %44, i32 0, i32 %45) #3
  %47 = add nsw i32 %44, 1
  %48 = tail call i32 @air.clamp.s.i32(i32 %47, i32 0, i32 %45) #3
  %49 = mul i32 %46, %20
  %50 = add i32 %49, %41
  %51 = add i32 %49, %43
  %52 = mul i32 %48, %20
  %53 = add i32 %52, %41
  %54 = add i32 %52, %43
  %55 = mul i32 %50, 3
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %56
  %58 = load float, ptr addrspace(1) %57, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %59 = insertelement <3 x float> undef, float %58, i64 0
  %60 = add i32 %55, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %61
  %63 = load float, ptr addrspace(1) %62, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %64 = insertelement <3 x float> %59, float %63, i64 1
  %65 = add i32 %55, 2
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %66
  %68 = load float, ptr addrspace(1) %67, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %69 = insertelement <3 x float> %64, float %68, i64 2
  %70 = mul i32 %51, 3
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %71
  %73 = load float, ptr addrspace(1) %72, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %74 = insertelement <3 x float> undef, float %73, i64 0
  %75 = add i32 %70, 1
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %76
  %78 = load float, ptr addrspace(1) %77, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %79 = insertelement <3 x float> %74, float %78, i64 1
  %80 = add i32 %70, 2
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %81
  %83 = load float, ptr addrspace(1) %82, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %84 = insertelement <3 x float> %79, float %83, i64 2
  %85 = mul i32 %53, 3
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %86
  %88 = load float, ptr addrspace(1) %87, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %89 = insertelement <3 x float> undef, float %88, i64 0
  %90 = add i32 %85, 1
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %91
  %93 = load float, ptr addrspace(1) %92, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %94 = insertelement <3 x float> %89, float %93, i64 1
  %95 = add i32 %85, 2
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %96
  %98 = load float, ptr addrspace(1) %97, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %99 = insertelement <3 x float> %94, float %98, i64 2
  %100 = mul i32 %54, 3
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %101
  %103 = load float, ptr addrspace(1) %102, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %104 = insertelement <3 x float> undef, float %103, i64 0
  %105 = add i32 %100, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %106
  %108 = load float, ptr addrspace(1) %107, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %109 = insertelement <3 x float> %104, float %108, i64 1
  %110 = add i32 %100, 2
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %111
  %113 = load float, ptr addrspace(1) %112, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %114 = insertelement <3 x float> %109, float %113, i64 2
  %115 = fsub float 1.000000e+00, %38
  %116 = insertelement <3 x float> poison, float %115, i64 0
  %117 = shufflevector <3 x float> %116, <3 x float> poison, <3 x i32> zeroinitializer
  %118 = fsub float 1.000000e+00, %37
  %119 = insertelement <3 x float> poison, float %118, i64 0
  %120 = shufflevector <3 x float> %119, <3 x float> poison, <3 x i32> zeroinitializer
  %121 = insertelement <3 x float> poison, float %37, i64 0
  %122 = shufflevector <3 x float> %121, <3 x float> poison, <3 x i32> zeroinitializer
  %123 = fmul <3 x float> %122, %84
  %124 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %120, <3 x float> %69, <3 x float> %123)
  %125 = insertelement <3 x float> poison, float %38, i64 0
  %126 = shufflevector <3 x float> %125, <3 x float> poison, <3 x i32> zeroinitializer
  %127 = fmul <3 x float> %122, %114
  %128 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %120, <3 x float> %99, <3 x float> %127)
  %129 = fmul <3 x float> %126, %128
  %130 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %117, <3 x float> %124, <3 x float> %129)
  %131 = icmp eq i32 %16, 0
  %132 = mul i32 %8, 3
  %133 = zext i32 %132 to i64
  br i1 %131, label %134, label %139

134:                                              ; preds = %14
  %135 = add i32 %132, 1
  %136 = zext i32 %135 to i64
  %137 = add i32 %132, 2
  %138 = zext i32 %137 to i64
  br label %154

139:                                              ; preds = %14
  %140 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %133
  %141 = load float, ptr addrspace(1) %140, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %142 = insertelement <3 x float> undef, float %141, i64 0
  %143 = add i32 %132, 1
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %144
  %146 = load float, ptr addrspace(1) %145, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %147 = insertelement <3 x float> %142, float %146, i64 1
  %148 = add i32 %132, 2
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %149
  %151 = load float, ptr addrspace(1) %150, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %152 = insertelement <3 x float> %147, float %151, i64 2
  %153 = fadd <3 x float> %130, %152
  br label %154

154:                                              ; preds = %139, %134
  %155 = phi i64 [ %138, %134 ], [ %149, %139 ]
  %156 = phi i64 [ %136, %134 ], [ %144, %139 ]
  %157 = phi <3 x float> [ %130, %134 ], [ %153, %139 ]
  %158 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %133
  %159 = load float, ptr addrspace(1) %158, align 4, !tbaa !38, !alias.scope !44, !noalias !45
  %160 = insertelement <3 x float> undef, float %159, i64 0
  %161 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %156
  %162 = load float, ptr addrspace(1) %161, align 4, !tbaa !38, !alias.scope !44, !noalias !45
  %163 = insertelement <3 x float> %160, float %162, i64 1
  %164 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %155
  %165 = load float, ptr addrspace(1) %164, align 4, !tbaa !38, !alias.scope !44, !noalias !45
  %166 = insertelement <3 x float> %163, float %165, i64 2
  %167 = load float, ptr addrspace(1) %3, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %168 = insertelement <3 x float> undef, float %167, i64 0
  %169 = getelementptr inbounds float, ptr addrspace(1) %3, i64 1
  %170 = load float, ptr addrspace(1) %169, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %171 = insertelement <3 x float> %168, float %170, i64 1
  %172 = getelementptr inbounds float, ptr addrspace(1) %3, i64 2
  %173 = load float, ptr addrspace(1) %172, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %174 = insertelement <3 x float> %171, float %173, i64 2
  %175 = getelementptr inbounds float, ptr addrspace(1) %3, i64 3
  %176 = load float, ptr addrspace(1) %175, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %177 = insertelement <3 x float> undef, float %176, i64 0
  %178 = getelementptr inbounds float, ptr addrspace(1) %3, i64 4
  %179 = load float, ptr addrspace(1) %178, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %180 = insertelement <3 x float> %177, float %179, i64 1
  %181 = getelementptr inbounds float, ptr addrspace(1) %3, i64 5
  %182 = load float, ptr addrspace(1) %181, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %183 = insertelement <3 x float> %180, float %182, i64 2
  %184 = fmul <3 x float> %157, %183
  %185 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %174, <3 x float> %166, <3 x float> %184)
  %186 = extractelement <3 x float> %185, i64 0
  %187 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %133
  store float %186, ptr addrspace(1) %187, align 4, !tbaa !38, !alias.scope !48, !noalias !49
  %188 = extractelement <3 x float> %185, i64 1
  %189 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %156
  store float %188, ptr addrspace(1) %189, align 4, !tbaa !38, !alias.scope !48, !noalias !49
  %190 = extractelement <3 x float> %185, i64 2
  %191 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %155
  store float %190, ptr addrspace(1) %191, align 4, !tbaa !38, !alias.scope !48, !noalias !49
  br label %192

192:                                              ; preds = %154, %7
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.clamp.s.i32(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.convert.s.i32.f.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.floor.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.u.i32(i32) local_unnamed_addr #2

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
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
!15 = !{ptr @spk_halo_up_mix, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"raw"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"acc"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"low"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"ab"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!24 = !{i32 6, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C++ TBAA"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"air-alias-scope-arg(4)"}
!31 = distinct !{!31, !"air-alias-scopes(spk_halo_up_mix)"}
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
!42 = !{!34}
!43 = !{!33, !35, !36, !30, !37}
!44 = !{!33}
!45 = !{!34, !35, !36, !30, !37}
!46 = !{!36}
!47 = !{!33, !34, !35, !30, !37}
!48 = !{!37}
!49 = !{!33, !34, !35, !36, !30}
