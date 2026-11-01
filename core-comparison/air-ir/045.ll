; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/045.bc'
source_filename = "spk_overscan_light"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: convergent mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define void @spk_overscan_light(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %3, <3 x i32> noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = extractelement <3 x i32> %4, i64 0
  %9 = load i32, ptr addrspace(1) %2, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %361

11:                                               ; preds = %5
  %12 = load float, ptr addrspace(1) %1, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %13 = tail call i32 @air.convert.u.i32.f.f32(float %12) #6
  %14 = urem i32 %8, %13
  %15 = tail call float @air.convert.f.f32.u.i32(i32 %14) #6
  %16 = udiv i32 %8, %13
  %17 = tail call float @air.convert.f.f32.u.i32(i32 %16) #6
  %18 = getelementptr inbounds float, ptr addrspace(1) %1, i64 261
  %19 = load float, ptr addrspace(1) %18, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %20 = fadd float %17, %19
  %21 = fadd float %15, 5.000000e-01
  %22 = getelementptr inbounds float, ptr addrspace(1) %1, i64 2
  %23 = load float, ptr addrspace(1) %22, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %24 = getelementptr inbounds float, ptr addrspace(1) %1, i64 11
  %25 = load float, ptr addrspace(1) %24, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %26 = fneg float %25
  %27 = tail call float @llvm.fmuladd.f32(float %21, float %23, float %26) #7
  %28 = fadd float %20, 5.000000e-01
  %29 = getelementptr inbounds float, ptr addrspace(1) %1, i64 12
  %30 = load float, ptr addrspace(1) %29, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %31 = fneg float %30
  %32 = tail call float @llvm.fmuladd.f32(float %28, float %23, float %31) #7
  %33 = getelementptr inbounds float, ptr addrspace(1) %1, i64 5
  %34 = load float, ptr addrspace(1) %33, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %35 = getelementptr inbounds float, ptr addrspace(1) %1, i64 6
  %36 = load float, ptr addrspace(1) %35, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %37 = fmul float %32, %36
  %38 = tail call float @llvm.fmuladd.f32(float %34, float %27, float %37) #7
  %39 = getelementptr inbounds float, ptr addrspace(1) %1, i64 9
  %40 = load float, ptr addrspace(1) %39, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %41 = fadd float %40, %38
  %42 = insertelement <2 x float> undef, float %41, i64 0
  %43 = getelementptr inbounds float, ptr addrspace(1) %1, i64 7
  %44 = load float, ptr addrspace(1) %43, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %45 = getelementptr inbounds float, ptr addrspace(1) %1, i64 8
  %46 = load float, ptr addrspace(1) %45, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %47 = fmul float %32, %46
  %48 = tail call float @llvm.fmuladd.f32(float %44, float %27, float %47) #7
  %49 = getelementptr inbounds float, ptr addrspace(1) %1, i64 10
  %50 = load float, ptr addrspace(1) %49, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %51 = fadd float %50, %48
  %52 = insertelement <2 x float> %42, float %51, i64 1
  %53 = tail call fastcc float @_ZL10film_alphaDv2_fPU9MTLdeviceKf(<2 x float> noundef %52, ptr addrspace(1) noundef %1) #8, !alias.scope !36, !noalias !37
  %54 = getelementptr inbounds float, ptr addrspace(1) %1, i64 183
  %55 = load float, ptr addrspace(1) %54, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %56 = fcmp ogt float %55, 5.000000e-01
  %57 = getelementptr inbounds float, ptr addrspace(1) %1, i64 184
  %58 = load float, ptr addrspace(1) %57, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %59 = insertelement <3 x float> undef, float %58, i64 0
  %60 = getelementptr inbounds float, ptr addrspace(1) %1, i64 185
  %61 = load float, ptr addrspace(1) %60, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %62 = insertelement <3 x float> %59, float %61, i64 1
  %63 = getelementptr inbounds float, ptr addrspace(1) %1, i64 186
  %64 = load float, ptr addrspace(1) %63, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %65 = insertelement <3 x float> %62, float %64, i64 2
  %66 = mul i32 %8, 3
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %67
  %69 = load float, ptr addrspace(1) %68, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %70 = insertelement <3 x float> undef, float %69, i64 0
  %71 = add i32 %66, 1
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %72
  %74 = load float, ptr addrspace(1) %73, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %75 = insertelement <3 x float> %70, float %74, i64 1
  %76 = add i32 %66, 2
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %77
  %79 = load float, ptr addrspace(1) %78, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %80 = insertelement <3 x float> %75, float %79, i64 2
  %81 = getelementptr inbounds float, ptr addrspace(1) %1, i64 83
  %82 = load float, ptr addrspace(1) %81, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %83 = fcmp ogt float %82, 5.000000e-01
  br i1 %83, label %84, label %328

84:                                               ; preds = %11
  %85 = bitcast ptr %6 to ptr
  call void @llvm.lifetime.start.p0(ptr %6)
  %86 = call fastcc float @_ZL8perf_sdfDv2_fPU9MTLdeviceKfRj(<2 x float> noundef %52, ptr addrspace(1) noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %6) #9
  %87 = getelementptr inbounds float, ptr addrspace(1) %1, i64 187
  %88 = load float, ptr addrspace(1) %87, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %89 = tail call i32 @air.convert.u.i32.f.f32(float %88) #6
  %90 = load i32, ptr %6, align 4, !tbaa !23
  %91 = and i32 %90, 65535
  %92 = fcmp ogt float %86, 0xBF9EB851E0000000
  %93 = fcmp olt float %86, 0x3FC3333340000000
  %94 = and i1 %92, %93
  br i1 %94, label %95, label %287

95:                                               ; preds = %84
  %96 = bitcast ptr %7 to ptr
  call void @llvm.lifetime.start.p0(ptr %7)
  %97 = fadd <2 x float> %52, <float 0x3F689374C0000000, float 0.000000e+00>
  %98 = call fastcc float @_ZL8perf_sdfDv2_fPU9MTLdeviceKfRj(<2 x float> noundef %97, ptr addrspace(1) noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %7) #9
  %99 = fadd <2 x float> %52, <float 0xBF689374C0000000, float -0.000000e+00>
  %100 = call fastcc float @_ZL8perf_sdfDv2_fPU9MTLdeviceKfRj(<2 x float> noundef %99, ptr addrspace(1) noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %7) #9
  %101 = fsub float %98, %100
  %102 = insertelement <2 x float> undef, float %101, i64 0
  %103 = fadd <2 x float> %52, <float 0.000000e+00, float 0x3F689374C0000000>
  %104 = call fastcc float @_ZL8perf_sdfDv2_fPU9MTLdeviceKfRj(<2 x float> noundef %103, ptr addrspace(1) noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %7) #9
  %105 = fadd <2 x float> %52, <float -0.000000e+00, float 0xBF689374C0000000>
  %106 = call fastcc float @_ZL8perf_sdfDv2_fPU9MTLdeviceKfRj(<2 x float> noundef %105, ptr addrspace(1) noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %7) #9
  %107 = fsub float %104, %106
  %108 = insertelement <2 x float> %102, float %107, i64 1
  %109 = tail call float @air.dot.v2f32(<2 x float> %108, <2 x float> %108) #6
  %110 = bitcast float %109 to i32
  %111 = and i32 %110, 2147483647
  %112 = icmp eq i32 %111, 2139095040
  br i1 %112, label %113, label %118

113:                                              ; preds = %95
  %114 = fmul <2 x float> %108, splat (float 0x3BD0000000000000)
  %115 = tail call float @air.dot.v2f32(<2 x float> %114, <2 x float> %114) #6
  %116 = tail call float @air.sqrt.f32(float %115) #6
  %117 = fmul float %116, 0x4410000000000000
  br label %127

118:                                              ; preds = %95
  %119 = fcmp olt float %109, 0x3980000000000000
  br i1 %119, label %120, label %125

120:                                              ; preds = %118
  %121 = fmul <2 x float> %108, splat (float 0x43F0000000000000)
  %122 = tail call float @air.dot.v2f32(<2 x float> %121, <2 x float> %121) #6
  %123 = tail call float @air.sqrt.f32(float %122) #6
  %124 = fmul float %123, 0x3BF0000000000000
  br label %127

125:                                              ; preds = %118
  %126 = tail call float @air.sqrt.f32(float %109) #6
  br label %127

127:                                              ; preds = %125, %120, %113
  %128 = phi float [ %117, %113 ], [ %124, %120 ], [ %126, %125 ]
  %129 = tail call float @air.fmax.f32(float %128, float 0x3EB0C6F7A0000000) #6
  %130 = insertelement <2 x float> poison, float %129, i64 0
  %131 = shufflevector <2 x float> %130, <2 x float> poison, <2 x i32> zeroinitializer
  %132 = fdiv <2 x float> %108, %131
  %133 = getelementptr inbounds float, ptr addrspace(1) %1, i64 191
  %134 = load float, ptr addrspace(1) %133, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %135 = insertelement <2 x float> undef, float %134, i64 0
  %136 = getelementptr inbounds float, ptr addrspace(1) %1, i64 192
  %137 = load float, ptr addrspace(1) %136, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %138 = insertelement <2 x float> %135, float %137, i64 1
  %139 = mul i32 %91, -1640531527
  %140 = xor i32 %139, %89
  %141 = lshr i32 %140, 16
  %142 = xor i32 %140, %141
  %143 = xor i32 %142, 225
  %144 = mul i32 %143, 2146121005
  %145 = lshr i32 %144, 15
  %146 = xor i32 %145, %144
  %147 = mul i32 %146, -2073254261
  %148 = lshr i32 %147, 16
  %149 = xor i32 %148, %147
  %150 = tail call float @air.convert.f.f32.u.i32(i32 %149) #6
  %151 = fmul float %150, 0x3DF0000000000000
  %152 = tail call float @llvm.fmuladd.f32(float %151, float 0x3FE3333340000000, float 0x3FD99999A0000000)
  %153 = fdiv float %41, 0x3FD6666660000000
  %154 = xor i32 %91, %89
  %155 = tail call float @air.floor.f32(float %153) #6
  %156 = fsub float %153, %155
  %157 = fmul float %156, %156
  %158 = tail call float @llvm.fmuladd.f32(float %156, float -2.000000e+00, float 3.000000e+00) #7
  %159 = fmul float %157, %158
  %160 = tail call i32 @air.convert.s.i32.f.f32(float %155) #6
  %161 = mul i32 %160, -1640531527
  %162 = xor i32 %161, %154
  %163 = lshr i32 %162, 16
  %164 = xor i32 %163, %162
  %165 = mul i32 %164, 2146121005
  %166 = lshr i32 %165, 15
  %167 = xor i32 %166, %165
  %168 = mul i32 %167, -2073254261
  %169 = lshr i32 %168, 16
  %170 = xor i32 %169, %168
  %171 = tail call float @air.convert.f.f32.u.i32(i32 %170) #6
  %172 = fmul float %171, 0x3DF0000000000000
  %173 = add i32 %161, -1640531527
  %174 = xor i32 %173, %154
  %175 = lshr i32 %174, 16
  %176 = xor i32 %175, %174
  %177 = mul i32 %176, 2146121005
  %178 = lshr i32 %177, 15
  %179 = xor i32 %178, %177
  %180 = mul i32 %179, -2073254261
  %181 = lshr i32 %180, 16
  %182 = xor i32 %181, %180
  %183 = tail call float @air.convert.f.f32.u.i32(i32 %182) #6
  %184 = fmul float %183, 0x3DF0000000000000
  %185 = tail call float @air.mix.f32(float %172, float %184, float %159) #6
  %186 = fdiv float %51, 0x3FD6666660000000
  %187 = xor i32 %154, 60
  %188 = tail call float @air.floor.f32(float %186) #6
  %189 = fsub float %186, %188
  %190 = fmul float %189, %189
  %191 = tail call float @llvm.fmuladd.f32(float %189, float -2.000000e+00, float 3.000000e+00) #7
  %192 = fmul float %190, %191
  %193 = tail call i32 @air.convert.s.i32.f.f32(float %188) #6
  %194 = mul i32 %193, -1640531527
  %195 = xor i32 %194, %187
  %196 = lshr i32 %195, 16
  %197 = xor i32 %196, %195
  %198 = mul i32 %197, 2146121005
  %199 = lshr i32 %198, 15
  %200 = xor i32 %199, %198
  %201 = mul i32 %200, -2073254261
  %202 = lshr i32 %201, 16
  %203 = xor i32 %202, %201
  %204 = tail call float @air.convert.f.f32.u.i32(i32 %203) #6
  %205 = fmul float %204, 0x3DF0000000000000
  %206 = add i32 %194, -1640531527
  %207 = xor i32 %206, %187
  %208 = lshr i32 %207, 16
  %209 = xor i32 %208, %207
  %210 = mul i32 %209, 2146121005
  %211 = lshr i32 %210, 15
  %212 = xor i32 %211, %210
  %213 = mul i32 %212, -2073254261
  %214 = lshr i32 %213, 16
  %215 = xor i32 %214, %213
  %216 = tail call float @air.convert.f.f32.u.i32(i32 %215) #6
  %217 = fmul float %216, 0x3DF0000000000000
  %218 = tail call float @air.mix.f32(float %205, float %217, float %192) #6
  %219 = fadd float %185, %218
  %220 = fmul float %219, 5.000000e-01
  %221 = fadd float %220, -2.500000e-01
  %222 = fmul float %221, 2.000000e+00
  %223 = tail call float @air.clamp.f32(float %222, float 0.000000e+00, float 1.000000e+00) #6
  %224 = fmul float %223, %223
  %225 = tail call float @llvm.fmuladd.f32(float %223, float -2.000000e+00, float 3.000000e+00) #7
  %226 = fmul float %224, %225
  %227 = tail call float @air.dot.v2f32(<2 x float> %132, <2 x float> %138) #6
  %228 = tail call float @air.fmax.f32(float 0.000000e+00, float %227) #6
  %229 = tail call float @llvm.fmuladd.f32(float %228, float 0x3FE99999A0000000, float 0x3FE3333340000000)
  %230 = fmul float %152, %226
  %231 = fmul float %230, %229
  %232 = getelementptr inbounds float, ptr addrspace(1) %1, i64 194
  %233 = load float, ptr addrspace(1) %232, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %234 = insertelement <3 x float> undef, float %233, i64 0
  %235 = getelementptr inbounds float, ptr addrspace(1) %1, i64 195
  %236 = load float, ptr addrspace(1) %235, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %237 = insertelement <3 x float> %234, float %236, i64 1
  %238 = getelementptr inbounds float, ptr addrspace(1) %1, i64 196
  %239 = load float, ptr addrspace(1) %238, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %240 = insertelement <3 x float> %237, float %239, i64 2
  %241 = tail call <3 x float> @air.mix.v3f32(<3 x float> splat (float 1.000000e+00), <3 x float> %240, <3 x float> splat (float 0x3FD3333340000000)) #6
  %242 = fcmp ult float %86, 0.000000e+00
  br i1 %242, label %258, label %243

243:                                              ; preds = %127
  %244 = getelementptr inbounds float, ptr addrspace(1) %1, i64 198
  %245 = load float, ptr addrspace(1) %244, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %246 = getelementptr inbounds float, ptr addrspace(1) %1, i64 197
  %247 = load float, ptr addrspace(1) %246, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %248 = fmul float %231, %247
  %249 = fneg float %86
  %250 = fdiv float %249, %245
  %251 = tail call float @air.exp.f32(float %250) #6
  %252 = fmul float %248, %251
  %253 = insertelement <3 x float> poison, float %252, i64 0
  %254 = shufflevector <3 x float> %253, <3 x float> poison, <3 x i32> zeroinitializer
  %255 = fmul <3 x float> %241, %254
  %256 = select i1 %56, <3 x float> %65, <3 x float> splat (float 1.000000e+00)
  %257 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %255, <3 x float> %256, <3 x float> %80)
  br label %284

258:                                              ; preds = %127
  br i1 %56, label %259, label %284

259:                                              ; preds = %258
  %260 = xor i32 %140, %141
  %261 = xor i32 %260, 228
  %262 = mul i32 %261, 2146121005
  %263 = lshr i32 %262, 15
  %264 = xor i32 %263, %262
  %265 = mul i32 %264, -2073254261
  %266 = lshr i32 %265, 16
  %267 = xor i32 %266, %265
  %268 = tail call float @air.convert.f.f32.u.i32(i32 %267) #6
  %269 = fmul float %268, 0x3DF0000000000000
  %270 = fcmp olt float %269, 5.000000e-01
  br i1 %270, label %271, label %284

271:                                              ; preds = %259
  %272 = fmul float %231, 0x3FBEB851E0000000
  %273 = insertelement <3 x float> poison, float %272, i64 0
  %274 = shufflevector <3 x float> %273, <3 x float> poison, <3 x i32> zeroinitializer
  %275 = fsub <3 x float> splat (float 1.000000e+00), %241
  %276 = fdiv float %86, 0x3F889374C0000000
  %277 = tail call float @air.exp.f32(float %276) #6
  %278 = insertelement <3 x float> poison, float %277, i64 0
  %279 = shufflevector <3 x float> %278, <3 x float> poison, <3 x i32> zeroinitializer
  %280 = fneg <3 x float> %274
  %281 = fmul <3 x float> %275, %280
  %282 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %281, <3 x float> %279, <3 x float> splat (float 1.000000e+00))
  %283 = fmul <3 x float> %65, %282
  br label %284

284:                                              ; preds = %271, %259, %258, %243
  %285 = phi <3 x float> [ %257, %243 ], [ %80, %271 ], [ %80, %259 ], [ %80, %258 ]
  %286 = phi <3 x float> [ %65, %243 ], [ %283, %271 ], [ %65, %259 ], [ %65, %258 ]
  call void @llvm.lifetime.end.p0(ptr %7)
  br label %287

287:                                              ; preds = %284, %84
  %288 = phi <3 x float> [ %285, %284 ], [ %80, %84 ]
  %289 = phi <3 x float> [ %286, %284 ], [ %65, %84 ]
  %290 = fcmp oge float %86, 0.000000e+00
  %291 = select i1 %56, i1 %290, i1 false
  br i1 %291, label %292, label %326

292:                                              ; preds = %287
  %293 = mul i32 %91, -1640531527
  %294 = xor i32 %293, %89
  %295 = lshr i32 %294, 16
  %296 = xor i32 %294, %295
  %297 = xor i32 %296, 196
  %298 = mul i32 %297, 2146121005
  %299 = lshr i32 %298, 15
  %300 = xor i32 %299, %298
  %301 = mul i32 %300, -2073254261
  %302 = lshr i32 %301, 16
  %303 = xor i32 %302, %301
  %304 = tail call float @air.convert.f.f32.u.i32(i32 %303) #6
  %305 = fmul float %304, 0x3DF0000000000000
  %306 = fmul float %305, 0x3F889374C0000000
  %307 = xor i32 %294, %295
  %308 = xor i32 %307, 197
  %309 = mul i32 %308, 2146121005
  %310 = lshr i32 %309, 15
  %311 = xor i32 %310, %309
  %312 = mul i32 %311, -2073254261
  %313 = lshr i32 %312, 16
  %314 = xor i32 %313, %312
  %315 = tail call float @air.convert.f.f32.u.i32(i32 %314) #6
  %316 = fmul float %315, 0x3DF0000000000000
  %317 = fcmp oge float %316, 5.000000e-01
  %318 = tail call float @air.convert.f.f32.u.i1(i1 %317) #6
  %319 = fmul float %306, %318
  %320 = fdiv float %86, 0xBF999999A0000000
  %321 = tail call float @air.exp.f32(float %320) #6
  %322 = fmul float %319, %321
  %323 = insertelement <3 x float> poison, float %322, i64 0
  %324 = shufflevector <3 x float> %323, <3 x float> poison, <3 x i32> zeroinitializer
  %325 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %324, <3 x float> %289, <3 x float> %288)
  br label %326

326:                                              ; preds = %292, %287
  %327 = phi <3 x float> [ %325, %292 ], [ %288, %287 ]
  call void @llvm.lifetime.end.p0(ptr %6)
  br label %328

328:                                              ; preds = %326, %11
  %329 = phi <3 x float> [ %327, %326 ], [ %80, %11 ]
  %330 = phi <3 x float> [ %289, %326 ], [ %65, %11 ]
  %331 = getelementptr inbounds float, ptr addrspace(1) %1, i64 199
  %332 = load float, ptr addrspace(1) %331, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %333 = fcmp ogt float %332, 1.500000e+00
  br i1 %333, label %342, label %334

334:                                              ; preds = %328
  %335 = getelementptr inbounds float, ptr addrspace(1) %1, i64 44
  %336 = load float, ptr addrspace(1) %335, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %337 = fsub float %336, %51
  %338 = tail call float @air.fmin.f32(float %51, float %337) #6
  %339 = fdiv float %338, %23
  %340 = fadd float %339, 5.000000e-01
  %341 = tail call float @air.clamp.f32(float %340, float 0.000000e+00, float 1.000000e+00) #6
  br label %342

342:                                              ; preds = %334, %328
  %343 = phi float [ %341, %334 ], [ 1.000000e+00, %328 ]
  %344 = fcmp ogt float %343, 0.000000e+00
  %345 = fdiv float %53, %343
  %346 = select i1 %344, float %345, float 0.000000e+00
  %347 = insertelement <3 x float> poison, float %332, i64 0
  %348 = shufflevector <3 x float> %347, <3 x float> poison, <3 x i32> zeroinitializer
  %349 = insertelement <3 x float> poison, float %346, i64 0
  %350 = shufflevector <3 x float> %349, <3 x float> poison, <3 x i32> zeroinitializer
  %351 = tail call <3 x float> @air.mix.v3f32(<3 x float> %330, <3 x float> %329, <3 x float> %350) #6
  %352 = insertelement <3 x float> poison, float %343, i64 0
  %353 = shufflevector <3 x float> %352, <3 x float> poison, <3 x i32> zeroinitializer
  %354 = tail call <3 x float> @air.mix.v3f32(<3 x float> %348, <3 x float> %351, <3 x float> %353) #6
  %355 = extractelement <3 x float> %354, i64 0
  %356 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %67
  store float %355, ptr addrspace(1) %356, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %357 = extractelement <3 x float> %354, i64 1
  %358 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %72
  store float %357, ptr addrspace(1) %358, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %359 = extractelement <3 x float> %354, i64 2
  %360 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %77
  store float %359, ptr addrspace(1) %360, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  br label %361

361:                                              ; preds = %342, %5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare <3 x float> @air.mix.v3f32(<3 x float>, <3 x float>, <3 x float>) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.clamp.f32(float, float, float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fmin.f32(float, float) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.exp.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.u.i1(i1) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.u.i32(i32) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fmax.f32(float, float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.dot.v2f32(<2 x float>, <2 x float>) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.mix.f32(float, float, float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.convert.s.i32.f.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.floor.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.sqrt.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define internal fastcc float @_ZL8perf_sdfDv2_fPU9MTLdeviceKfRj(<2 x float> noundef %0, ptr addrspace(1) noundef readonly captures(none) %1, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #3 {
  %4 = getelementptr inbounds float, ptr addrspace(1) %1, i64 44
  %5 = load float, ptr addrspace(1) %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr addrspace(1) %1, i64 84
  %7 = load float, ptr addrspace(1) %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr addrspace(1) %1, i64 89
  %9 = load float, ptr addrspace(1) %8, align 4, !tbaa !34
  %10 = extractelement <2 x float> %0, i64 0
  %11 = fsub float %10, %9
  %12 = getelementptr inbounds float, ptr addrspace(1) %1, i64 85
  %13 = load float, ptr addrspace(1) %12, align 4, !tbaa !34
  %14 = tail call float @llvm.fmuladd.f32(float %13, float -5.000000e-01, float %11)
  %15 = fdiv float %14, %7
  %16 = fadd float %15, 5.000000e-01
  %17 = tail call float @air.floor.f32(float %16) #6
  %18 = extractelement <2 x float> %0, i64 1
  %19 = fmul float %5, 5.000000e-01
  %20 = fcmp olt float %18, %19
  %21 = getelementptr inbounds float, ptr addrspace(1) %1, i64 187
  %22 = load float, ptr addrspace(1) %21, align 4, !tbaa !34
  %23 = tail call i32 @air.convert.u.i32.f.f32(float %22) #6
  %24 = tail call i32 @air.convert.s.i32.f.f32(float %17) #6
  %25 = shl nsw i32 %24, 1
  %26 = xor i1 %20, true
  %27 = zext i1 %26 to i32
  %28 = or i32 %25, %27
  %29 = mul i32 %28, -1640531527
  %30 = xor i32 %29, %23
  %31 = lshr i32 %30, 16
  %32 = xor i32 %31, %30
  %33 = mul i32 %32, 2146121005
  %34 = lshr i32 %33, 15
  %35 = xor i32 %34, %33
  %36 = mul i32 %35, -2073254261
  %37 = lshr i32 %36, 16
  %38 = xor i32 %37, %36
  store i32 %38, ptr %2, align 4, !tbaa !23
  %39 = and i32 %38, 65535
  %40 = mul i32 %39, -1640531527
  %41 = xor i32 %40, %23
  %42 = lshr i32 %41, 16
  %43 = xor i32 %41, %42
  %44 = xor i32 %43, 1
  %45 = mul i32 %44, 2146121005
  %46 = lshr i32 %45, 15
  %47 = xor i32 %46, %45
  %48 = mul i32 %47, -2073254261
  %49 = lshr i32 %48, 16
  %50 = xor i32 %49, %48
  %51 = tail call float @air.convert.f.f32.u.i32(i32 %50) #6
  %52 = fmul float %51, 0x3DF0000000000000
  %53 = fadd float %52, -5.000000e-01
  %54 = xor i32 %41, %42
  %55 = xor i32 %54, 2
  %56 = mul i32 %55, 2146121005
  %57 = lshr i32 %56, 15
  %58 = xor i32 %57, %56
  %59 = mul i32 %58, -2073254261
  %60 = lshr i32 %59, 16
  %61 = xor i32 %60, %59
  %62 = tail call float @air.convert.f.f32.u.i32(i32 %61) #6
  %63 = fmul float %62, 0x3DF0000000000000
  %64 = fadd float %63, -5.000000e-01
  %65 = xor i32 %41, %42
  %66 = xor i32 %65, 3
  %67 = mul i32 %66, 2146121005
  %68 = lshr i32 %67, 15
  %69 = xor i32 %68, %67
  %70 = mul i32 %69, -2073254261
  %71 = lshr i32 %70, 16
  %72 = xor i32 %71, %70
  %73 = tail call float @air.convert.f.f32.u.i32(i32 %72) #6
  %74 = fmul float %73, 0x3DF0000000000000
  %75 = fadd float %74, -5.000000e-01
  %76 = xor i32 %41, %42
  %77 = xor i32 %76, 4
  %78 = mul i32 %77, 2146121005
  %79 = lshr i32 %78, 15
  %80 = xor i32 %79, %78
  %81 = mul i32 %80, -2073254261
  %82 = lshr i32 %81, 16
  %83 = xor i32 %82, %81
  %84 = tail call float @air.convert.f.f32.u.i32(i32 %83) #6
  %85 = fmul float %84, 0x3DF0000000000000
  %86 = fadd float %85, -5.000000e-01
  %87 = xor i32 %41, %42
  %88 = xor i32 %87, 5
  %89 = mul i32 %88, 2146121005
  %90 = lshr i32 %89, 15
  %91 = xor i32 %90, %89
  %92 = mul i32 %91, -2073254261
  %93 = lshr i32 %92, 16
  %94 = xor i32 %93, %92
  %95 = tail call float @air.convert.f.f32.u.i32(i32 %94) #6
  %96 = fmul float %95, 0x3DF0000000000000
  %97 = fadd float %96, -5.000000e-01
  %98 = tail call float @llvm.fmuladd.f32(float %75, float 0x3F90624DE0000000, float %13)
  %99 = getelementptr inbounds float, ptr addrspace(1) %1, i64 86
  %100 = load float, ptr addrspace(1) %99, align 4, !tbaa !34
  %101 = tail call float @llvm.fmuladd.f32(float %86, float 0x3F90624DE0000000, float %100)
  %102 = getelementptr inbounds float, ptr addrspace(1) %1, i64 88
  %103 = load float, ptr addrspace(1) %102, align 4, !tbaa !34
  %104 = tail call float @llvm.fmuladd.f32(float %97, float 0x3FB47AE140000000, float %103)
  %105 = tail call float @air.clamp.f32(float %104, float 0x3FD3333340000000, float 0x3FE3333340000000) #6
  %106 = tail call float @llvm.fmuladd.f32(float %17, float %7, float %9)
  %107 = tail call float @llvm.fmuladd.f32(float %13, float 5.000000e-01, float %106)
  %108 = tail call float @llvm.fmuladd.f32(float %53, float 0x3F947AE140000000, float %107)
  %109 = getelementptr inbounds float, ptr addrspace(1) %1, i64 87
  %110 = load float, ptr addrspace(1) %109, align 4, !tbaa !34
  %111 = tail call float @llvm.fmuladd.f32(float %100, float 5.000000e-01, float %110)
  %112 = fsub float %5, %110
  %113 = tail call float @llvm.fmuladd.f32(float %100, float -5.000000e-01, float %112)
  %114 = select i1 %20, float %111, float %113
  %115 = tail call float @llvm.fmuladd.f32(float %64, float 0x3F989374C0000000, float %114)
  %116 = fsub float %10, %108
  %117 = insertelement <2 x float> undef, float %116, i64 0
  %118 = fsub float %18, %115
  %119 = insertelement <2 x float> %117, float %118, i64 1
  %120 = tail call <2 x float> @air.fabs.v2f32(<2 x float> %119) #6
  %121 = fneg float %105
  %122 = tail call float @llvm.fmuladd.f32(float %98, float 5.000000e-01, float %121)
  %123 = insertelement <2 x float> undef, float %122, i64 0
  %124 = tail call float @llvm.fmuladd.f32(float %101, float 5.000000e-01, float %121)
  %125 = insertelement <2 x float> %123, float %124, i64 1
  %126 = fsub <2 x float> %120, %125
  %127 = tail call <2 x float> @air.fmax.v2f32(<2 x float> %126, <2 x float> zeroinitializer) #6
  %128 = tail call float @air.dot.v2f32(<2 x float> %127, <2 x float> %127) #6
  %129 = bitcast float %128 to i32
  %130 = and i32 %129, 2147483647
  %131 = icmp eq i32 %130, 2139095040
  br i1 %131, label %132, label %137

132:                                              ; preds = %3
  %133 = fmul <2 x float> %127, splat (float 0x3BD0000000000000)
  %134 = tail call float @air.dot.v2f32(<2 x float> %133, <2 x float> %133) #6
  %135 = tail call float @air.sqrt.f32(float %134) #6
  %136 = fmul float %135, 0x4410000000000000
  br label %146

137:                                              ; preds = %3
  %138 = fcmp olt float %128, 0x3980000000000000
  br i1 %138, label %139, label %144

139:                                              ; preds = %137
  %140 = fmul <2 x float> %127, splat (float 0x43F0000000000000)
  %141 = tail call float @air.dot.v2f32(<2 x float> %140, <2 x float> %140) #6
  %142 = tail call float @air.sqrt.f32(float %141) #6
  %143 = fmul float %142, 0x3BF0000000000000
  br label %146

144:                                              ; preds = %137
  %145 = tail call float @air.sqrt.f32(float %128) #6
  br label %146

146:                                              ; preds = %144, %139, %132
  %147 = phi float [ %136, %132 ], [ %143, %139 ], [ %145, %144 ]
  %148 = extractelement <2 x float> %126, i64 0
  %149 = extractelement <2 x float> %126, i64 1
  %150 = tail call float @air.fmax.f32(float %148, float %149) #6
  %151 = tail call float @air.fmin.f32(float %150, float 0.000000e+00) #6
  %152 = fadd float %147, %151
  %153 = fsub float %152, %105
  %154 = xor i32 %41, %42
  %155 = xor i32 %154, 6
  %156 = mul i32 %155, 2146121005
  %157 = lshr i32 %156, 15
  %158 = xor i32 %157, %156
  %159 = mul i32 %158, -2073254261
  %160 = lshr i32 %159, 16
  %161 = xor i32 %160, %159
  %162 = tail call float @air.convert.f.f32.u.i32(i32 %161) #6
  %163 = fmul float %162, 0x3DF0000000000000
  %164 = tail call float @llvm.fmuladd.f32(float %163, float 0x3F689374C0000000, float 0x3F50624DE0000000)
  %165 = fdiv float %10, 0x3FA99999A0000000
  %166 = xor i32 %23, 119
  %167 = tail call float @air.floor.f32(float %165) #6
  %168 = fsub float %165, %167
  %169 = fmul float %168, %168
  %170 = tail call float @llvm.fmuladd.f32(float %168, float -2.000000e+00, float 3.000000e+00) #7
  %171 = fmul float %169, %170
  %172 = tail call i32 @air.convert.s.i32.f.f32(float %167) #6
  %173 = mul i32 %172, -1640531527
  %174 = xor i32 %173, %166
  %175 = lshr i32 %174, 16
  %176 = xor i32 %175, %174
  %177 = mul i32 %176, 2146121005
  %178 = lshr i32 %177, 15
  %179 = xor i32 %178, %177
  %180 = mul i32 %179, -2073254261
  %181 = lshr i32 %180, 16
  %182 = xor i32 %181, %180
  %183 = tail call float @air.convert.f.f32.u.i32(i32 %182) #6
  %184 = fmul float %183, 0x3DF0000000000000
  %185 = add i32 %173, -1640531527
  %186 = xor i32 %185, %166
  %187 = lshr i32 %186, 16
  %188 = xor i32 %187, %186
  %189 = mul i32 %188, 2146121005
  %190 = lshr i32 %189, 15
  %191 = xor i32 %190, %189
  %192 = mul i32 %191, -2073254261
  %193 = lshr i32 %192, 16
  %194 = xor i32 %193, %192
  %195 = tail call float @air.convert.f.f32.u.i32(i32 %194) #6
  %196 = fmul float %195, 0x3DF0000000000000
  %197 = tail call float @air.mix.f32(float %184, float %196, float %171) #6
  %198 = fdiv float %18, 0x3FA99999A0000000
  %199 = xor i32 %23, 153
  %200 = tail call float @air.floor.f32(float %198) #6
  %201 = fsub float %198, %200
  %202 = fmul float %201, %201
  %203 = tail call float @llvm.fmuladd.f32(float %201, float -2.000000e+00, float 3.000000e+00) #7
  %204 = fmul float %202, %203
  %205 = tail call i32 @air.convert.s.i32.f.f32(float %200) #6
  %206 = mul i32 %205, -1640531527
  %207 = xor i32 %206, %199
  %208 = lshr i32 %207, 16
  %209 = xor i32 %208, %207
  %210 = mul i32 %209, 2146121005
  %211 = lshr i32 %210, 15
  %212 = xor i32 %211, %210
  %213 = mul i32 %212, -2073254261
  %214 = lshr i32 %213, 16
  %215 = xor i32 %214, %213
  %216 = tail call float @air.convert.f.f32.u.i32(i32 %215) #6
  %217 = fmul float %216, 0x3DF0000000000000
  %218 = add i32 %206, -1640531527
  %219 = xor i32 %218, %199
  %220 = lshr i32 %219, 16
  %221 = xor i32 %220, %219
  %222 = mul i32 %221, 2146121005
  %223 = lshr i32 %222, 15
  %224 = xor i32 %223, %222
  %225 = mul i32 %224, -2073254261
  %226 = lshr i32 %225, 16
  %227 = xor i32 %226, %225
  %228 = tail call float @air.convert.f.f32.u.i32(i32 %227) #6
  %229 = fmul float %228, 0x3DF0000000000000
  %230 = tail call float @air.mix.f32(float %217, float %229, float %204) #6
  %231 = fadd float %197, %230
  %232 = fadd float %231, -1.000000e+00
  %233 = fmul float %164, %232
  %234 = tail call float @llvm.fmuladd.f32(float %233, float 2.000000e+00, float %153)
  %235 = xor i32 %41, %42
  %236 = xor i32 %235, 7
  %237 = mul i32 %236, 2146121005
  %238 = lshr i32 %237, 15
  %239 = xor i32 %238, %237
  %240 = mul i32 %239, -2073254261
  %241 = lshr i32 %240, 16
  %242 = xor i32 %241, %240
  %243 = tail call float @air.convert.f.f32.u.i32(i32 %242) #6
  %244 = fmul float %243, 0x3DF0000000000000
  %245 = fcmp olt float %244, 2.500000e-01
  br i1 %245, label %246, label %311

246:                                              ; preds = %146
  %247 = xor i32 %41, %42
  %248 = xor i32 %247, 8
  %249 = mul i32 %248, 2146121005
  %250 = lshr i32 %249, 15
  %251 = xor i32 %250, %249
  %252 = mul i32 %251, -2073254261
  %253 = lshr i32 %252, 16
  %254 = xor i32 %253, %252
  %255 = tail call float @air.convert.f.f32.u.i32(i32 %254) #6
  %256 = fmul float %255, 0x3DF0000000000000
  %257 = fmul float %256, 0x401921FB60000000
  %258 = insertelement <2 x float> undef, float %108, i64 0
  %259 = insertelement <2 x float> %258, float %115, i64 1
  %260 = tail call float @air.cos.f32(float %257) #6
  %261 = fmul float %260, 5.000000e-01
  %262 = fmul float %98, %261
  %263 = insertelement <2 x float> undef, float %262, i64 0
  %264 = tail call float @air.sin.f32(float %257) #6
  %265 = fmul float %264, 5.000000e-01
  %266 = fmul float %101, %265
  %267 = insertelement <2 x float> %263, float %266, i64 1
  %268 = fadd <2 x float> %259, %267
  %269 = xor i32 %41, %42
  %270 = xor i32 %269, 9
  %271 = mul i32 %270, 2146121005
  %272 = lshr i32 %271, 15
  %273 = xor i32 %272, %271
  %274 = mul i32 %273, -2073254261
  %275 = lshr i32 %274, 16
  %276 = xor i32 %275, %274
  %277 = tail call float @air.convert.f.f32.u.i32(i32 %276) #6
  %278 = fmul float %277, 0x3DF0000000000000
  %279 = tail call float @llvm.fmuladd.f32(float %278, float 0x3F9EB851E0000000, float 0x3F947AE140000000)
  %280 = xor i32 %41, %42
  %281 = xor i32 %280, 10
  %282 = mul i32 %281, 2146121005
  %283 = lshr i32 %282, 15
  %284 = xor i32 %283, %282
  %285 = mul i32 %284, -2073254261
  %286 = lshr i32 %285, 16
  %287 = xor i32 %286, %285
  %288 = tail call float @air.convert.f.f32.u.i32(i32 %287) #6
  %289 = fmul float %288, 0x3DF0000000000000
  %290 = fcmp olt float %289, 5.000000e-01
  %291 = xor i32 %41, %42
  %292 = xor i32 %291, 11
  %293 = mul i32 %292, 2146121005
  %294 = lshr i32 %293, 15
  %295 = xor i32 %294, %293
  %296 = mul i32 %295, -2073254261
  %297 = lshr i32 %296, 16
  %298 = xor i32 %297, %296
  %299 = tail call float @air.convert.f.f32.u.i32(i32 %298) #6
  %300 = fmul float %299, 0x3DF0000000000000
  %301 = tail call float @llvm.fmuladd.f32(float %300, float 0x3F847AE140000000, float 0x3F789374C0000000)
  %302 = fneg float %301
  %303 = select i1 %290, float %302, float %301
  %304 = fsub <2 x float> %0, %268
  %305 = tail call float @air.dot.v2f32(<2 x float> %304, <2 x float> %304) #6
  %306 = fneg float %305
  %307 = fmul float %279, %279
  %308 = fdiv float %306, %307
  %309 = tail call float @air.exp.f32(float %308) #6
  %310 = tail call float @llvm.fmuladd.f32(float %303, float %309, float %234)
  br label %311

311:                                              ; preds = %246, %146
  %312 = phi float [ %310, %246 ], [ %234, %146 ]
  ret float %312
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.sin.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.cos.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare <2 x float> @air.fmax.v2f32(<2 x float>, <2 x float>) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare <2 x float> @air.fabs.v2f32(<2 x float>) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.convert.u.i32.f.f32(float) local_unnamed_addr #1

; Function Attrs: convergent mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define internal fastcc float @_ZL10film_alphaDv2_fPU9MTLdeviceKf(<2 x float> noundef %0, ptr addrspace(1) noundef readonly captures(none) %1) unnamed_addr #4 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds float, ptr addrspace(1) %1, i64 2
  %5 = load float, ptr addrspace(1) %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr addrspace(1) %1, i64 199
  %7 = load float, ptr addrspace(1) %6, align 4, !tbaa !34
  %8 = fcmp ogt float %7, 1.500000e+00
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds float, ptr addrspace(1) %1, i64 44
  %11 = load float, ptr addrspace(1) %10, align 4, !tbaa !34
  %12 = extractelement <2 x float> %0, i64 1
  %13 = fsub float %11, %12
  %14 = tail call float @air.fmin.f32(float %12, float %13) #6
  %15 = fdiv float %14, %5
  %16 = fadd float %15, 5.000000e-01
  %17 = tail call float @air.clamp.f32(float %16, float 0.000000e+00, float 1.000000e+00) #6
  br label %18

18:                                               ; preds = %9, %2
  %19 = phi float [ %17, %9 ], [ 1.000000e+00, %2 ]
  %20 = getelementptr inbounds float, ptr addrspace(1) %1, i64 83
  %21 = load float, ptr addrspace(1) %20, align 4, !tbaa !34
  %22 = fcmp ogt float %21, 5.000000e-01
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = bitcast ptr %3 to ptr
  call void @llvm.lifetime.start.p0(ptr %3)
  %25 = fmul float %5, 0x3FB89A0280000000
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %5, float 0x3F32F09DA0000000)
  %27 = tail call float @air.sqrt.f32(float %26) #6
  %28 = call fastcc float @_ZL8perf_sdfDv2_fPU9MTLdeviceKfRj(<2 x float> noundef %0, ptr addrspace(1) noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #9
  %29 = fmul float %27, 0x3FF6A09E60000000
  %30 = fdiv float %28, %29
  %31 = tail call float @air.fabs.f32(float %30) #6
  %32 = tail call float @llvm.fmuladd.f32(float %31, float 0x3FD4F740A0000000, float 1.000000e+00) #7
  %33 = fdiv float 1.000000e+00, %32
  %34 = tail call float @llvm.fmuladd.f32(float %33, float 0x3FF0FB8440000000, float 0xBFF7401C60000000) #7
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %33, float 0x3FF6BE1C60000000) #7
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %33, float 0xBFD23531C0000000) #7
  %37 = tail call float @llvm.fmuladd.f32(float %36, float %33, float 0x3FD04F20C0000000) #7
  %38 = fneg float %30
  %39 = fmul float %30, %38
  %40 = tail call float @air.exp.f32(float %39) #6
  %41 = fneg float %37
  %42 = fmul float %33, %41
  %43 = tail call float @llvm.fmuladd.f32(float %42, float %40, float 1.000000e+00) #7
  %44 = fcmp olt float %30, 0.000000e+00
  %45 = fneg float %43
  %46 = select i1 %44, float %45, float %43
  %47 = tail call float @llvm.fmuladd.f32(float %46, float 5.000000e-01, float 5.000000e-01)
  %48 = fmul float %19, %47
  call void @llvm.lifetime.end.p0(ptr %3)
  br label %49

49:                                               ; preds = %23, %18
  %50 = phi float [ %48, %23 ], [ %19, %18 ]
  ret float %50
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fabs.f32(float) local_unnamed_addr #1

declare void @llvm.lifetime.end.i64(i64)

declare void @llvm.lifetime.start.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

attributes #0 = { convergent mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="64" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { convergent mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="64" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { convergent nobuiltin "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }

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
!15 = !{ptr @spk_overscan_light, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"rgb"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"P"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"n"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!22 = !{i32 4, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"tid"}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C++ TBAA"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"air-alias-scope-arg(2)"}
!29 = distinct !{!29, !"air-alias-scopes(spk_overscan_light)"}
!30 = !{!31, !32, !33}
!31 = distinct !{!31, !29, !"air-alias-scope-arg(0)"}
!32 = distinct !{!32, !29, !"air-alias-scope-arg(1)"}
!33 = distinct !{!33, !29, !"air-alias-scope-arg(3)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !25, i64 0}
!36 = !{!32}
!37 = !{!31, !28, !33}
!38 = !{!31}
!39 = !{!32, !28, !33}
!40 = !{!33}
!41 = !{!31, !32, !28}
