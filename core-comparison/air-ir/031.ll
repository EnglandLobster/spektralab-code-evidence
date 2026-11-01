; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/031.bc'
source_filename = "spk_lut2d_cubic"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_lut2d_cubic(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %4, <3 x i32> noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x float], align 4
  %8 = alloca [4 x float], align 4
  %9 = extractelement <3 x i32> %5, i64 0
  %10 = load i32, ptr addrspace(1) %3, align 4, !tbaa !24, !alias.scope !28, !noalias !31
  %11 = getelementptr inbounds i32, ptr addrspace(1) %3, i64 1
  %12 = load i32, ptr addrspace(1) %11, align 4, !tbaa !24, !alias.scope !28, !noalias !31
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %338

14:                                               ; preds = %6
  %15 = add i32 %10, -1
  %16 = tail call float @air.convert.f.f32.u.i32(i32 %15) #4
  %17 = shl i32 %9, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %18
  %20 = load float, ptr addrspace(1) %19, align 4, !tbaa !36, !alias.scope !38, !noalias !39
  %21 = fmul float %16, %20
  %22 = or i32 %17, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %23
  %25 = load float, ptr addrspace(1) %24, align 4, !tbaa !36, !alias.scope !38, !noalias !39
  %26 = fmul float %16, %25
  %27 = tail call float @air.convert.f.f32.s.i32(i32 %15) #4
  %28 = fcmp ole float %21, 0.000000e+00
  %29 = select i1 %28, float 0.000000e+00, float %21
  %30 = fcmp ult float %29, %27
  br i1 %30, label %33, label %31

31:                                               ; preds = %14
  %32 = add nsw i32 %10, -2
  br label %38

33:                                               ; preds = %14
  %34 = tail call float @air.floor.f32(float %29) #4
  %35 = tail call i32 @air.convert.s.i32.f.f32(float %34) #4
  %36 = tail call float @air.convert.f.f32.s.i32(i32 %35) #4
  %37 = fsub float %29, %36
  br label %38

38:                                               ; preds = %33, %31
  %39 = phi i32 [ %35, %33 ], [ %32, %31 ]
  %40 = phi float [ %37, %33 ], [ 1.000000e+00, %31 ]
  %41 = fcmp ole float %26, 0.000000e+00
  %42 = select i1 %41, float 0.000000e+00, float %26
  %43 = fcmp ult float %42, %27
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = add nsw i32 %10, -2
  br label %51

46:                                               ; preds = %38
  %47 = tail call float @air.floor.f32(float %42) #4
  %48 = tail call i32 @air.convert.s.i32.f.f32(float %47) #4
  %49 = tail call float @air.convert.f.f32.s.i32(i32 %48) #4
  %50 = fsub float %42, %49
  br label %51

51:                                               ; preds = %46, %44
  %52 = phi i32 [ %48, %46 ], [ %45, %44 ]
  %53 = phi float [ %50, %46 ], [ 1.000000e+00, %44 ]
  %54 = bitcast ptr %7 to ptr
  call void @llvm.lifetime.start.p0(ptr %7)
  %55 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 0
  %56 = fadd float %40, 1.000000e+00
  %57 = tail call float @air.fabs.f32(float %56) #4
  %58 = fcmp olt float %57, 1.000000e+00
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = fmul float %57, 7.000000e+00
  %61 = fmul float %57, %60
  %62 = fmul float %57, -1.200000e+01
  %63 = fmul float %57, %62
  %64 = tail call float @llvm.fmuladd.f32(float %61, float %57, float %63) #5
  %65 = fadd float %64, 0x4015555560000000
  %66 = fmul float %65, 0x3FC5555560000000
  br label %78

67:                                               ; preds = %51
  %68 = fcmp olt float %57, 2.000000e+00
  br i1 %68, label %69, label %78

69:                                               ; preds = %67
  %70 = fmul float %57, 0xC002AAAAA0000000
  %71 = fmul float %57, %70
  %72 = fmul float %57, 1.200000e+01
  %73 = fmul float %57, %72
  %74 = tail call float @llvm.fmuladd.f32(float %71, float %57, float %73) #5
  %75 = tail call float @llvm.fmuladd.f32(float %57, float -2.000000e+01, float %74) #5
  %76 = fadd float %75, 0x4025555560000000
  %77 = fmul float %76, 0x3FC5555560000000
  br label %78

78:                                               ; preds = %69, %67, %59
  %79 = phi float [ %66, %59 ], [ %77, %69 ], [ 0.000000e+00, %67 ]
  store float %79, ptr %55, align 4, !tbaa !36
  %80 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %81 = tail call float @air.fabs.f32(float %40) #4
  %82 = fcmp olt float %81, 1.000000e+00
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = fmul float %81, 7.000000e+00
  %85 = fmul float %81, %84
  %86 = fmul float %81, -1.200000e+01
  %87 = fmul float %81, %86
  %88 = tail call float @llvm.fmuladd.f32(float %85, float %81, float %87) #5
  %89 = fadd float %88, 0x4015555560000000
  %90 = fmul float %89, 0x3FC5555560000000
  br label %102

91:                                               ; preds = %78
  %92 = fcmp olt float %81, 2.000000e+00
  br i1 %92, label %93, label %102

93:                                               ; preds = %91
  %94 = fmul float %81, 0xC002AAAAA0000000
  %95 = fmul float %81, %94
  %96 = fmul float %81, 1.200000e+01
  %97 = fmul float %81, %96
  %98 = tail call float @llvm.fmuladd.f32(float %95, float %81, float %97) #5
  %99 = tail call float @llvm.fmuladd.f32(float %81, float -2.000000e+01, float %98) #5
  %100 = fadd float %99, 0x4025555560000000
  %101 = fmul float %100, 0x3FC5555560000000
  br label %102

102:                                              ; preds = %93, %91, %83
  %103 = phi float [ %90, %83 ], [ %101, %93 ], [ 0.000000e+00, %91 ]
  store float %103, ptr %80, align 4, !tbaa !36
  %104 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %105 = fadd float %40, -1.000000e+00
  %106 = tail call float @air.fabs.f32(float %105) #4
  %107 = fcmp olt float %106, 1.000000e+00
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = fmul float %106, 7.000000e+00
  %110 = fmul float %106, %109
  %111 = fmul float %106, -1.200000e+01
  %112 = fmul float %106, %111
  %113 = tail call float @llvm.fmuladd.f32(float %110, float %106, float %112) #5
  %114 = fadd float %113, 0x4015555560000000
  %115 = fmul float %114, 0x3FC5555560000000
  br label %127

116:                                              ; preds = %102
  %117 = fcmp olt float %106, 2.000000e+00
  br i1 %117, label %118, label %127

118:                                              ; preds = %116
  %119 = fmul float %106, 0xC002AAAAA0000000
  %120 = fmul float %106, %119
  %121 = fmul float %106, 1.200000e+01
  %122 = fmul float %106, %121
  %123 = tail call float @llvm.fmuladd.f32(float %120, float %106, float %122) #5
  %124 = tail call float @llvm.fmuladd.f32(float %106, float -2.000000e+01, float %123) #5
  %125 = fadd float %124, 0x4025555560000000
  %126 = fmul float %125, 0x3FC5555560000000
  br label %127

127:                                              ; preds = %118, %116, %108
  %128 = phi float [ %115, %108 ], [ %126, %118 ], [ 0.000000e+00, %116 ]
  store float %128, ptr %104, align 4, !tbaa !36
  %129 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %130 = fadd float %40, -2.000000e+00
  %131 = tail call float @air.fabs.f32(float %130) #4
  %132 = fcmp olt float %131, 1.000000e+00
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = fmul float %131, 7.000000e+00
  %135 = fmul float %131, %134
  %136 = fmul float %131, -1.200000e+01
  %137 = fmul float %131, %136
  %138 = tail call float @llvm.fmuladd.f32(float %135, float %131, float %137) #5
  %139 = fadd float %138, 0x4015555560000000
  %140 = fmul float %139, 0x3FC5555560000000
  br label %152

141:                                              ; preds = %127
  %142 = fcmp olt float %131, 2.000000e+00
  br i1 %142, label %143, label %152

143:                                              ; preds = %141
  %144 = fmul float %131, 0xC002AAAAA0000000
  %145 = fmul float %131, %144
  %146 = fmul float %131, 1.200000e+01
  %147 = fmul float %131, %146
  %148 = tail call float @llvm.fmuladd.f32(float %145, float %131, float %147) #5
  %149 = tail call float @llvm.fmuladd.f32(float %131, float -2.000000e+01, float %148) #5
  %150 = fadd float %149, 0x4025555560000000
  %151 = fmul float %150, 0x3FC5555560000000
  br label %152

152:                                              ; preds = %143, %141, %133
  %153 = phi float [ %140, %133 ], [ %151, %143 ], [ 0.000000e+00, %141 ]
  store float %153, ptr %129, align 4, !tbaa !36
  %154 = bitcast ptr %8 to ptr
  call void @llvm.lifetime.start.p0(ptr %8)
  %155 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 0
  %156 = fadd float %53, 1.000000e+00
  %157 = tail call float @air.fabs.f32(float %156) #4
  %158 = fcmp olt float %157, 1.000000e+00
  br i1 %158, label %159, label %167

159:                                              ; preds = %152
  %160 = fmul float %157, 7.000000e+00
  %161 = fmul float %157, %160
  %162 = fmul float %157, -1.200000e+01
  %163 = fmul float %157, %162
  %164 = tail call float @llvm.fmuladd.f32(float %161, float %157, float %163) #5
  %165 = fadd float %164, 0x4015555560000000
  %166 = fmul float %165, 0x3FC5555560000000
  br label %178

167:                                              ; preds = %152
  %168 = fcmp olt float %157, 2.000000e+00
  br i1 %168, label %169, label %178

169:                                              ; preds = %167
  %170 = fmul float %157, 0xC002AAAAA0000000
  %171 = fmul float %157, %170
  %172 = fmul float %157, 1.200000e+01
  %173 = fmul float %157, %172
  %174 = tail call float @llvm.fmuladd.f32(float %171, float %157, float %173) #5
  %175 = tail call float @llvm.fmuladd.f32(float %157, float -2.000000e+01, float %174) #5
  %176 = fadd float %175, 0x4025555560000000
  %177 = fmul float %176, 0x3FC5555560000000
  br label %178

178:                                              ; preds = %169, %167, %159
  %179 = phi float [ %166, %159 ], [ %177, %169 ], [ 0.000000e+00, %167 ]
  store float %179, ptr %155, align 4, !tbaa !36
  %180 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %181 = tail call float @air.fabs.f32(float %53) #4
  %182 = fcmp olt float %181, 1.000000e+00
  br i1 %182, label %183, label %191

183:                                              ; preds = %178
  %184 = fmul float %181, 7.000000e+00
  %185 = fmul float %181, %184
  %186 = fmul float %181, -1.200000e+01
  %187 = fmul float %181, %186
  %188 = tail call float @llvm.fmuladd.f32(float %185, float %181, float %187) #5
  %189 = fadd float %188, 0x4015555560000000
  %190 = fmul float %189, 0x3FC5555560000000
  br label %202

191:                                              ; preds = %178
  %192 = fcmp olt float %181, 2.000000e+00
  br i1 %192, label %193, label %202

193:                                              ; preds = %191
  %194 = fmul float %181, 0xC002AAAAA0000000
  %195 = fmul float %181, %194
  %196 = fmul float %181, 1.200000e+01
  %197 = fmul float %181, %196
  %198 = tail call float @llvm.fmuladd.f32(float %195, float %181, float %197) #5
  %199 = tail call float @llvm.fmuladd.f32(float %181, float -2.000000e+01, float %198) #5
  %200 = fadd float %199, 0x4025555560000000
  %201 = fmul float %200, 0x3FC5555560000000
  br label %202

202:                                              ; preds = %193, %191, %183
  %203 = phi float [ %190, %183 ], [ %201, %193 ], [ 0.000000e+00, %191 ]
  store float %203, ptr %180, align 4, !tbaa !36
  %204 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %205 = fadd float %53, -1.000000e+00
  %206 = tail call float @air.fabs.f32(float %205) #4
  %207 = fcmp olt float %206, 1.000000e+00
  br i1 %207, label %208, label %216

208:                                              ; preds = %202
  %209 = fmul float %206, 7.000000e+00
  %210 = fmul float %206, %209
  %211 = fmul float %206, -1.200000e+01
  %212 = fmul float %206, %211
  %213 = tail call float @llvm.fmuladd.f32(float %210, float %206, float %212) #5
  %214 = fadd float %213, 0x4015555560000000
  %215 = fmul float %214, 0x3FC5555560000000
  br label %227

216:                                              ; preds = %202
  %217 = fcmp olt float %206, 2.000000e+00
  br i1 %217, label %218, label %227

218:                                              ; preds = %216
  %219 = fmul float %206, 0xC002AAAAA0000000
  %220 = fmul float %206, %219
  %221 = fmul float %206, 1.200000e+01
  %222 = fmul float %206, %221
  %223 = tail call float @llvm.fmuladd.f32(float %220, float %206, float %222) #5
  %224 = tail call float @llvm.fmuladd.f32(float %206, float -2.000000e+01, float %223) #5
  %225 = fadd float %224, 0x4025555560000000
  %226 = fmul float %225, 0x3FC5555560000000
  br label %227

227:                                              ; preds = %218, %216, %208
  %228 = phi float [ %215, %208 ], [ %226, %218 ], [ 0.000000e+00, %216 ]
  store float %228, ptr %204, align 4, !tbaa !36
  %229 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %230 = fadd float %53, -2.000000e+00
  %231 = tail call float @air.fabs.f32(float %230) #4
  %232 = fcmp olt float %231, 1.000000e+00
  br i1 %232, label %233, label %241

233:                                              ; preds = %227
  %234 = fmul float %231, 7.000000e+00
  %235 = fmul float %231, %234
  %236 = fmul float %231, -1.200000e+01
  %237 = fmul float %231, %236
  %238 = tail call float @llvm.fmuladd.f32(float %235, float %231, float %237) #5
  %239 = fadd float %238, 0x4015555560000000
  %240 = fmul float %239, 0x3FC5555560000000
  br label %252

241:                                              ; preds = %227
  %242 = fcmp olt float %231, 2.000000e+00
  br i1 %242, label %243, label %252

243:                                              ; preds = %241
  %244 = fmul float %231, 0xC002AAAAA0000000
  %245 = fmul float %231, %244
  %246 = fmul float %231, 1.200000e+01
  %247 = fmul float %231, %246
  %248 = tail call float @llvm.fmuladd.f32(float %245, float %231, float %247) #5
  %249 = tail call float @llvm.fmuladd.f32(float %231, float -2.000000e+01, float %248) #5
  %250 = fadd float %249, 0x4025555560000000
  %251 = fmul float %250, 0x3FC5555560000000
  br label %252

252:                                              ; preds = %243, %241, %233
  %253 = phi float [ %240, %233 ], [ %251, %243 ], [ 0.000000e+00, %241 ]
  store float %253, ptr %229, align 4, !tbaa !36
  %254 = add nsw i32 %39, -1
  %255 = add nsw i32 %52, -1
  %256 = shl i32 %10, 1
  %257 = add i32 %256, -2
  %258 = add i32 %256, -2
  br label %283

259:                                              ; preds = %298
  %260 = fcmp une float %316, 0.000000e+00
  %261 = insertelement <3 x float> poison, float %316, i64 0
  %262 = shufflevector <3 x float> %261, <3 x float> poison, <3 x i32> zeroinitializer
  %263 = fdiv <3 x float> %335, %262
  %264 = select i1 %260, <3 x float> %263, <3 x float> %335
  %265 = zext i32 %9 to i64
  %266 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %265
  %267 = load float, ptr addrspace(1) %266, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %268 = extractelement <3 x float> %264, i64 0
  %269 = fmul float %267, %268
  %270 = mul i32 %9, 3
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %271
  store float %269, ptr addrspace(1) %272, align 4, !tbaa !36, !alias.scope !42, !noalias !43
  %273 = extractelement <3 x float> %264, i64 1
  %274 = fmul float %267, %273
  %275 = add i32 %270, 1
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %276
  store float %274, ptr addrspace(1) %277, align 4, !tbaa !36, !alias.scope !42, !noalias !43
  %278 = extractelement <3 x float> %264, i64 2
  %279 = fmul float %267, %278
  %280 = add i32 %270, 2
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %281
  store float %279, ptr addrspace(1) %282, align 4, !tbaa !36, !alias.scope !42, !noalias !43
  call void @llvm.lifetime.end.p0(ptr %8)
  call void @llvm.lifetime.end.p0(ptr %7)
  br label %338

283:                                              ; preds = %298, %252
  %284 = phi <3 x float> [ zeroinitializer, %252 ], [ %335, %298 ]
  %285 = phi float [ 0.000000e+00, %252 ], [ %316, %298 ]
  %286 = phi i32 [ 0, %252 ], [ %299, %298 ]
  %287 = add nsw i32 %254, %286
  %288 = icmp slt i32 %287, 0
  %289 = sub i32 0, %287
  %290 = icmp slt i32 %287, %10
  %291 = sub i32 %257, %287
  %292 = select i1 %290, i32 %287, i32 %291
  %293 = select i1 %288, i32 %289, i32 %292
  %294 = zext i32 %286 to i64
  %295 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 %294
  %296 = load float, ptr %295, align 4, !tbaa !36
  %297 = mul i32 %293, %10
  br label %301

298:                                              ; preds = %301
  %299 = add nuw nsw i32 %286, 1
  %300 = icmp eq i32 %299, 4
  br i1 %300, label %259, label %283, !llvm.loop !44

301:                                              ; preds = %301, %283
  %302 = phi <3 x float> [ %284, %283 ], [ %335, %301 ]
  %303 = phi float [ %285, %283 ], [ %316, %301 ]
  %304 = phi i32 [ 0, %283 ], [ %336, %301 ]
  %305 = add nsw i32 %255, %304
  %306 = icmp slt i32 %305, 0
  %307 = sub i32 0, %305
  %308 = icmp slt i32 %305, %10
  %309 = sub i32 %258, %305
  %310 = select i1 %308, i32 %305, i32 %309
  %311 = select i1 %306, i32 %307, i32 %310
  %312 = zext i32 %304 to i64
  %313 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 %312
  %314 = load float, ptr %313, align 4, !tbaa !36
  %315 = fmul float %296, %314
  %316 = fadd float %303, %315
  %317 = add i32 %311, %297
  %318 = mul i32 %317, 3
  %319 = insertelement <3 x float> poison, float %315, i64 0
  %320 = shufflevector <3 x float> %319, <3 x float> poison, <3 x i32> zeroinitializer
  %321 = zext i32 %318 to i64
  %322 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %321
  %323 = load float, ptr addrspace(1) %322, align 4, !tbaa !36, !alias.scope !46, !noalias !47
  %324 = insertelement <3 x float> undef, float %323, i64 0
  %325 = add i32 %318, 1
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %326
  %328 = load float, ptr addrspace(1) %327, align 4, !tbaa !36, !alias.scope !46, !noalias !47
  %329 = insertelement <3 x float> %324, float %328, i64 1
  %330 = add i32 %318, 2
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %331
  %333 = load float, ptr addrspace(1) %332, align 4, !tbaa !36, !alias.scope !46, !noalias !47
  %334 = insertelement <3 x float> %329, float %333, i64 2
  %335 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %320, <3 x float> %334, <3 x float> %302)
  %336 = add nuw nsw i32 %304, 1
  %337 = icmp eq i32 %336, 4
  br i1 %337, label %298, label %301, !llvm.loop !48

338:                                              ; preds = %259, %6
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fabs.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.s.i32(i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.convert.s.i32.f.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.floor.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.u.i32(i32) local_unnamed_addr #2

declare void @llvm.lifetime.end.i64(i64)

declare void @llvm.lifetime.start.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

attributes #0 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind willreturn memory(none) }
attributes #5 = { nounwind }

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
!15 = !{ptr @spk_lut2d_cubic, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"tc"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"b"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"lut"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!23 = !{i32 5, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C++ TBAA"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"air-alias-scope-arg(3)"}
!30 = distinct !{!30, !"air-alias-scopes(spk_lut2d_cubic)"}
!31 = !{!32, !33, !34, !35}
!32 = distinct !{!32, !30, !"air-alias-scope-arg(0)"}
!33 = distinct !{!33, !30, !"air-alias-scope-arg(1)"}
!34 = distinct !{!34, !30, !"air-alias-scope-arg(2)"}
!35 = distinct !{!35, !30, !"air-alias-scope-arg(4)"}
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !26, i64 0}
!38 = !{!32}
!39 = !{!33, !34, !29, !35}
!40 = !{!33}
!41 = !{!32, !34, !29, !35}
!42 = !{!35}
!43 = !{!32, !33, !34, !29}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!34}
!47 = !{!32, !33, !29, !35}
!48 = distinct !{!48, !45}
