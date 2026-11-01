; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/019.bc'
source_filename = "spk_grain_m_fir2d_r9"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

@_ZZ20spk_grain_m_fir2d_r9PU9MTLdeviceKfS0_S0_S0_PU9MTLdeviceKjPU9MTLdevicefDv3_jS5_S5_S5_E2ts = internal addrspace(3) global [3900 x float] undef, align 4
@_ZZ20spk_grain_m_fir2d_r9PU9MTLdeviceKfS0_S0_S0_PU9MTLdeviceKjPU9MTLdevicefDv3_jS5_S5_S5_E2tv = internal addrspace(3) global [1200 x float] undef, align 4

; Function Attrs: convergent mustprogress nounwind
define void @spk_grain_m_fir2d_r9(ptr addrspace(1) noundef "air-buffer-no-alias" %0, ptr addrspace(1) noundef "air-buffer-no-alias" %1, ptr addrspace(1) noundef "air-buffer-no-alias" %2, ptr addrspace(1) noundef "air-buffer-no-alias" %3, ptr addrspace(1) noundef "air-buffer-no-alias" %4, ptr addrspace(1) noundef "air-buffer-no-alias" %5, <3 x i32> noundef %6, <3 x i32> noundef %7, <3 x i32> noundef %8, <3 x i32> noundef %9) local_unnamed_addr #0 {
  %11 = extractelement <3 x i32> %6, i64 0
  %12 = extractelement <3 x i32> %7, i64 0
  %13 = extractelement <3 x i32> %8, i64 0
  %14 = extractelement <3 x i32> %9, i64 0
  tail call fastcc void @_Z17grain_fir2d_tiledILj9ELj8EEvPU9MTLdeviceKfS1_S1_S1_PU9MTLdeviceKjPU9MTLdevicefPU14MTLthreadgroupfS7_jjjj(ptr addrspace(1) noundef %0, ptr addrspace(1) noundef %1, ptr addrspace(1) noundef %2, ptr addrspace(1) noundef %3, ptr addrspace(1) noundef %4, ptr addrspace(1) noundef %5, ptr addrspace(3) noundef @_ZZ20spk_grain_m_fir2d_r9PU9MTLdeviceKfS0_S0_S0_PU9MTLdeviceKjPU9MTLdevicefDv3_jS5_S5_S5_E2ts, ptr addrspace(3) noundef @_ZZ20spk_grain_m_fir2d_r9PU9MTLdeviceKfS0_S0_S0_PU9MTLdeviceKjPU9MTLdevicefDv3_jS5_S5_S5_E2tv, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #4
  ret void
}

; Function Attrs: convergent inlinehint mustprogress nounwind
define internal fastcc void @_Z17grain_fir2d_tiledILj9ELj8EEvPU9MTLdeviceKfS1_S1_S1_PU9MTLdeviceKjPU9MTLdevicefPU14MTLthreadgroupfS7_jjjj(ptr addrspace(1) noundef %0, ptr addrspace(1) noundef %1, ptr addrspace(1) noundef %2, ptr addrspace(1) noundef %3, ptr addrspace(1) noundef %4, ptr addrspace(1) noundef %5, ptr addrspace(3) noundef %6, ptr addrspace(3) noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #1 {
  %13 = load i32, ptr addrspace(1) %4, align 4, !tbaa !28
  %14 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 1
  %15 = load i32, ptr addrspace(1) %14, align 4, !tbaa !28
  %16 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 2
  %17 = load i32, ptr addrspace(1) %16, align 4, !tbaa !28
  %18 = shl i32 %17, 1
  %19 = or i32 %18, 1
  %20 = add i32 %18, 32
  %21 = load float, ptr addrspace(1) %3, align 4, !tbaa !32
  %22 = insertelement <3 x float> undef, float %21, i64 0
  %23 = getelementptr inbounds float, ptr addrspace(1) %3, i64 1
  %24 = load float, ptr addrspace(1) %23, align 4, !tbaa !32
  %25 = insertelement <3 x float> %22, float %24, i64 1
  %26 = getelementptr inbounds float, ptr addrspace(1) %3, i64 2
  %27 = load float, ptr addrspace(1) %26, align 4, !tbaa !32
  %28 = insertelement <3 x float> %25, float %27, i64 2
  %29 = getelementptr inbounds float, ptr addrspace(1) %3, i64 3
  %30 = load float, ptr addrspace(1) %29, align 4, !tbaa !32
  %31 = insertelement <3 x float> undef, float %30, i64 0
  %32 = getelementptr inbounds float, ptr addrspace(1) %3, i64 4
  %33 = load float, ptr addrspace(1) %32, align 4, !tbaa !32
  %34 = insertelement <3 x float> %31, float %33, i64 1
  %35 = getelementptr inbounds float, ptr addrspace(1) %3, i64 5
  %36 = load float, ptr addrspace(1) %35, align 4, !tbaa !32
  %37 = insertelement <3 x float> %34, float %36, i64 2
  %38 = add i32 %15, 31
  %39 = lshr i32 %38, 5
  %40 = add i32 %13, 7
  %41 = lshr i32 %40, 3
  %42 = mul i32 %39, %41
  %43 = icmp ugt i32 %42, %10
  br i1 %43, label %44, label %74

44:                                               ; preds = %12
  %45 = add i32 %18, 8
  %46 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 3
  %47 = load i32, ptr addrspace(1) %46, align 4, !tbaa !28
  %48 = mul i32 %20, %45
  %49 = icmp ugt i32 %48, %8
  %50 = sub nsw i32 0, %13
  %51 = shl nsw i32 %13, 1
  %52 = sub nsw i32 0, %15
  %53 = shl nsw i32 %15, 1
  %54 = and i32 %47, 1
  %55 = icmp eq i32 %54, 0
  %56 = shl i32 %20, 3
  %57 = icmp ugt i32 %56, %8
  %58 = shl i32 %19, 1
  %59 = icmp ult i32 %8, 256
  %60 = and i32 %47, 26
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds float, ptr addrspace(1) %3, i64 6
  %63 = getelementptr inbounds float, ptr addrspace(1) %3, i64 7
  %64 = getelementptr inbounds float, ptr addrspace(1) %3, i64 8
  %65 = getelementptr inbounds float, ptr addrspace(1) %3, i64 9
  %66 = getelementptr inbounds float, ptr addrspace(1) %3, i64 10
  %67 = getelementptr inbounds float, ptr addrspace(1) %3, i64 11
  %68 = and i32 %47, 8
  %69 = icmp eq i32 %68, 0
  %70 = and i32 %47, 16
  %71 = icmp eq i32 %70, 0
  %72 = and i32 %47, 2
  %73 = icmp eq i32 %72, 0
  br label %75

74:                                               ; preds = %233, %12
  ret void

75:                                               ; preds = %233, %44
  %76 = phi i32 [ %10, %44 ], [ %234, %233 ]
  %77 = urem i32 %76, %39
  %78 = shl nuw i32 %77, 5
  %79 = udiv i32 %76, %39
  %80 = shl i32 %79, 3
  br i1 %49, label %81, label %84

81:                                               ; preds = %75
  %82 = sub i32 %80, %17
  %83 = sub i32 %78, %17
  br label %85

84:                                               ; preds = %143, %75
  tail call void @air.wg.barrier(i32 2, i32 1) #5
  br i1 %57, label %178, label %177

85:                                               ; preds = %143, %81
  %86 = phi i32 [ %175, %143 ], [ %8, %81 ]
  %87 = udiv i32 %86, %20
  %88 = urem i32 %86, %20
  %89 = add i32 %82, %87
  %90 = icmp sgt i32 %89, -1
  %91 = icmp slt i32 %89, %13
  %92 = and i1 %90, %91
  br i1 %92, label %115, label %93

93:                                               ; preds = %85
  %94 = icmp sge i32 %89, %50
  %95 = icmp slt i32 %89, 0
  %96 = and i1 %95, %94
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = xor i32 %89, -1
  br label %115

99:                                               ; preds = %93
  %100 = xor i1 %91, true
  %101 = icmp sgt i32 %51, %89
  %102 = select i1 %100, i1 %101, i1 false
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = xor i32 %89, -1
  %105 = add i32 %51, %104
  br label %115

106:                                              ; preds = %99
  %107 = srem i32 %89, %51
  %108 = icmp slt i32 %107, 0
  %109 = select i1 %108, i32 %51, i32 0
  %110 = add nsw i32 %109, %107
  %111 = icmp slt i32 %110, %13
  %112 = xor i32 %110, -1
  %113 = add i32 %51, %112
  %114 = select i1 %111, i32 %110, i32 %113
  br label %115

115:                                              ; preds = %106, %103, %97, %85
  %116 = phi i32 [ %98, %97 ], [ %105, %103 ], [ %114, %106 ], [ %89, %85 ]
  %117 = add i32 %83, %88
  %118 = icmp sgt i32 %117, -1
  %119 = icmp slt i32 %117, %15
  %120 = and i1 %118, %119
  br i1 %120, label %143, label %121

121:                                              ; preds = %115
  %122 = icmp sge i32 %117, %52
  %123 = icmp slt i32 %117, 0
  %124 = and i1 %123, %122
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = xor i32 %117, -1
  br label %143

127:                                              ; preds = %121
  %128 = xor i1 %119, true
  %129 = icmp sgt i32 %53, %117
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = xor i32 %117, -1
  %133 = add i32 %53, %132
  br label %143

134:                                              ; preds = %127
  %135 = srem i32 %117, %53
  %136 = icmp slt i32 %135, 0
  %137 = select i1 %136, i32 %53, i32 0
  %138 = add nsw i32 %137, %135
  %139 = icmp slt i32 %138, %15
  %140 = xor i32 %138, -1
  %141 = add i32 %53, %140
  %142 = select i1 %139, i32 %138, i32 %141
  br label %143

143:                                              ; preds = %134, %131, %125, %115
  %144 = phi i32 [ %126, %125 ], [ %133, %131 ], [ %142, %134 ], [ %117, %115 ]
  %145 = mul i32 %116, %15
  %146 = add i32 %144, %145
  %147 = mul i32 %146, 3
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %148
  %150 = load float, ptr addrspace(1) %149, align 4, !tbaa !32
  %151 = insertelement <3 x float> undef, float %150, i64 0
  %152 = add i32 %147, 1
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %153
  %155 = load float, ptr addrspace(1) %154, align 4, !tbaa !32
  %156 = insertelement <3 x float> %151, float %155, i64 1
  %157 = add i32 %147, 2
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %158
  %160 = load float, ptr addrspace(1) %159, align 4, !tbaa !32
  %161 = insertelement <3 x float> %156, float %160, i64 2
  %162 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %161, <3 x float> %28, <3 x float> %37)
  %163 = select i1 %55, <3 x float> %161, <3 x float> %162
  %164 = extractelement <3 x float> %163, i64 0
  %165 = zext i32 %86 to i64
  %166 = getelementptr inbounds float, ptr addrspace(3) %6, i64 %165
  store float %164, ptr addrspace(3) %166, align 4, !tbaa !32
  %167 = extractelement <3 x float> %163, i64 1
  %168 = add i32 %86, 1300
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds float, ptr addrspace(3) %6, i64 %169
  store float %167, ptr addrspace(3) %170, align 4, !tbaa !32
  %171 = extractelement <3 x float> %163, i64 2
  %172 = add i32 %86, 2600
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds float, ptr addrspace(3) %6, i64 %173
  store float %171, ptr addrspace(3) %174, align 4, !tbaa !32
  %175 = add i32 %86, %9
  %176 = icmp ult i32 %175, %48
  br i1 %176, label %85, label %84, !llvm.loop !34

177:                                              ; preds = %182, %84
  tail call void @air.wg.barrier(i32 2, i32 1) #5
  br i1 %59, label %236, label %233

178:                                              ; preds = %182, %84
  %179 = phi i32 [ %194, %182 ], [ %8, %84 ]
  %180 = udiv i32 %179, %20
  %181 = urem i32 %179, %20
  br label %196

182:                                              ; preds = %196
  %183 = extractelement <3 x float> %230, i64 0
  %184 = zext i32 %179 to i64
  %185 = getelementptr inbounds float, ptr addrspace(3) %7, i64 %184
  store float %183, ptr addrspace(3) %185, align 4, !tbaa !32
  %186 = extractelement <3 x float> %230, i64 1
  %187 = add i32 %179, 400
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds float, ptr addrspace(3) %7, i64 %188
  store float %186, ptr addrspace(3) %189, align 4, !tbaa !32
  %190 = extractelement <3 x float> %230, i64 2
  %191 = add i32 %179, 800
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds float, ptr addrspace(3) %7, i64 %192
  store float %190, ptr addrspace(3) %193, align 4, !tbaa !32
  %194 = add i32 %179, %9
  %195 = icmp ult i32 %194, %56
  br i1 %195, label %178, label %177, !llvm.loop !36

196:                                              ; preds = %196, %178
  %197 = phi <3 x float> [ zeroinitializer, %178 ], [ %230, %196 ]
  %198 = phi i32 [ 0, %178 ], [ %231, %196 ]
  %199 = add i32 %198, %180
  %200 = mul i32 %199, %20
  %201 = add i32 %200, %181
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds float, ptr addrspace(3) %6, i64 %202
  %204 = load float, ptr addrspace(3) %203, align 4, !tbaa !32
  %205 = insertelement <3 x float> undef, float %204, i64 0
  %206 = add i32 %201, 1300
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds float, ptr addrspace(3) %6, i64 %207
  %209 = load float, ptr addrspace(3) %208, align 4, !tbaa !32
  %210 = insertelement <3 x float> %205, float %209, i64 1
  %211 = add i32 %201, 2600
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds float, ptr addrspace(3) %6, i64 %212
  %214 = load float, ptr addrspace(3) %213, align 4, !tbaa !32
  %215 = insertelement <3 x float> %210, float %214, i64 2
  %216 = zext i32 %198 to i64
  %217 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %216
  %218 = load float, ptr addrspace(1) %217, align 4, !tbaa !32
  %219 = insertelement <3 x float> undef, float %218, i64 0
  %220 = add i32 %198, %19
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %221
  %223 = load float, ptr addrspace(1) %222, align 4, !tbaa !32
  %224 = insertelement <3 x float> %219, float %223, i64 1
  %225 = add i32 %198, %58
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %226
  %228 = load float, ptr addrspace(1) %227, align 4, !tbaa !32
  %229 = insertelement <3 x float> %224, float %228, i64 2
  %230 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %215, <3 x float> %229, <3 x float> %197)
  %231 = add nuw i32 %198, 1
  %232 = icmp eq i32 %231, %19
  br i1 %232, label %182, label %196, !llvm.loop !37

233:                                              ; preds = %336, %177
  tail call void @air.wg.barrier(i32 2, i32 1) #5
  %234 = add i32 %76, %11
  %235 = icmp ult i32 %234, %42
  br i1 %235, label %75, label %74, !llvm.loop !38

236:                                              ; preds = %336, %177
  %237 = phi i32 [ %337, %336 ], [ %8, %177 ]
  %238 = lshr i32 %237, 5
  %239 = and i32 %237, 31
  %240 = add i32 %238, %80
  %241 = or i32 %239, %78
  %242 = icmp ult i32 %240, %13
  %243 = icmp ult i32 %241, %15
  %244 = select i1 %242, i1 %243, i1 false
  br i1 %244, label %245, label %336

245:                                              ; preds = %236
  %246 = mul i32 %238, %20
  %247 = add i32 %246, %239
  br label %301

248:                                              ; preds = %301
  %249 = mul i32 %240, %15
  %250 = add i32 %249, %241
  %251 = mul i32 %250, 3
  %252 = zext i32 %251 to i64
  br i1 %61, label %253, label %258

253:                                              ; preds = %248
  %254 = add i32 %251, 1
  %255 = zext i32 %254 to i64
  %256 = add i32 %251, 2
  %257 = zext i32 %256 to i64
  br label %291

258:                                              ; preds = %248
  %259 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %252
  %260 = load float, ptr addrspace(1) %259, align 4, !tbaa !32
  %261 = insertelement <3 x float> undef, float %260, i64 0
  %262 = add i32 %251, 1
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %263
  %265 = load float, ptr addrspace(1) %264, align 4, !tbaa !32
  %266 = insertelement <3 x float> %261, float %265, i64 1
  %267 = add i32 %251, 2
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %268
  %270 = load float, ptr addrspace(1) %269, align 4, !tbaa !32
  %271 = insertelement <3 x float> %266, float %270, i64 2
  %272 = load float, ptr addrspace(1) %62, align 4, !tbaa !32
  %273 = insertelement <3 x float> undef, float %272, i64 0
  %274 = load float, ptr addrspace(1) %63, align 4, !tbaa !32
  %275 = insertelement <3 x float> %273, float %274, i64 1
  %276 = load float, ptr addrspace(1) %64, align 4, !tbaa !32
  %277 = insertelement <3 x float> %275, float %276, i64 2
  %278 = load float, ptr addrspace(1) %65, align 4, !tbaa !32
  %279 = insertelement <3 x float> undef, float %278, i64 0
  %280 = load float, ptr addrspace(1) %66, align 4, !tbaa !32
  %281 = insertelement <3 x float> %279, float %280, i64 1
  %282 = load float, ptr addrspace(1) %67, align 4, !tbaa !32
  %283 = insertelement <3 x float> %281, float %282, i64 2
  %284 = fmul <3 x float> %333, %271
  %285 = select i1 %69, <3 x float> %333, <3 x float> %284
  %286 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %285, <3 x float> %283, <3 x float> %271) #6
  %287 = select i1 %71, <3 x float> %285, <3 x float> %286
  %288 = fmul <3 x float> %283, %287
  %289 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %277, <3 x float> %271, <3 x float> %288) #6
  %290 = select i1 %73, <3 x float> %287, <3 x float> %289
  br label %291

291:                                              ; preds = %258, %253
  %292 = phi i64 [ %257, %253 ], [ %268, %258 ]
  %293 = phi i64 [ %255, %253 ], [ %263, %258 ]
  %294 = phi <3 x float> [ %333, %253 ], [ %290, %258 ]
  %295 = extractelement <3 x float> %294, i64 0
  %296 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %252
  store float %295, ptr addrspace(1) %296, align 4, !tbaa !32
  %297 = extractelement <3 x float> %294, i64 1
  %298 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %293
  store float %297, ptr addrspace(1) %298, align 4, !tbaa !32
  %299 = extractelement <3 x float> %294, i64 2
  %300 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %292
  store float %299, ptr addrspace(1) %300, align 4, !tbaa !32
  br label %336

301:                                              ; preds = %301, %245
  %302 = phi i32 [ 0, %245 ], [ %334, %301 ]
  %303 = phi <3 x float> [ zeroinitializer, %245 ], [ %333, %301 ]
  %304 = add i32 %247, %302
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds float, ptr addrspace(3) %7, i64 %305
  %307 = load float, ptr addrspace(3) %306, align 4, !tbaa !32
  %308 = insertelement <3 x float> undef, float %307, i64 0
  %309 = add i32 %304, 400
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds float, ptr addrspace(3) %7, i64 %310
  %312 = load float, ptr addrspace(3) %311, align 4, !tbaa !32
  %313 = insertelement <3 x float> %308, float %312, i64 1
  %314 = add i32 %304, 800
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds float, ptr addrspace(3) %7, i64 %315
  %317 = load float, ptr addrspace(3) %316, align 4, !tbaa !32
  %318 = insertelement <3 x float> %313, float %317, i64 2
  %319 = zext i32 %302 to i64
  %320 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %319
  %321 = load float, ptr addrspace(1) %320, align 4, !tbaa !32
  %322 = insertelement <3 x float> undef, float %321, i64 0
  %323 = add i32 %302, %19
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %324
  %326 = load float, ptr addrspace(1) %325, align 4, !tbaa !32
  %327 = insertelement <3 x float> %322, float %326, i64 1
  %328 = add i32 %302, %58
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %329
  %331 = load float, ptr addrspace(1) %330, align 4, !tbaa !32
  %332 = insertelement <3 x float> %327, float %331, i64 2
  %333 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %318, <3 x float> %332, <3 x float> %303)
  %334 = add nuw i32 %302, 1
  %335 = icmp eq i32 %334, %19
  br i1 %335, label %248, label %301, !llvm.loop !39

336:                                              ; preds = %291, %236
  %337 = add i32 %237, %9
  %338 = icmp ult i32 %337, 256
  br i1 %338, label %236, label %233, !llvm.loop !40
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #2

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @air.wg.barrier(i32, i32) local_unnamed_addr #3

attributes #0 = { convergent mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { convergent inlinehint mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { convergent mustprogress nounwind willreturn }
attributes #4 = { convergent nobuiltin "no-builtins" }
attributes #5 = { convergent nounwind willreturn }
attributes #6 = { nounwind }

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
!15 = !{ptr @spk_grain_m_fir2d_r9, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"src"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"w"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"aux"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"k"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!24 = !{i32 6, !"air.thread_position_in_threadgroup", !"air.arg_type_name", !"uint3", !"air.arg_name", !"lid"}
!25 = !{i32 7, !"air.threads_per_threadgroup", !"air.arg_type_name", !"uint3", !"air.arg_name", !"group_size"}
!26 = !{i32 8, !"air.threadgroup_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"group"}
!27 = !{i32 9, !"air.threadgroups_per_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"groups"}
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C++ TBAA"}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !30, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = distinct !{!36, !35}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !35}
!39 = distinct !{!39, !35}
!40 = distinct !{!40, !35}
