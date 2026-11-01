; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/006.bc'
source_filename = "spk_iir_df_acc_carry"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_iir_df_acc_carry(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %4, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %5, ptr addrspace(1) noundef captures(none) "air-buffer-no-alias" %6, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %7, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %8, <3 x i32> noundef %9) local_unnamed_addr #0 {
  %11 = extractelement <3 x i32> %9, i64 0
  %12 = load i32, ptr addrspace(1) %5, align 4, !tbaa !28, !alias.scope !32, !noalias !35
  %13 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 1
  %14 = load i32, ptr addrspace(1) %13, align 4, !tbaa !28, !alias.scope !32, !noalias !35
  %15 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 2
  %16 = load i32, ptr addrspace(1) %15, align 4, !tbaa !28, !alias.scope !32, !noalias !35
  %17 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 3
  %18 = load i32, ptr addrspace(1) %17, align 4, !tbaa !28, !alias.scope !32, !noalias !35
  %19 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 4
  %20 = load i32, ptr addrspace(1) %19, align 4, !tbaa !28, !alias.scope !32, !noalias !35
  %21 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 5
  %22 = load i32, ptr addrspace(1) %21, align 4, !tbaa !28, !alias.scope !32, !noalias !35
  %23 = mul i32 %14, 3
  %24 = icmp ult i32 %11, %23
  br i1 %24, label %25, label %374

25:                                               ; preds = %10
  %26 = urem i32 %11, 3
  %27 = shl nuw nsw i32 %26, 3
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %28
  %30 = load float, ptr addrspace(1) %29, align 4, !tbaa !44, !alias.scope !46, !noalias !47
  %31 = or i32 %27, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %32
  %34 = load float, ptr addrspace(1) %33, align 4, !tbaa !44, !alias.scope !46, !noalias !47
  %35 = or i32 %27, 2
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %36
  %38 = load float, ptr addrspace(1) %37, align 4, !tbaa !44, !alias.scope !46, !noalias !47
  %39 = or i32 %27, 3
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %40
  %42 = load float, ptr addrspace(1) %41, align 4, !tbaa !44, !alias.scope !46, !noalias !47
  %43 = or i32 %27, 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %44
  %46 = load float, ptr addrspace(1) %45, align 4, !tbaa !44, !alias.scope !46, !noalias !47
  %47 = or i32 %27, 5
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %48
  %50 = load float, ptr addrspace(1) %49, align 4, !tbaa !44, !alias.scope !46, !noalias !47
  %51 = or i32 %27, 6
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %52
  %54 = load float, ptr addrspace(1) %53, align 4, !tbaa !44, !alias.scope !46, !noalias !47
  %55 = or i32 %27, 7
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %56
  %58 = load float, ptr addrspace(1) %57, align 4, !tbaa !44, !alias.scope !46, !noalias !47
  %59 = zext i32 %26 to i64
  %60 = getelementptr inbounds i32, ptr addrspace(1) %2, i64 %59
  %61 = load i32, ptr addrspace(1) %60, align 4, !tbaa !28, !alias.scope !48, !noalias !49
  %62 = icmp eq i32 %61, 0
  %63 = icmp eq i32 %12, 0
  br i1 %62, label %64, label %88

64:                                               ; preds = %25
  br i1 %63, label %374, label %65

65:                                               ; preds = %64
  %66 = icmp eq i32 %16, 0
  %67 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %59
  br label %68

68:                                               ; preds = %83, %65
  %69 = phi i32 [ 0, %65 ], [ %86, %83 ]
  %70 = mul i32 %69, %23
  %71 = add i32 %70, %11
  %72 = zext i32 %71 to i64
  br i1 %66, label %80, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %72
  %75 = load float, ptr addrspace(1) %74, align 4, !tbaa !44, !alias.scope !50, !noalias !51
  %76 = load float, ptr addrspace(1) %67, align 4, !tbaa !44, !alias.scope !52, !noalias !53
  %77 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %72
  %78 = load float, ptr addrspace(1) %77, align 4, !tbaa !44, !alias.scope !54, !noalias !55
  %79 = tail call float @llvm.fmuladd.f32(float %76, float %78, float %75)
  br label %83

80:                                               ; preds = %68
  %81 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %72
  %82 = load float, ptr addrspace(1) %81, align 4, !tbaa !44, !alias.scope !54, !noalias !55
  br label %83

83:                                               ; preds = %80, %73
  %84 = phi float [ %82, %80 ], [ %79, %73 ]
  %85 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %72
  store float %84, ptr addrspace(1) %85, align 4, !tbaa !44, !alias.scope !56, !noalias !57
  %86 = add nuw i32 %69, 1
  %87 = icmp eq i32 %86, %12
  br i1 %87, label %374, label %68, !llvm.loop !58

88:                                               ; preds = %25
  br i1 %63, label %118, label %89

89:                                               ; preds = %88
  %90 = zext i32 %11 to i64
  %91 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %90
  %92 = load float, ptr addrspace(1) %91, align 4, !tbaa !44, !alias.scope !54, !noalias !55
  %93 = icmp ne i32 %22, 0
  %94 = mul i32 %11, 6
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds float, ptr addrspace(1) %7, i64 %95
  %97 = or i32 %94, 1
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds float, ptr addrspace(1) %7, i64 %98
  %100 = add i32 %94, 2
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds float, ptr addrspace(1) %7, i64 %101
  %103 = add i32 %94, 3
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds float, ptr addrspace(1) %7, i64 %104
  %106 = add i32 %94, 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds float, ptr addrspace(1) %7, i64 %107
  %109 = add i32 %94, 5
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds float, ptr addrspace(1) %7, i64 %110
  %112 = getelementptr inbounds float, ptr addrspace(1) %8, i64 %95
  %113 = getelementptr inbounds float, ptr addrspace(1) %8, i64 %98
  %114 = getelementptr inbounds float, ptr addrspace(1) %8, i64 %101
  %115 = getelementptr inbounds float, ptr addrspace(1) %8, i64 %104
  %116 = getelementptr inbounds float, ptr addrspace(1) %8, i64 %107
  %117 = getelementptr inbounds float, ptr addrspace(1) %8, i64 %110
  br label %129

118:                                              ; preds = %256, %88
  %119 = add i32 %12, -1
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %121, label %374

121:                                              ; preds = %118
  %122 = mul i32 %23, %119
  %123 = add i32 %122, %11
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %124
  %126 = load float, ptr addrspace(1) %125, align 4, !tbaa !44, !alias.scope !56, !noalias !57
  %127 = icmp eq i32 %16, 0
  %128 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %59
  br label %258

129:                                              ; preds = %256, %89
  %130 = phi float [ 0.000000e+00, %89 ], [ %251, %256 ]
  %131 = phi float [ %92, %89 ], [ %249, %256 ]
  %132 = phi float [ 0.000000e+00, %89 ], [ %152, %256 ]
  %133 = phi float [ %92, %89 ], [ %151, %256 ]
  %134 = phi float [ 0.000000e+00, %89 ], [ %150, %256 ]
  %135 = phi float [ %92, %89 ], [ %149, %256 ]
  %136 = phi i32 [ 0, %89 ], [ %253, %256 ]
  %137 = icmp eq i32 %136, %18
  %138 = select i1 %93, i1 %137, i1 false
  br i1 %138, label %139, label %146

139:                                              ; preds = %129
  %140 = load float, ptr addrspace(1) %96, align 4, !tbaa !44, !alias.scope !60, !noalias !61
  %141 = load float, ptr addrspace(1) %99, align 4, !tbaa !44, !alias.scope !60, !noalias !61
  %142 = load float, ptr addrspace(1) %102, align 4, !tbaa !44, !alias.scope !60, !noalias !61
  %143 = load float, ptr addrspace(1) %105, align 4, !tbaa !44, !alias.scope !60, !noalias !61
  %144 = load float, ptr addrspace(1) %108, align 4, !tbaa !44, !alias.scope !60, !noalias !61
  %145 = load float, ptr addrspace(1) %111, align 4, !tbaa !44, !alias.scope !60, !noalias !61
  br label %146

146:                                              ; preds = %139, %129
  %147 = phi float [ %144, %139 ], [ %135, %129 ]
  %148 = phi float [ %145, %139 ], [ %134, %129 ]
  %149 = phi float [ %142, %139 ], [ %133, %129 ]
  %150 = phi float [ %143, %139 ], [ %132, %129 ]
  %151 = phi float [ %140, %139 ], [ %131, %129 ]
  %152 = phi float [ %141, %139 ], [ %130, %129 ]
  %153 = mul i32 %136, %23
  %154 = add i32 %153, %11
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %155
  %157 = load float, ptr addrspace(1) %156, align 4, !tbaa !44, !alias.scope !54, !noalias !55
  %158 = fmul float %30, %157
  %159 = fneg float %158
  %160 = tail call float @air.fma.f32(float %30, float %157, float %159) #3
  %161 = tail call float @llvm.fmuladd.f32(float %34, float %157, float %160) #4
  %162 = fadd float %158, %161
  %163 = fsub float %162, %158
  %164 = fsub float %161, %163
  %165 = fmul float %38, %151
  %166 = fneg float %165
  %167 = tail call float @air.fma.f32(float %38, float %151, float %166) #3
  %168 = fmul float %42, %151
  %169 = tail call float @llvm.fmuladd.f32(float %38, float %152, float %168) #4
  %170 = fadd float %169, %167
  %171 = fadd float %165, %170
  %172 = fsub float %171, %165
  %173 = fsub float %170, %172
  %174 = fadd float %162, %171
  %175 = fsub float %174, %162
  %176 = fsub float %174, %175
  %177 = fsub float %162, %176
  %178 = fsub float %171, %175
  %179 = fadd float %178, %177
  %180 = fadd float %164, %173
  %181 = fsub float %180, %164
  %182 = fsub float %180, %181
  %183 = fsub float %164, %182
  %184 = fsub float %173, %181
  %185 = fadd float %184, %183
  %186 = fadd float %180, %179
  %187 = fadd float %174, %186
  %188 = fsub float %187, %174
  %189 = fsub float %186, %188
  %190 = fadd float %185, %189
  %191 = fadd float %187, %190
  %192 = fsub float %191, %187
  %193 = fsub float %190, %192
  %194 = fmul float %46, %149
  %195 = fneg float %194
  %196 = tail call float @air.fma.f32(float %46, float %149, float %195) #3
  %197 = fmul float %50, %149
  %198 = tail call float @llvm.fmuladd.f32(float %46, float %150, float %197) #4
  %199 = fadd float %198, %196
  %200 = fadd float %194, %199
  %201 = fsub float %200, %194
  %202 = fsub float %199, %201
  %203 = fadd float %200, %191
  %204 = fsub float %203, %191
  %205 = fsub float %203, %204
  %206 = fsub float %191, %205
  %207 = fsub float %200, %204
  %208 = fadd float %207, %206
  %209 = fadd float %202, %193
  %210 = fsub float %209, %193
  %211 = fsub float %209, %210
  %212 = fsub float %193, %211
  %213 = fsub float %202, %210
  %214 = fadd float %213, %212
  %215 = fadd float %209, %208
  %216 = fadd float %203, %215
  %217 = fsub float %216, %203
  %218 = fsub float %215, %217
  %219 = fadd float %214, %218
  %220 = fadd float %216, %219
  %221 = fsub float %220, %216
  %222 = fsub float %219, %221
  %223 = fmul float %54, %147
  %224 = fneg float %223
  %225 = tail call float @air.fma.f32(float %54, float %147, float %224) #3
  %226 = fmul float %58, %147
  %227 = tail call float @llvm.fmuladd.f32(float %54, float %148, float %226) #4
  %228 = fadd float %227, %225
  %229 = fadd float %223, %228
  %230 = fsub float %229, %223
  %231 = fsub float %228, %230
  %232 = fadd float %229, %220
  %233 = fsub float %232, %220
  %234 = fsub float %232, %233
  %235 = fsub float %220, %234
  %236 = fsub float %229, %233
  %237 = fadd float %236, %235
  %238 = fadd float %231, %222
  %239 = fsub float %238, %222
  %240 = fsub float %238, %239
  %241 = fsub float %222, %240
  %242 = fsub float %231, %239
  %243 = fadd float %242, %241
  %244 = fadd float %238, %237
  %245 = fadd float %232, %244
  %246 = fsub float %245, %232
  %247 = fsub float %244, %246
  %248 = fadd float %243, %247
  %249 = fadd float %245, %248
  %250 = fsub float %249, %245
  %251 = fsub float %248, %250
  %252 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %155
  store float %249, ptr addrspace(1) %252, align 4, !tbaa !44, !alias.scope !56, !noalias !57
  %253 = add nuw i32 %136, 1
  %254 = icmp eq i32 %253, %20
  br i1 %254, label %255, label %256

255:                                              ; preds = %146
  store float %249, ptr addrspace(1) %112, align 4, !tbaa !44, !alias.scope !62, !noalias !63
  store float %251, ptr addrspace(1) %113, align 4, !tbaa !44, !alias.scope !62, !noalias !63
  store float %151, ptr addrspace(1) %114, align 4, !tbaa !44, !alias.scope !62, !noalias !63
  store float %152, ptr addrspace(1) %115, align 4, !tbaa !44, !alias.scope !62, !noalias !63
  store float %149, ptr addrspace(1) %116, align 4, !tbaa !44, !alias.scope !62, !noalias !63
  store float %150, ptr addrspace(1) %117, align 4, !tbaa !44, !alias.scope !62, !noalias !63
  br label %256

256:                                              ; preds = %255, %146
  %257 = icmp eq i32 %253, %12
  br i1 %257, label %118, label %129, !llvm.loop !64

258:                                              ; preds = %370, %121
  %259 = phi float [ 0.000000e+00, %121 ], [ %364, %370 ]
  %260 = phi float [ %126, %121 ], [ %362, %370 ]
  %261 = phi float [ 0.000000e+00, %121 ], [ %259, %370 ]
  %262 = phi float [ %126, %121 ], [ %260, %370 ]
  %263 = phi float [ 0.000000e+00, %121 ], [ %261, %370 ]
  %264 = phi float [ %126, %121 ], [ %262, %370 ]
  %265 = phi i32 [ %119, %121 ], [ %372, %370 ]
  %266 = mul i32 %265, %23
  %267 = add i32 %266, %11
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %268
  %270 = load float, ptr addrspace(1) %269, align 4, !tbaa !44, !alias.scope !56, !noalias !57
  %271 = fmul float %30, %270
  %272 = fneg float %271
  %273 = tail call float @air.fma.f32(float %30, float %270, float %272) #3
  %274 = tail call float @llvm.fmuladd.f32(float %34, float %270, float %273) #4
  %275 = fadd float %271, %274
  %276 = fsub float %275, %271
  %277 = fsub float %274, %276
  %278 = fmul float %38, %260
  %279 = fneg float %278
  %280 = tail call float @air.fma.f32(float %38, float %260, float %279) #3
  %281 = fmul float %42, %260
  %282 = tail call float @llvm.fmuladd.f32(float %38, float %259, float %281) #4
  %283 = fadd float %282, %280
  %284 = fadd float %278, %283
  %285 = fsub float %284, %278
  %286 = fsub float %283, %285
  %287 = fadd float %275, %284
  %288 = fsub float %287, %275
  %289 = fsub float %287, %288
  %290 = fsub float %275, %289
  %291 = fsub float %284, %288
  %292 = fadd float %291, %290
  %293 = fadd float %277, %286
  %294 = fsub float %293, %277
  %295 = fsub float %293, %294
  %296 = fsub float %277, %295
  %297 = fsub float %286, %294
  %298 = fadd float %297, %296
  %299 = fadd float %293, %292
  %300 = fadd float %287, %299
  %301 = fsub float %300, %287
  %302 = fsub float %299, %301
  %303 = fadd float %298, %302
  %304 = fadd float %300, %303
  %305 = fsub float %304, %300
  %306 = fsub float %303, %305
  %307 = fmul float %46, %262
  %308 = fneg float %307
  %309 = tail call float @air.fma.f32(float %46, float %262, float %308) #3
  %310 = fmul float %50, %262
  %311 = tail call float @llvm.fmuladd.f32(float %46, float %261, float %310) #4
  %312 = fadd float %311, %309
  %313 = fadd float %307, %312
  %314 = fsub float %313, %307
  %315 = fsub float %312, %314
  %316 = fadd float %313, %304
  %317 = fsub float %316, %304
  %318 = fsub float %316, %317
  %319 = fsub float %304, %318
  %320 = fsub float %313, %317
  %321 = fadd float %320, %319
  %322 = fadd float %315, %306
  %323 = fsub float %322, %306
  %324 = fsub float %322, %323
  %325 = fsub float %306, %324
  %326 = fsub float %315, %323
  %327 = fadd float %326, %325
  %328 = fadd float %322, %321
  %329 = fadd float %316, %328
  %330 = fsub float %329, %316
  %331 = fsub float %328, %330
  %332 = fadd float %327, %331
  %333 = fadd float %329, %332
  %334 = fsub float %333, %329
  %335 = fsub float %332, %334
  %336 = fmul float %54, %264
  %337 = fneg float %336
  %338 = tail call float @air.fma.f32(float %54, float %264, float %337) #3
  %339 = fmul float %58, %264
  %340 = tail call float @llvm.fmuladd.f32(float %54, float %263, float %339) #4
  %341 = fadd float %340, %338
  %342 = fadd float %336, %341
  %343 = fsub float %342, %336
  %344 = fsub float %341, %343
  %345 = fadd float %342, %333
  %346 = fsub float %345, %333
  %347 = fsub float %345, %346
  %348 = fsub float %333, %347
  %349 = fsub float %342, %346
  %350 = fadd float %349, %348
  %351 = fadd float %344, %335
  %352 = fsub float %351, %335
  %353 = fsub float %351, %352
  %354 = fsub float %335, %353
  %355 = fsub float %344, %352
  %356 = fadd float %355, %354
  %357 = fadd float %351, %350
  %358 = fadd float %345, %357
  %359 = fsub float %358, %345
  %360 = fsub float %357, %359
  %361 = fadd float %356, %360
  %362 = fadd float %358, %361
  %363 = fsub float %362, %358
  %364 = fsub float %361, %363
  br i1 %127, label %370, label %365

365:                                              ; preds = %258
  %366 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %268
  %367 = load float, ptr addrspace(1) %366, align 4, !tbaa !44, !alias.scope !50, !noalias !51
  %368 = load float, ptr addrspace(1) %128, align 4, !tbaa !44, !alias.scope !52, !noalias !53
  %369 = tail call float @llvm.fmuladd.f32(float %368, float %362, float %367)
  br label %370

370:                                              ; preds = %365, %258
  %371 = phi float [ %369, %365 ], [ %362, %258 ]
  store float %371, ptr addrspace(1) %269, align 4, !tbaa !44, !alias.scope !56, !noalias !57
  %372 = add nsw i32 %265, -1
  %373 = icmp eq i32 %265, 0
  br i1 %373, label %374, label %258, !llvm.loop !65

374:                                              ; preds = %370, %118, %83, %64, %10
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
!15 = !{ptr @spk_iir_df_acc_carry, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"img"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"coef"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"act"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"accin"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"wt"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!24 = !{i32 6, !"air.buffer", !"air.location_index", i32 6, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!25 = !{i32 7, !"air.buffer", !"air.location_index", i32 7, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"state_in"}
!26 = !{i32 8, !"air.buffer", !"air.location_index", i32 8, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"state_out"}
!27 = !{i32 9, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C++ TBAA"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"air-alias-scope-arg(5)"}
!34 = distinct !{!34, !"air-alias-scopes(spk_iir_df_acc_carry)"}
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43}
!36 = distinct !{!36, !34, !"air-alias-scope-arg(0)"}
!37 = distinct !{!37, !34, !"air-alias-scope-arg(1)"}
!38 = distinct !{!38, !34, !"air-alias-scope-arg(2)"}
!39 = distinct !{!39, !34, !"air-alias-scope-arg(3)"}
!40 = distinct !{!40, !34, !"air-alias-scope-arg(4)"}
!41 = distinct !{!41, !34, !"air-alias-scope-arg(6)"}
!42 = distinct !{!42, !34, !"air-alias-scope-arg(7)"}
!43 = distinct !{!43, !34, !"air-alias-scope-arg(8)"}
!44 = !{!45, !45, i64 0}
!45 = !{!"float", !30, i64 0}
!46 = !{!37}
!47 = !{!36, !38, !39, !40, !33, !41, !42, !43}
!48 = !{!38}
!49 = !{!36, !37, !39, !40, !33, !41, !42, !43}
!50 = !{!39}
!51 = !{!36, !37, !38, !40, !33, !41, !42, !43}
!52 = !{!40}
!53 = !{!36, !37, !38, !39, !33, !41, !42, !43}
!54 = !{!36}
!55 = !{!37, !38, !39, !40, !33, !41, !42, !43}
!56 = !{!41}
!57 = !{!36, !37, !38, !39, !40, !33, !42, !43}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!42}
!61 = !{!36, !37, !38, !39, !40, !33, !41, !43}
!62 = !{!43}
!63 = !{!36, !37, !38, !39, !40, !33, !41, !42}
!64 = distinct !{!64, !59}
!65 = distinct !{!65, !59}
