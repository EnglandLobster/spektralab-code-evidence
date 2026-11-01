; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/004.bc'
source_filename = "spk_iir_df_acc"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_iir_df_acc(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %4, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %5, ptr addrspace(1) noundef captures(none) "air-buffer-no-alias" %6, <3 x i32> noundef %7) local_unnamed_addr #0 {
  %9 = extractelement <3 x i32> %7, i64 0
  %10 = load i32, ptr addrspace(1) %5, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %11 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 1
  %12 = load i32, ptr addrspace(1) %11, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %13 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 2
  %14 = load i32, ptr addrspace(1) %13, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %15 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 3
  %16 = load i32, ptr addrspace(1) %15, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %17 = icmp eq i32 %16, 0
  %18 = mul i32 %12, 3
  %19 = mul i32 %10, 3
  %20 = select i1 %17, i32 %18, i32 %19
  %21 = icmp ult i32 %9, %20
  br i1 %21, label %22, label %334

22:                                               ; preds = %8
  %23 = urem i32 %9, 3
  %24 = select i1 %17, i32 %10, i32 %12
  %25 = select i1 %17, i32 %18, i32 3
  %26 = select i1 %17, i32 1, i32 %12
  %27 = urem i32 %9, 3
  %28 = sub i32 %9, %27
  %29 = mul i32 %28, %26
  %30 = add i32 %29, %23
  %31 = shl nuw nsw i32 %23, 3
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %32
  %34 = load float, ptr addrspace(1) %33, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %35 = or i32 %31, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %36
  %38 = load float, ptr addrspace(1) %37, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %39 = or i32 %31, 2
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %40
  %42 = load float, ptr addrspace(1) %41, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %43 = or i32 %31, 3
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %44
  %46 = load float, ptr addrspace(1) %45, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %47 = or i32 %31, 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %48
  %50 = load float, ptr addrspace(1) %49, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %51 = or i32 %31, 5
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %52
  %54 = load float, ptr addrspace(1) %53, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %55 = or i32 %31, 6
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %56
  %58 = load float, ptr addrspace(1) %57, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %59 = or i32 %31, 7
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %60
  %62 = load float, ptr addrspace(1) %61, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %63 = zext i32 %23 to i64
  %64 = getelementptr inbounds i32, ptr addrspace(1) %2, i64 %63
  %65 = load i32, ptr addrspace(1) %64, align 4, !tbaa !26, !alias.scope !44, !noalias !45
  %66 = icmp eq i32 %65, 0
  %67 = icmp eq i32 %24, 0
  br i1 %66, label %68, label %92

68:                                               ; preds = %22
  br i1 %67, label %334, label %69

69:                                               ; preds = %68
  %70 = icmp eq i32 %14, 0
  %71 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %63
  br label %72

72:                                               ; preds = %87, %69
  %73 = phi i32 [ 0, %69 ], [ %90, %87 ]
  %74 = mul i32 %73, %25
  %75 = add i32 %74, %30
  %76 = zext i32 %75 to i64
  br i1 %70, label %84, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %76
  %79 = load float, ptr addrspace(1) %78, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %80 = load float, ptr addrspace(1) %71, align 4, !tbaa !40, !alias.scope !48, !noalias !49
  %81 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %76
  %82 = load float, ptr addrspace(1) %81, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %83 = tail call float @llvm.fmuladd.f32(float %80, float %82, float %79)
  br label %87

84:                                               ; preds = %72
  %85 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %76
  %86 = load float, ptr addrspace(1) %85, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  br label %87

87:                                               ; preds = %84, %77
  %88 = phi float [ %86, %84 ], [ %83, %77 ]
  %89 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %76
  store float %88, ptr addrspace(1) %89, align 4, !tbaa !40, !alias.scope !52, !noalias !53
  %90 = add nuw i32 %73, 1
  %91 = icmp eq i32 %90, %24
  br i1 %91, label %334, label %72, !llvm.loop !54

92:                                               ; preds = %22
  br i1 %67, label %97, label %93

93:                                               ; preds = %92
  %94 = zext i32 %30 to i64
  %95 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %94
  %96 = load float, ptr addrspace(1) %95, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  br label %108

97:                                               ; preds = %108, %92
  %98 = add i32 %24, -1
  %99 = icmp sgt i32 %98, -1
  br i1 %99, label %100, label %334

100:                                              ; preds = %97
  %101 = mul i32 %98, %25
  %102 = add i32 %30, %101
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %103
  %105 = load float, ptr addrspace(1) %104, align 4, !tbaa !40, !alias.scope !52, !noalias !53
  %106 = icmp eq i32 %14, 0
  %107 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %63
  br label %218

108:                                              ; preds = %108, %93
  %109 = phi float [ %214, %108 ], [ 0.000000e+00, %93 ]
  %110 = phi float [ %212, %108 ], [ %96, %93 ]
  %111 = phi float [ %109, %108 ], [ 0.000000e+00, %93 ]
  %112 = phi float [ %110, %108 ], [ %96, %93 ]
  %113 = phi float [ %111, %108 ], [ 0.000000e+00, %93 ]
  %114 = phi float [ %112, %108 ], [ %96, %93 ]
  %115 = phi i32 [ %216, %108 ], [ 0, %93 ]
  %116 = mul i32 %115, %25
  %117 = add i32 %116, %30
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %118
  %120 = load float, ptr addrspace(1) %119, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %121 = fmul float %34, %120
  %122 = fneg float %121
  %123 = tail call float @air.fma.f32(float %34, float %120, float %122) #3
  %124 = tail call float @llvm.fmuladd.f32(float %38, float %120, float %123) #4
  %125 = fadd float %121, %124
  %126 = fsub float %125, %121
  %127 = fsub float %124, %126
  %128 = fmul float %42, %110
  %129 = fneg float %128
  %130 = tail call float @air.fma.f32(float %42, float %110, float %129) #3
  %131 = fmul float %46, %110
  %132 = tail call float @llvm.fmuladd.f32(float %42, float %109, float %131) #4
  %133 = fadd float %132, %130
  %134 = fadd float %128, %133
  %135 = fsub float %134, %128
  %136 = fsub float %133, %135
  %137 = fadd float %125, %134
  %138 = fsub float %137, %125
  %139 = fsub float %137, %138
  %140 = fsub float %125, %139
  %141 = fsub float %134, %138
  %142 = fadd float %141, %140
  %143 = fadd float %127, %136
  %144 = fsub float %143, %127
  %145 = fsub float %143, %144
  %146 = fsub float %127, %145
  %147 = fsub float %136, %144
  %148 = fadd float %147, %146
  %149 = fadd float %143, %142
  %150 = fadd float %137, %149
  %151 = fsub float %150, %137
  %152 = fsub float %149, %151
  %153 = fadd float %148, %152
  %154 = fadd float %150, %153
  %155 = fsub float %154, %150
  %156 = fsub float %153, %155
  %157 = fmul float %50, %112
  %158 = fneg float %157
  %159 = tail call float @air.fma.f32(float %50, float %112, float %158) #3
  %160 = fmul float %54, %112
  %161 = tail call float @llvm.fmuladd.f32(float %50, float %111, float %160) #4
  %162 = fadd float %161, %159
  %163 = fadd float %157, %162
  %164 = fsub float %163, %157
  %165 = fsub float %162, %164
  %166 = fadd float %163, %154
  %167 = fsub float %166, %154
  %168 = fsub float %166, %167
  %169 = fsub float %154, %168
  %170 = fsub float %163, %167
  %171 = fadd float %170, %169
  %172 = fadd float %165, %156
  %173 = fsub float %172, %156
  %174 = fsub float %172, %173
  %175 = fsub float %156, %174
  %176 = fsub float %165, %173
  %177 = fadd float %176, %175
  %178 = fadd float %172, %171
  %179 = fadd float %166, %178
  %180 = fsub float %179, %166
  %181 = fsub float %178, %180
  %182 = fadd float %177, %181
  %183 = fadd float %179, %182
  %184 = fsub float %183, %179
  %185 = fsub float %182, %184
  %186 = fmul float %58, %114
  %187 = fneg float %186
  %188 = tail call float @air.fma.f32(float %58, float %114, float %187) #3
  %189 = fmul float %62, %114
  %190 = tail call float @llvm.fmuladd.f32(float %58, float %113, float %189) #4
  %191 = fadd float %190, %188
  %192 = fadd float %186, %191
  %193 = fsub float %192, %186
  %194 = fsub float %191, %193
  %195 = fadd float %192, %183
  %196 = fsub float %195, %183
  %197 = fsub float %195, %196
  %198 = fsub float %183, %197
  %199 = fsub float %192, %196
  %200 = fadd float %199, %198
  %201 = fadd float %194, %185
  %202 = fsub float %201, %185
  %203 = fsub float %201, %202
  %204 = fsub float %185, %203
  %205 = fsub float %194, %202
  %206 = fadd float %205, %204
  %207 = fadd float %201, %200
  %208 = fadd float %195, %207
  %209 = fsub float %208, %195
  %210 = fsub float %207, %209
  %211 = fadd float %206, %210
  %212 = fadd float %208, %211
  %213 = fsub float %212, %208
  %214 = fsub float %211, %213
  %215 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %118
  store float %212, ptr addrspace(1) %215, align 4, !tbaa !40, !alias.scope !52, !noalias !53
  %216 = add nuw i32 %115, 1
  %217 = icmp eq i32 %216, %24
  br i1 %217, label %97, label %108, !llvm.loop !56

218:                                              ; preds = %330, %100
  %219 = phi float [ 0.000000e+00, %100 ], [ %324, %330 ]
  %220 = phi float [ %105, %100 ], [ %322, %330 ]
  %221 = phi float [ 0.000000e+00, %100 ], [ %219, %330 ]
  %222 = phi float [ %105, %100 ], [ %220, %330 ]
  %223 = phi float [ 0.000000e+00, %100 ], [ %221, %330 ]
  %224 = phi float [ %105, %100 ], [ %222, %330 ]
  %225 = phi i32 [ %98, %100 ], [ %332, %330 ]
  %226 = mul i32 %225, %25
  %227 = add i32 %226, %30
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %228
  %230 = load float, ptr addrspace(1) %229, align 4, !tbaa !40, !alias.scope !52, !noalias !53
  %231 = fmul float %34, %230
  %232 = fneg float %231
  %233 = tail call float @air.fma.f32(float %34, float %230, float %232) #3
  %234 = tail call float @llvm.fmuladd.f32(float %38, float %230, float %233) #4
  %235 = fadd float %231, %234
  %236 = fsub float %235, %231
  %237 = fsub float %234, %236
  %238 = fmul float %42, %220
  %239 = fneg float %238
  %240 = tail call float @air.fma.f32(float %42, float %220, float %239) #3
  %241 = fmul float %46, %220
  %242 = tail call float @llvm.fmuladd.f32(float %42, float %219, float %241) #4
  %243 = fadd float %242, %240
  %244 = fadd float %238, %243
  %245 = fsub float %244, %238
  %246 = fsub float %243, %245
  %247 = fadd float %235, %244
  %248 = fsub float %247, %235
  %249 = fsub float %247, %248
  %250 = fsub float %235, %249
  %251 = fsub float %244, %248
  %252 = fadd float %251, %250
  %253 = fadd float %237, %246
  %254 = fsub float %253, %237
  %255 = fsub float %253, %254
  %256 = fsub float %237, %255
  %257 = fsub float %246, %254
  %258 = fadd float %257, %256
  %259 = fadd float %253, %252
  %260 = fadd float %247, %259
  %261 = fsub float %260, %247
  %262 = fsub float %259, %261
  %263 = fadd float %258, %262
  %264 = fadd float %260, %263
  %265 = fsub float %264, %260
  %266 = fsub float %263, %265
  %267 = fmul float %50, %222
  %268 = fneg float %267
  %269 = tail call float @air.fma.f32(float %50, float %222, float %268) #3
  %270 = fmul float %54, %222
  %271 = tail call float @llvm.fmuladd.f32(float %50, float %221, float %270) #4
  %272 = fadd float %271, %269
  %273 = fadd float %267, %272
  %274 = fsub float %273, %267
  %275 = fsub float %272, %274
  %276 = fadd float %273, %264
  %277 = fsub float %276, %264
  %278 = fsub float %276, %277
  %279 = fsub float %264, %278
  %280 = fsub float %273, %277
  %281 = fadd float %280, %279
  %282 = fadd float %275, %266
  %283 = fsub float %282, %266
  %284 = fsub float %282, %283
  %285 = fsub float %266, %284
  %286 = fsub float %275, %283
  %287 = fadd float %286, %285
  %288 = fadd float %282, %281
  %289 = fadd float %276, %288
  %290 = fsub float %289, %276
  %291 = fsub float %288, %290
  %292 = fadd float %287, %291
  %293 = fadd float %289, %292
  %294 = fsub float %293, %289
  %295 = fsub float %292, %294
  %296 = fmul float %58, %224
  %297 = fneg float %296
  %298 = tail call float @air.fma.f32(float %58, float %224, float %297) #3
  %299 = fmul float %62, %224
  %300 = tail call float @llvm.fmuladd.f32(float %58, float %223, float %299) #4
  %301 = fadd float %300, %298
  %302 = fadd float %296, %301
  %303 = fsub float %302, %296
  %304 = fsub float %301, %303
  %305 = fadd float %302, %293
  %306 = fsub float %305, %293
  %307 = fsub float %305, %306
  %308 = fsub float %293, %307
  %309 = fsub float %302, %306
  %310 = fadd float %309, %308
  %311 = fadd float %304, %295
  %312 = fsub float %311, %295
  %313 = fsub float %311, %312
  %314 = fsub float %295, %313
  %315 = fsub float %304, %312
  %316 = fadd float %315, %314
  %317 = fadd float %311, %310
  %318 = fadd float %305, %317
  %319 = fsub float %318, %305
  %320 = fsub float %317, %319
  %321 = fadd float %316, %320
  %322 = fadd float %318, %321
  %323 = fsub float %322, %318
  %324 = fsub float %321, %323
  br i1 %106, label %330, label %325

325:                                              ; preds = %218
  %326 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %228
  %327 = load float, ptr addrspace(1) %326, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %328 = load float, ptr addrspace(1) %107, align 4, !tbaa !40, !alias.scope !48, !noalias !49
  %329 = tail call float @llvm.fmuladd.f32(float %328, float %322, float %327)
  br label %330

330:                                              ; preds = %325, %218
  %331 = phi float [ %329, %325 ], [ %322, %218 ]
  store float %331, ptr addrspace(1) %229, align 4, !tbaa !40, !alias.scope !52, !noalias !53
  %332 = add nsw i32 %225, -1
  %333 = icmp eq i32 %225, 0
  br i1 %333, label %334, label %218, !llvm.loop !57

334:                                              ; preds = %330, %97, %87, %68, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fma.f32(float, float, float) local_unnamed_addr #2

attributes #0 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) }
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
!15 = !{ptr @spk_iir_df_acc, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"img"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"coef"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"act"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"accin"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"wt"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!24 = !{i32 6, !"air.buffer", !"air.location_index", i32 6, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!25 = !{i32 7, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C++ TBAA"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"air-alias-scope-arg(5)"}
!32 = distinct !{!32, !"air-alias-scopes(spk_iir_df_acc)"}
!33 = !{!34, !35, !36, !37, !38, !39}
!34 = distinct !{!34, !32, !"air-alias-scope-arg(0)"}
!35 = distinct !{!35, !32, !"air-alias-scope-arg(1)"}
!36 = distinct !{!36, !32, !"air-alias-scope-arg(2)"}
!37 = distinct !{!37, !32, !"air-alias-scope-arg(3)"}
!38 = distinct !{!38, !32, !"air-alias-scope-arg(4)"}
!39 = distinct !{!39, !32, !"air-alias-scope-arg(6)"}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !28, i64 0}
!42 = !{!35}
!43 = !{!34, !36, !37, !38, !31, !39}
!44 = !{!36}
!45 = !{!34, !35, !37, !38, !31, !39}
!46 = !{!37}
!47 = !{!34, !35, !36, !38, !31, !39}
!48 = !{!38}
!49 = !{!34, !35, !36, !37, !31, !39}
!50 = !{!34}
!51 = !{!35, !36, !37, !38, !31, !39}
!52 = !{!39}
!53 = !{!34, !35, !36, !37, !38, !31}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = distinct !{!56, !55}
!57 = distinct !{!57, !55}
