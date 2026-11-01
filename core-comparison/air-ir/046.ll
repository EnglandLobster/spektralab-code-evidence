; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/046.bc'
source_filename = "spk_scene_latitude"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define void @spk_scene_latitude(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %3, <3 x i32> noundef %4) local_unnamed_addr #0 {
  %6 = extractelement <3 x i32> %4, i64 0
  %7 = load i32, ptr addrspace(1) %2, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %218

9:                                                ; preds = %5
  %10 = mul i32 %6, 3
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %11
  %13 = load float, ptr addrspace(1) %12, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %14 = add i32 %10, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %15
  %17 = load float, ptr addrspace(1) %16, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %18 = add i32 %10, 2
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %19
  %21 = load float, ptr addrspace(1) %20, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %22 = tail call float @air.fmax.f32(float %13, float 0.000000e+00) #3
  %23 = tail call float @air.fmax.f32(float %17, float 0.000000e+00) #3
  %24 = tail call float @air.fmax.f32(float %21, float 0.000000e+00) #3
  %25 = getelementptr inbounds float, ptr addrspace(1) %1, i64 6
  %26 = load float, ptr addrspace(1) %25, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %27 = tail call i32 @air.convert.u.i32.f.f32(float %26) #3
  switch i32 %27, label %41 [
    i32 1, label %28
    i32 2, label %38
  ]

28:                                               ; preds = %9
  %29 = getelementptr inbounds float, ptr addrspace(1) %1, i64 7
  %30 = load float, ptr addrspace(1) %29, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %31 = getelementptr inbounds float, ptr addrspace(1) %1, i64 8
  %32 = load float, ptr addrspace(1) %31, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %33 = fmul float %23, %32
  %34 = tail call float @llvm.fmuladd.f32(float %30, float %22, float %33)
  %35 = getelementptr inbounds float, ptr addrspace(1) %1, i64 9
  %36 = load float, ptr addrspace(1) %35, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %37 = tail call float @llvm.fmuladd.f32(float %36, float %24, float %34)
  br label %53

38:                                               ; preds = %9
  %39 = tail call float @air.fmax.f32(float %23, float %24) #3
  %40 = tail call float @air.fmax.f32(float %22, float %39) #3
  br label %53

41:                                               ; preds = %9
  %42 = fmul float %23, %23
  %43 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %42)
  %44 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %43)
  %45 = fcmp ogt float %44, 0.000000e+00
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = fmul float %22, %22
  %48 = fmul float %23, %42
  %49 = tail call float @llvm.fmuladd.f32(float %47, float %22, float %48)
  %50 = fmul float %24, %24
  %51 = tail call float @llvm.fmuladd.f32(float %50, float %24, float %49)
  %52 = fdiv float %51, %44
  br label %53

53:                                               ; preds = %46, %41, %38, %28
  %54 = phi float [ %37, %28 ], [ %40, %38 ], [ %52, %46 ], [ 0.000000e+00, %41 ]
  %55 = fcmp ogt float %54, 0.000000e+00
  br i1 %55, label %56, label %210

56:                                               ; preds = %53
  %57 = bitcast float %54 to i32
  %58 = and i32 %57, 2139095040
  %59 = icmp eq i32 %58, 2139095040
  br i1 %59, label %210, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds float, ptr addrspace(1) %1, i64 10
  %62 = load float, ptr addrspace(1) %61, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %63 = tail call float @air.exp2.f32(float -2.400000e+01) #3
  %64 = fmul float %62, %63
  %65 = tail call float @air.fmax.f32(float %54, float %64) #3
  %66 = fdiv float %65, %62
  %67 = tail call float @air.log2.f32(float %66) #3
  %68 = tail call float @air.clamp.f32(float %67, float -2.400000e+01, float 2.400000e+01) #3
  %69 = load float, ptr addrspace(1) %1, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %70 = getelementptr inbounds float, ptr addrspace(1) %1, i64 1
  %71 = load float, ptr addrspace(1) %70, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %72 = getelementptr inbounds float, ptr addrspace(1) %1, i64 2
  %73 = load float, ptr addrspace(1) %72, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %74 = getelementptr inbounds float, ptr addrspace(1) %1, i64 3
  %75 = load float, ptr addrspace(1) %74, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %76 = getelementptr inbounds float, ptr addrspace(1) %1, i64 13
  %77 = load float, ptr addrspace(1) %76, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %78 = fcmp ogt float %77, 0.000000e+00
  br i1 %78, label %79, label %114

79:                                               ; preds = %60
  %80 = getelementptr inbounds float, ptr addrspace(1) %1, i64 11
  %81 = load float, ptr addrspace(1) %80, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %82 = tail call i32 @air.convert.u.i32.f.f32(float %81) #3
  %83 = getelementptr inbounds float, ptr addrspace(1) %1, i64 12
  %84 = load float, ptr addrspace(1) %83, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %85 = tail call i32 @air.convert.u.i32.f.f32(float %84) #3
  %86 = icmp ult i32 %82, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %79
  %88 = urem i32 %6, %82
  %89 = tail call float @air.convert.f.f32.u.i32(i32 %88) #3
  %90 = fadd float %89, 5.000000e-01
  %91 = tail call float @air.convert.f.f32.u.i32(i32 %82) #3
  %92 = fdiv float %90, %91
  br label %102

93:                                               ; preds = %79
  %94 = udiv i32 %6, %82
  %95 = tail call float @air.convert.f.f32.u.i32(i32 %94) #3
  %96 = getelementptr inbounds float, ptr addrspace(1) %1, i64 18
  %97 = load float, ptr addrspace(1) %96, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %98 = fadd float %95, %97
  %99 = fadd float %98, 5.000000e-01
  %100 = tail call float @air.convert.f.f32.u.i32(i32 %85) #3
  %101 = fdiv float %99, %100
  br label %102

102:                                              ; preds = %93, %87
  %103 = phi float [ %92, %87 ], [ %101, %93 ]
  %104 = fcmp ult float %103, %77
  br i1 %104, label %114, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds float, ptr addrspace(1) %1, i64 17
  %107 = getelementptr inbounds float, ptr addrspace(1) %1, i64 16
  %108 = getelementptr inbounds float, ptr addrspace(1) %1, i64 15
  %109 = getelementptr inbounds float, ptr addrspace(1) %1, i64 14
  %110 = load float, ptr addrspace(1) %109, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %111 = load float, ptr addrspace(1) %108, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %112 = load float, ptr addrspace(1) %107, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %113 = load float, ptr addrspace(1) %106, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  br label %114

114:                                              ; preds = %105, %102, %60
  %115 = phi float [ %69, %60 ], [ %110, %105 ], [ %69, %102 ]
  %116 = phi float [ %71, %60 ], [ %111, %105 ], [ %71, %102 ]
  %117 = phi float [ %73, %60 ], [ %112, %105 ], [ %73, %102 ]
  %118 = phi float [ %75, %60 ], [ %113, %105 ], [ %75, %102 ]
  %119 = fcmp ogt float %116, 0.000000e+00
  %120 = fcmp ogt float %68, %115
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %154

122:                                              ; preds = %114
  %123 = fsub float %68, %115
  %124 = getelementptr inbounds float, ptr addrspace(1) %1, i64 4
  %125 = load float, ptr addrspace(1) %124, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %126 = fcmp ogt float %123, 0.000000e+00
  br i1 %126, label %127, label %193

127:                                              ; preds = %122
  %128 = fcmp oeq float %125, 2.000000e+00
  br i1 %128, label %129, label %138

129:                                              ; preds = %127
  %130 = fmul float %123, %123
  %131 = tail call float @llvm.fmuladd.f32(float %116, float %116, float %130) #4
  %132 = tail call float @air.sqrt.f32(float %131) #3
  %133 = fneg float %130
  %134 = fmul float %123, %133
  %135 = fadd float %116, %132
  %136 = fmul float %132, %135
  %137 = fdiv float %134, %136
  br label %193

138:                                              ; preds = %127
  %139 = fcmp oeq float %125, 1.000000e+00
  br i1 %139, label %140, label %145

140:                                              ; preds = %138
  %141 = fneg float %123
  %142 = fmul float %123, %141
  %143 = fadd float %123, %116
  %144 = fdiv float %142, %143
  br label %193

145:                                              ; preds = %138
  %146 = tail call float @air.pow.f32(float %116, float %125) #3
  %147 = tail call float @air.pow.f32(float %123, float %125) #3
  %148 = fadd float %146, %147
  %149 = fdiv float 1.000000e+00, %125
  %150 = tail call float @air.pow.f32(float %148, float %149) #3
  %151 = fdiv float %116, %150
  %152 = fadd float %151, -1.000000e+00
  %153 = fmul float %123, %152
  br label %193

154:                                              ; preds = %114
  %155 = fcmp ogt float %118, 0.000000e+00
  %156 = fcmp olt float %68, %117
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %158, label %193

158:                                              ; preds = %154
  %159 = fsub float %117, %68
  %160 = getelementptr inbounds float, ptr addrspace(1) %1, i64 4
  %161 = load float, ptr addrspace(1) %160, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %162 = fcmp ogt float %159, 0.000000e+00
  br i1 %162, label %163, label %190

163:                                              ; preds = %158
  %164 = fcmp oeq float %161, 2.000000e+00
  br i1 %164, label %165, label %174

165:                                              ; preds = %163
  %166 = fmul float %159, %159
  %167 = tail call float @llvm.fmuladd.f32(float %118, float %118, float %166) #4
  %168 = tail call float @air.sqrt.f32(float %167) #3
  %169 = fneg float %166
  %170 = fmul float %159, %169
  %171 = fadd float %118, %168
  %172 = fmul float %168, %171
  %173 = fdiv float %170, %172
  br label %190

174:                                              ; preds = %163
  %175 = fcmp oeq float %161, 1.000000e+00
  br i1 %175, label %176, label %181

176:                                              ; preds = %174
  %177 = fneg float %159
  %178 = fmul float %159, %177
  %179 = fadd float %159, %118
  %180 = fdiv float %178, %179
  br label %190

181:                                              ; preds = %174
  %182 = tail call float @air.pow.f32(float %118, float %161) #3
  %183 = tail call float @air.pow.f32(float %159, float %161) #3
  %184 = fadd float %182, %183
  %185 = fdiv float 1.000000e+00, %161
  %186 = tail call float @air.pow.f32(float %184, float %185) #3
  %187 = fdiv float %118, %186
  %188 = fadd float %187, -1.000000e+00
  %189 = fmul float %159, %188
  br label %190

190:                                              ; preds = %181, %176, %165, %158
  %191 = phi float [ %173, %165 ], [ %180, %176 ], [ %189, %181 ], [ 0.000000e+00, %158 ]
  %192 = fneg float %191
  br label %193

193:                                              ; preds = %190, %154, %145, %140, %129, %122
  %194 = phi float [ %192, %190 ], [ 0.000000e+00, %154 ], [ %137, %129 ], [ %144, %140 ], [ %153, %145 ], [ 0.000000e+00, %122 ]
  %195 = fcmp ogt float %194, 0.000000e+00
  br i1 %195, label %196, label %204

196:                                              ; preds = %193
  %197 = getelementptr inbounds float, ptr addrspace(1) %1, i64 5
  %198 = load float, ptr addrspace(1) %197, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %199 = fmul float %194, %198
  %200 = fmul float %194, %194
  %201 = tail call float @llvm.fmuladd.f32(float %198, float %198, float %200)
  %202 = tail call float @air.sqrt.f32(float %201) #3
  %203 = fdiv float %199, %202
  br label %204

204:                                              ; preds = %196, %193
  %205 = phi float [ %203, %196 ], [ %194, %193 ]
  %206 = tail call float @air.exp2.f32(float %205) #3
  %207 = tail call float @air.exp2.f32(float -3.000000e+01) #3
  %208 = tail call float @air.exp2.f32(float 3.000000e+01) #3
  %209 = tail call float @air.clamp.f32(float %206, float %207, float %208) #3
  br label %210

210:                                              ; preds = %204, %56, %53
  %211 = phi float [ %209, %204 ], [ 1.000000e+00, %56 ], [ 1.000000e+00, %53 ]
  %212 = fmul float %13, %211
  %213 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %11
  store float %212, ptr addrspace(1) %213, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %214 = fmul float %17, %211
  %215 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %15
  store float %214, ptr addrspace(1) %215, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %216 = fmul float %21, %211
  %217 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %19
  store float %216, ptr addrspace(1) %217, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  br label %218

218:                                              ; preds = %210, %5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.clamp.f32(float, float, float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.exp2.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.sqrt.f32(float) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.pow.f32(float, float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.u.i32(i32) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.convert.u.i32.f.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.log2.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fmax.f32(float, float) local_unnamed_addr #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
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
!15 = !{ptr @spk_scene_latitude, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"rgb"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"p"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"n"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!22 = !{i32 4, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C++ TBAA"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"air-alias-scope-arg(2)"}
!29 = distinct !{!29, !"air-alias-scopes(spk_scene_latitude)"}
!30 = !{!31, !32, !33}
!31 = distinct !{!31, !29, !"air-alias-scope-arg(0)"}
!32 = distinct !{!32, !29, !"air-alias-scope-arg(1)"}
!33 = distinct !{!33, !29, !"air-alias-scope-arg(3)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !25, i64 0}
!36 = !{!31}
!37 = !{!32, !28, !33}
!38 = !{!32}
!39 = !{!31, !28, !33}
!40 = !{!33}
!41 = !{!31, !32, !28}
