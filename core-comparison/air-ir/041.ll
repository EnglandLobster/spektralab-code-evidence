; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/041.bc'
source_filename = "spk_overscan_canvas"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: convergent mustprogress nofree nosync nounwind
define void @spk_overscan_canvas(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %3, <3 x i32> noundef %4) local_unnamed_addr #0 {
  %6 = extractelement <3 x i32> %4, i64 0
  %7 = load i32, ptr addrspace(1) %2, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %368

9:                                                ; preds = %5
  %10 = load float, ptr addrspace(1) %1, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %11 = tail call i32 @air.convert.u.i32.f.f32(float %10) #6
  %12 = urem i32 %6, %11
  %13 = tail call float @air.convert.f.f32.u.i32(i32 %12) #6
  %14 = udiv i32 %6, %11
  %15 = tail call float @air.convert.f.f32.u.i32(i32 %14) #6
  %16 = getelementptr inbounds float, ptr addrspace(1) %1, i64 261
  %17 = load float, ptr addrspace(1) %16, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %18 = fadd float %15, %17
  %19 = fadd float %13, 5.000000e-01
  %20 = getelementptr inbounds float, ptr addrspace(1) %1, i64 2
  %21 = load float, ptr addrspace(1) %20, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %22 = getelementptr inbounds float, ptr addrspace(1) %1, i64 11
  %23 = load float, ptr addrspace(1) %22, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %24 = fneg float %23
  %25 = tail call float @llvm.fmuladd.f32(float %19, float %21, float %24) #7
  %26 = fadd float %18, 5.000000e-01
  %27 = getelementptr inbounds float, ptr addrspace(1) %1, i64 12
  %28 = load float, ptr addrspace(1) %27, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %29 = fneg float %28
  %30 = tail call float @llvm.fmuladd.f32(float %26, float %21, float %29) #7
  %31 = getelementptr inbounds float, ptr addrspace(1) %1, i64 5
  %32 = load float, ptr addrspace(1) %31, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %33 = getelementptr inbounds float, ptr addrspace(1) %1, i64 6
  %34 = load float, ptr addrspace(1) %33, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %35 = fmul float %30, %34
  %36 = tail call float @llvm.fmuladd.f32(float %32, float %25, float %35) #7
  %37 = getelementptr inbounds float, ptr addrspace(1) %1, i64 9
  %38 = load float, ptr addrspace(1) %37, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %39 = fadd float %38, %36
  %40 = insertelement <2 x float> undef, float %39, i64 0
  %41 = getelementptr inbounds float, ptr addrspace(1) %1, i64 7
  %42 = load float, ptr addrspace(1) %41, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %43 = getelementptr inbounds float, ptr addrspace(1) %1, i64 8
  %44 = load float, ptr addrspace(1) %43, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %45 = fmul float %30, %44
  %46 = tail call float @llvm.fmuladd.f32(float %42, float %25, float %45) #7
  %47 = getelementptr inbounds float, ptr addrspace(1) %1, i64 10
  %48 = load float, ptr addrspace(1) %47, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %49 = fadd float %48, %46
  %50 = insertelement <2 x float> %40, float %49, i64 1
  %51 = getelementptr inbounds float, ptr addrspace(1) %1, i64 44
  %52 = load float, ptr addrspace(1) %51, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %53 = getelementptr inbounds float, ptr addrspace(1) %1, i64 199
  %54 = load float, ptr addrspace(1) %53, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %55 = fcmp ogt float %54, 1.500000e+00
  br i1 %55, label %60, label %56

56:                                               ; preds = %9
  %57 = fcmp ult float %49, 0.000000e+00
  %58 = fcmp ugt float %49, %52
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %354, label %60

60:                                               ; preds = %56, %9
  %61 = getelementptr inbounds float, ptr addrspace(1) %1, i64 260
  %62 = load float, ptr addrspace(1) %61, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %63 = fcmp ogt float %62, 0.000000e+00
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = getelementptr inbounds float, ptr addrspace(1) %1, i64 14
  %66 = load float, ptr addrspace(1) %65, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %67 = getelementptr inbounds float, ptr addrspace(1) %1, i64 16
  %68 = load float, ptr addrspace(1) %67, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %69 = fadd float %62, %68
  %70 = tail call float @llvm.fmuladd.f32(float %69, float 5.000000e-01, float %66)
  %71 = fcmp ogt float %39, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = fsub float %39, %62
  %74 = insertelement <2 x float> %50, float %73, i64 0
  br label %75

75:                                               ; preds = %72, %64, %60
  %76 = phi float [ %62, %72 ], [ 0.000000e+00, %64 ], [ 0.000000e+00, %60 ]
  %77 = phi <2 x float> [ %74, %72 ], [ %50, %64 ], [ %50, %60 ]
  %78 = tail call fastcc float @_ZL8gate_sdfDv2_fPU9MTLdeviceKf(<2 x float> noundef %77, ptr addrspace(1) noundef %1) #8
  %79 = getelementptr inbounds float, ptr addrspace(1) %1, i64 19
  %80 = load float, ptr addrspace(1) %79, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %81 = fcmp ugt float %80, 0x3EB0C6F7A0000000
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = fcmp olt float %78, 0.000000e+00
  %84 = select i1 %83, float 1.000000e+00, float 0.000000e+00
  br label %96

85:                                               ; preds = %75
  %86 = fneg float %78
  %87 = fdiv float %86, %80
  %88 = tail call float @air.clamp.f32(float %87, float -1.000000e+00, float 1.000000e+00) #6
  %89 = fneg float %88
  %90 = tail call float @llvm.fmuladd.f32(float %89, float %88, float 1.000000e+00) #7
  %91 = tail call float @air.fmax.f32(float %90, float 0.000000e+00) #6
  %92 = tail call float @air.sqrt.f32(float %91) #6
  %93 = tail call float @air.asin.f32(float %88) #6
  %94 = tail call float @llvm.fmuladd.f32(float %88, float %92, float %93) #7
  %95 = tail call float @llvm.fmuladd.f32(float %94, float 0x3FD45F3060000000, float 5.000000e-01) #7
  br label %96

96:                                               ; preds = %85, %82
  %97 = phi float [ %84, %82 ], [ %95, %85 ]
  %98 = fcmp ogt float %97, 0.000000e+00
  br i1 %98, label %99, label %142

99:                                               ; preds = %96
  %100 = getelementptr inbounds float, ptr addrspace(1) %1, i64 13
  %101 = load float, ptr addrspace(1) %100, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %102 = fcmp olt float %101, 5.000000e-01
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = getelementptr inbounds float, ptr addrspace(1) %1, i64 14
  %105 = load float, ptr addrspace(1) %104, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %106 = fsub float %39, %105
  %107 = getelementptr inbounds float, ptr addrspace(1) %1, i64 15
  %108 = load float, ptr addrspace(1) %107, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %109 = fsub float %49, %108
  br label %120

110:                                              ; preds = %99
  %111 = getelementptr inbounds float, ptr addrspace(1) %1, i64 15
  %112 = load float, ptr addrspace(1) %111, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %113 = getelementptr inbounds float, ptr addrspace(1) %1, i64 17
  %114 = load float, ptr addrspace(1) %113, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %115 = fadd float %112, %114
  %116 = fsub float %115, %49
  %117 = getelementptr inbounds float, ptr addrspace(1) %1, i64 14
  %118 = load float, ptr addrspace(1) %117, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %119 = fsub float %39, %118
  br label %120

120:                                              ; preds = %110, %103
  %121 = phi float [ %109, %103 ], [ %119, %110 ]
  %122 = phi float [ %106, %103 ], [ %116, %110 ]
  %123 = fdiv float %121, %21
  %124 = fadd float %123, -5.000000e-01
  %125 = fdiv float %122, %21
  %126 = fadd float %125, -5.000000e-01
  %127 = insertelement <3 x float> poison, float %97, i64 0
  %128 = shufflevector <3 x float> %127, <3 x float> poison, <3 x i32> zeroinitializer
  %129 = getelementptr inbounds float, ptr addrspace(1) %1, i64 3
  %130 = load float, ptr addrspace(1) %129, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %131 = tail call i32 @air.convert.u.i32.f.f32(float %130) #6
  %132 = getelementptr inbounds float, ptr addrspace(1) %1, i64 4
  %133 = load float, ptr addrspace(1) %132, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %134 = tail call i32 @air.convert.u.i32.f.f32(float %133) #6
  %135 = getelementptr inbounds float, ptr addrspace(1) %1, i64 262
  %136 = load float, ptr addrspace(1) %135, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %137 = getelementptr inbounds float, ptr addrspace(1) %1, i64 263
  %138 = load float, ptr addrspace(1) %137, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %139 = tail call i32 @air.convert.u.i32.f.f32(float %138) #6
  %140 = tail call fastcc <3 x float> @_ZL12sample_framePU9MTLdeviceKfffjjfj(ptr addrspace(1) noundef %0, float noundef %126, float noundef %124, i32 noundef %131, i32 noundef %134, float noundef %136, i32 noundef %139) #8, !alias.scope !38, !noalias !39
  %141 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %128, <3 x float> %140, <3 x float> zeroinitializer)
  br label %142

142:                                              ; preds = %120, %96
  %143 = phi <3 x float> [ %141, %120 ], [ zeroinitializer, %96 ]
  %144 = getelementptr inbounds float, ptr addrspace(1) %1, i64 93
  %145 = load float, ptr addrspace(1) %144, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %146 = fcmp ogt float %145, 0.000000e+00
  %147 = fcmp ogt float %78, 0xBF947AE140000000
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %149, label %205

149:                                              ; preds = %142
  %150 = getelementptr inbounds float, ptr addrspace(1) %1, i64 94
  %151 = load float, ptr addrspace(1) %150, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %152 = fmul float %151, 6.000000e+00
  %153 = fcmp olt float %78, %152
  br i1 %153, label %154, label %205

154:                                              ; preds = %149
  %155 = extractelement <2 x float> %77, i64 0
  %156 = getelementptr inbounds float, ptr addrspace(1) %1, i64 14
  %157 = load float, ptr addrspace(1) %156, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %158 = fadd float %157, 0x3FBEB851E0000000
  %159 = getelementptr inbounds float, ptr addrspace(1) %1, i64 16
  %160 = load float, ptr addrspace(1) %159, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %161 = fadd float %157, %160
  %162 = fadd float %161, 0xBFBEB851E0000000
  %163 = tail call float @air.clamp.f32(float %155, float %158, float %162) #6
  %164 = fadd float %76, %163
  %165 = getelementptr inbounds float, ptr addrspace(1) %1, i64 15
  %166 = load float, ptr addrspace(1) %165, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %167 = fadd float %166, 0x3FBEB851E0000000
  %168 = getelementptr inbounds float, ptr addrspace(1) %1, i64 17
  %169 = load float, ptr addrspace(1) %168, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %170 = fadd float %166, %169
  %171 = fadd float %170, 0xBFBEB851E0000000
  %172 = tail call float @air.clamp.f32(float %49, float %167, float %171) #6
  %173 = getelementptr inbounds float, ptr addrspace(1) %1, i64 13
  %174 = load float, ptr addrspace(1) %173, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %175 = fcmp olt float %174, 5.000000e-01
  %176 = fsub float %164, %157
  %177 = fsub float %172, %166
  %178 = fsub float %170, %172
  %179 = select i1 %175, float %177, float %176
  %180 = select i1 %175, float %176, float %178
  %181 = fdiv float %179, %21
  %182 = fadd float %181, -5.000000e-01
  %183 = fdiv float %180, %21
  %184 = fadd float %183, -5.000000e-01
  %185 = getelementptr inbounds float, ptr addrspace(1) %1, i64 3
  %186 = load float, ptr addrspace(1) %185, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %187 = tail call i32 @air.convert.u.i32.f.f32(float %186) #6
  %188 = getelementptr inbounds float, ptr addrspace(1) %1, i64 4
  %189 = load float, ptr addrspace(1) %188, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %190 = tail call i32 @air.convert.u.i32.f.f32(float %189) #6
  %191 = getelementptr inbounds float, ptr addrspace(1) %1, i64 262
  %192 = load float, ptr addrspace(1) %191, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %193 = getelementptr inbounds float, ptr addrspace(1) %1, i64 263
  %194 = load float, ptr addrspace(1) %193, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %195 = tail call i32 @air.convert.u.i32.f.f32(float %194) #6
  %196 = tail call fastcc <3 x float> @_ZL12sample_framePU9MTLdeviceKfffjjfj(ptr addrspace(1) noundef %0, float noundef %184, float noundef %182, i32 noundef %187, i32 noundef %190, float noundef %192, i32 noundef %195) #8, !alias.scope !38, !noalias !39
  %197 = tail call float @air.fmax.f32(float %78, float 0.000000e+00) #6
  %198 = fneg float %197
  %199 = fdiv float %198, %151
  %200 = tail call float @air.exp.f32(float %199) #6
  %201 = fmul float %145, %200
  %202 = insertelement <3 x float> poison, float %201, i64 0
  %203 = shufflevector <3 x float> %202, <3 x float> poison, <3 x i32> zeroinitializer
  %204 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %203, <3 x float> %196, <3 x float> %143)
  br label %205

205:                                              ; preds = %154, %149, %142
  %206 = phi <3 x float> [ %204, %154 ], [ %143, %149 ], [ %143, %142 ]
  %207 = tail call float @air.fmax.f32(float %49, float 0.000000e+00) #6
  %208 = fsub float %52, %49
  %209 = tail call float @air.fmax.f32(float %208, float 0.000000e+00) #6
  %210 = getelementptr inbounds float, ptr addrspace(1) %1, i64 47
  %211 = load float, ptr addrspace(1) %210, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %212 = tail call i32 @air.convert.u.i32.f.f32(float %211) #6
  %213 = getelementptr inbounds float, ptr addrspace(1) %1, i64 48
  %214 = load float, ptr addrspace(1) %213, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %215 = tail call float @air.fmax.f32(float %214, float 0x3FB99999A0000000) #6
  %216 = fdiv float %39, %215
  %217 = tail call float @air.floor.f32(float %216) #6
  %218 = fsub float %216, %217
  %219 = fmul float %218, %218
  %220 = tail call float @llvm.fmuladd.f32(float %218, float -2.000000e+00, float 3.000000e+00) #7
  %221 = fmul float %219, %220
  %222 = tail call i32 @air.convert.s.i32.f.f32(float %217) #6
  %223 = mul i32 %222, -1640531527
  %224 = xor i32 %223, %212
  %225 = lshr i32 %224, 16
  %226 = xor i32 %225, %224
  %227 = mul i32 %226, 2146121005
  %228 = lshr i32 %227, 15
  %229 = xor i32 %228, %227
  %230 = mul i32 %229, -2073254261
  %231 = lshr i32 %230, 16
  %232 = xor i32 %231, %230
  %233 = tail call float @air.convert.f.f32.u.i32(i32 %232) #6
  %234 = fmul float %233, 0x3DF0000000000000
  %235 = add i32 %223, -1640531527
  %236 = xor i32 %235, %212
  %237 = lshr i32 %236, 16
  %238 = xor i32 %237, %236
  %239 = mul i32 %238, 2146121005
  %240 = lshr i32 %239, 15
  %241 = xor i32 %240, %239
  %242 = mul i32 %241, -2073254261
  %243 = lshr i32 %242, 16
  %244 = xor i32 %243, %242
  %245 = tail call float @air.convert.f.f32.u.i32(i32 %244) #6
  %246 = fmul float %245, 0x3DF0000000000000
  %247 = tail call float @air.mix.f32(float %234, float %246, float %221) #6
  %248 = fmul float %215, 0x3FD7AE1480000000
  %249 = fdiv float %39, %248
  %250 = xor i32 %212, -1515870811
  %251 = tail call float @air.floor.f32(float %249) #6
  %252 = fsub float %249, %251
  %253 = fmul float %252, %252
  %254 = tail call float @llvm.fmuladd.f32(float %252, float -2.000000e+00, float 3.000000e+00) #7
  %255 = fmul float %253, %254
  %256 = tail call i32 @air.convert.s.i32.f.f32(float %251) #6
  %257 = mul i32 %256, -1640531527
  %258 = xor i32 %257, %250
  %259 = lshr i32 %258, 16
  %260 = xor i32 %259, %258
  %261 = mul i32 %260, 2146121005
  %262 = lshr i32 %261, 15
  %263 = xor i32 %262, %261
  %264 = mul i32 %263, -2073254261
  %265 = lshr i32 %264, 16
  %266 = xor i32 %265, %264
  %267 = tail call float @air.convert.f.f32.u.i32(i32 %266) #6
  %268 = fmul float %267, 0x3DF0000000000000
  %269 = add i32 %257, -1640531527
  %270 = xor i32 %269, %250
  %271 = lshr i32 %270, 16
  %272 = xor i32 %271, %270
  %273 = mul i32 %272, 2146121005
  %274 = lshr i32 %273, 15
  %275 = xor i32 %274, %273
  %276 = mul i32 %275, -2073254261
  %277 = lshr i32 %276, 16
  %278 = xor i32 %277, %276
  %279 = tail call float @air.convert.f.f32.u.i32(i32 %278) #6
  %280 = fmul float %279, 0x3DF0000000000000
  %281 = tail call float @air.mix.f32(float %268, float %280, float %255) #6
  %282 = fmul float %281, 0x3FD99999A0000000
  %283 = tail call float @llvm.fmuladd.f32(float %247, float 0x3FE3333340000000, float %282)
  %284 = getelementptr inbounds float, ptr addrspace(1) %1, i64 45
  %285 = load float, ptr addrspace(1) %284, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %286 = tail call float @air.fmin.f32(float %207, float %209) #6
  %287 = fneg float %286
  %288 = getelementptr inbounds float, ptr addrspace(1) %1, i64 46
  %289 = load float, ptr addrspace(1) %288, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %290 = tail call float @air.fmax.f32(float %289, float 0x3F50624DE0000000) #6
  %291 = fdiv float %287, %290
  %292 = tail call float @air.exp.f32(float %291) #6
  %293 = fmul float %285, %292
  %294 = tail call float @llvm.fmuladd.f32(float %283, float 0x3FE6666660000000, float 0x3FD3333340000000)
  %295 = fmul float %294, %293
  %296 = getelementptr inbounds float, ptr addrspace(1) %1, i64 52
  %297 = load float, ptr addrspace(1) %296, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %298 = tail call i32 @air.convert.u.i32.f.f32(float %297) #6
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %314

300:                                              ; preds = %314, %205
  %301 = phi float [ %295, %205 ], [ %351, %314 ]
  %302 = insertelement <3 x float> poison, float %301, i64 0
  %303 = shufflevector <3 x float> %302, <3 x float> poison, <3 x i32> zeroinitializer
  %304 = getelementptr inbounds float, ptr addrspace(1) %1, i64 49
  %305 = load float, ptr addrspace(1) %304, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %306 = insertelement <3 x float> undef, float %305, i64 0
  %307 = getelementptr inbounds float, ptr addrspace(1) %1, i64 50
  %308 = load float, ptr addrspace(1) %307, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %309 = insertelement <3 x float> %306, float %308, i64 1
  %310 = getelementptr inbounds float, ptr addrspace(1) %1, i64 51
  %311 = load float, ptr addrspace(1) %310, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %312 = insertelement <3 x float> %309, float %311, i64 2
  %313 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %303, <3 x float> %312, <3 x float> %206)
  br label %354

314:                                              ; preds = %314, %205
  %315 = phi i32 [ %352, %314 ], [ 0, %205 ]
  %316 = phi float [ %351, %314 ], [ %295, %205 ]
  %317 = mul i32 %315, 5
  %318 = add i32 %317, 200
  %319 = add i32 %317, 201
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %320
  %322 = load float, ptr addrspace(1) %321, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %323 = fcmp olt float %322, 5.000000e-01
  %324 = select i1 %323, float %207, float %209
  %325 = zext i32 %318 to i64
  %326 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %325
  %327 = load float, ptr addrspace(1) %326, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %328 = fsub float %39, %327
  %329 = add i32 %317, 202
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %330
  %332 = load float, ptr addrspace(1) %331, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %333 = fneg float %328
  %334 = fmul float %328, %333
  %335 = add i32 %317, 203
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %336
  %338 = load float, ptr addrspace(1) %337, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %339 = fmul float %338, 2.000000e+00
  %340 = fmul float %338, %339
  %341 = fdiv float %334, %340
  %342 = tail call float @air.exp.f32(float %341) #6
  %343 = fmul float %332, %342
  %344 = fneg float %324
  %345 = add i32 %317, 204
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %346
  %348 = load float, ptr addrspace(1) %347, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %349 = fdiv float %344, %348
  %350 = tail call float @air.exp.f32(float %349) #6
  %351 = tail call float @llvm.fmuladd.f32(float %343, float %350, float %316)
  %352 = add nuw i32 %315, 1
  %353 = icmp eq i32 %352, %298
  br i1 %353, label %300, label %314, !llvm.loop !40

354:                                              ; preds = %300, %56
  %355 = phi <3 x float> [ %313, %300 ], [ zeroinitializer, %56 ]
  %356 = extractelement <3 x float> %355, i64 0
  %357 = mul i32 %6, 3
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %358
  store float %356, ptr addrspace(1) %359, align 4, !tbaa !34, !alias.scope !42, !noalias !43
  %360 = extractelement <3 x float> %355, i64 1
  %361 = add i32 %357, 1
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %362
  store float %360, ptr addrspace(1) %363, align 4, !tbaa !34, !alias.scope !42, !noalias !43
  %364 = extractelement <3 x float> %355, i64 2
  %365 = add i32 %357, 2
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %366
  store float %364, ptr addrspace(1) %367, align 4, !tbaa !34, !alias.scope !42, !noalias !43
  br label %368

368:                                              ; preds = %354, %5
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.exp.f32(float) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.convert.u.i32.f.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fmax.f32(float, float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fmin.f32(float, float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.mix.f32(float, float, float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.u.i32(i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.convert.s.i32.f.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.floor.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read)
define internal fastcc <3 x float> @_ZL12sample_framePU9MTLdeviceKfffjjfj(ptr addrspace(1) noundef readonly captures(none) %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, i32 noundef %6) unnamed_addr #3 {
  %8 = tail call float @air.convert.f.f32.u.i32(i32 %3) #6
  %9 = fadd float %8, -1.000000e+00
  %10 = tail call float @air.clamp.f32(float %1, float 0.000000e+00, float %9) #6
  %11 = tail call float @air.convert.f.f32.u.i32(i32 %4) #6
  %12 = fadd float %11, -1.000000e+00
  %13 = tail call float @air.clamp.f32(float %2, float 0.000000e+00, float %12) #6
  %14 = fsub float %13, %5
  %15 = tail call float @air.convert.f.f32.u.i32(i32 %6) #6
  %16 = fadd float %15, -1.000000e+00
  %17 = tail call float @air.clamp.f32(float %14, float 0.000000e+00, float %16) #6
  %18 = tail call float @air.floor.f32(float %10) #6
  %19 = tail call i32 @air.convert.u.i32.f.f32(float %18) #6
  %20 = tail call float @air.floor.f32(float %17) #6
  %21 = tail call i32 @air.convert.u.i32.f.f32(float %20) #6
  %22 = add i32 %19, 1
  %23 = add i32 %3, -1
  %24 = tail call i32 @air.min.u.i32(i32 %22, i32 %23) #6
  %25 = add i32 %21, 1
  %26 = add i32 %6, -1
  %27 = tail call i32 @air.min.u.i32(i32 %25, i32 %26) #6
  %28 = tail call float @air.convert.f.f32.u.i32(i32 %19) #6
  %29 = fsub float %10, %28
  %30 = tail call float @air.convert.f.f32.u.i32(i32 %21) #6
  %31 = fsub float %17, %30
  %32 = mul i32 %21, %3
  %33 = add i32 %32, %19
  %34 = mul i32 %33, 3
  %35 = add i32 %32, %24
  %36 = mul i32 %35, 3
  %37 = mul i32 %27, %3
  %38 = add i32 %37, %19
  %39 = mul i32 %38, 3
  %40 = add i32 %37, %24
  %41 = mul i32 %40, 3
  %42 = zext i32 %34 to i64
  %43 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %42
  %44 = load float, ptr addrspace(1) %43, align 4, !tbaa !34
  %45 = insertelement <3 x float> undef, float %44, i64 0
  %46 = add i32 %34, 1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %47
  %49 = load float, ptr addrspace(1) %48, align 4, !tbaa !34
  %50 = insertelement <3 x float> %45, float %49, i64 1
  %51 = add i32 %34, 2
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %52
  %54 = load float, ptr addrspace(1) %53, align 4, !tbaa !34
  %55 = insertelement <3 x float> %50, float %54, i64 2
  %56 = zext i32 %36 to i64
  %57 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %56
  %58 = load float, ptr addrspace(1) %57, align 4, !tbaa !34
  %59 = insertelement <3 x float> undef, float %58, i64 0
  %60 = add i32 %36, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %61
  %63 = load float, ptr addrspace(1) %62, align 4, !tbaa !34
  %64 = insertelement <3 x float> %59, float %63, i64 1
  %65 = add i32 %36, 2
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %66
  %68 = load float, ptr addrspace(1) %67, align 4, !tbaa !34
  %69 = insertelement <3 x float> %64, float %68, i64 2
  %70 = zext i32 %39 to i64
  %71 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %70
  %72 = load float, ptr addrspace(1) %71, align 4, !tbaa !34
  %73 = insertelement <3 x float> undef, float %72, i64 0
  %74 = add i32 %39, 1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %75
  %77 = load float, ptr addrspace(1) %76, align 4, !tbaa !34
  %78 = insertelement <3 x float> %73, float %77, i64 1
  %79 = add i32 %39, 2
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %80
  %82 = load float, ptr addrspace(1) %81, align 4, !tbaa !34
  %83 = insertelement <3 x float> %78, float %82, i64 2
  %84 = zext i32 %41 to i64
  %85 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %84
  %86 = load float, ptr addrspace(1) %85, align 4, !tbaa !34
  %87 = insertelement <3 x float> undef, float %86, i64 0
  %88 = add i32 %41, 1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %89
  %91 = load float, ptr addrspace(1) %90, align 4, !tbaa !34
  %92 = insertelement <3 x float> %87, float %91, i64 1
  %93 = add i32 %41, 2
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %94
  %96 = load float, ptr addrspace(1) %95, align 4, !tbaa !34
  %97 = insertelement <3 x float> %92, float %96, i64 2
  %98 = insertelement <3 x float> poison, float %29, i64 0
  %99 = shufflevector <3 x float> %98, <3 x float> poison, <3 x i32> zeroinitializer
  %100 = tail call <3 x float> @air.mix.v3f32(<3 x float> %55, <3 x float> %69, <3 x float> %99) #6
  %101 = tail call <3 x float> @air.mix.v3f32(<3 x float> %83, <3 x float> %97, <3 x float> %99) #6
  %102 = insertelement <3 x float> poison, float %31, i64 0
  %103 = shufflevector <3 x float> %102, <3 x float> poison, <3 x i32> zeroinitializer
  %104 = tail call <3 x float> @air.mix.v3f32(<3 x float> %100, <3 x float> %101, <3 x float> %103) #6
  ret <3 x float> %104
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare <3 x float> @air.mix.v3f32(<3 x float>, <3 x float>, <3 x float>) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.min.u.i32(i32, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.clamp.f32(float, float, float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.asin.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.sqrt.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read)
define internal fastcc float @_ZL8gate_sdfDv2_fPU9MTLdeviceKf(<2 x float> noundef %0, ptr addrspace(1) noundef readonly captures(none) %1) unnamed_addr #4 {
  %3 = alloca [4 x <2 x float>], align 8
  %4 = getelementptr inbounds float, ptr addrspace(1) %1, i64 16
  %5 = load float, ptr addrspace(1) %4, align 4, !tbaa !34
  %6 = fmul float %5, 5.000000e-01
  %7 = getelementptr inbounds float, ptr addrspace(1) %1, i64 17
  %8 = load float, ptr addrspace(1) %7, align 4, !tbaa !34
  %9 = fmul float %8, 5.000000e-01
  %10 = extractelement <2 x float> %0, i64 0
  %11 = getelementptr inbounds float, ptr addrspace(1) %1, i64 14
  %12 = load float, ptr addrspace(1) %11, align 4, !tbaa !34
  %13 = fadd float %6, %12
  %14 = fsub float %10, %13
  %15 = extractelement <2 x float> %0, i64 1
  %16 = getelementptr inbounds float, ptr addrspace(1) %1, i64 15
  %17 = load float, ptr addrspace(1) %16, align 4, !tbaa !34
  %18 = fadd float %9, %17
  %19 = fsub float %15, %18
  %20 = fcmp ogt float %14, 0.000000e+00
  %21 = fcmp ogt float %19, 0.000000e+00
  br i1 %20, label %22, label %27

22:                                               ; preds = %2
  br i1 %21, label %23, label %25

23:                                               ; preds = %22
  %24 = getelementptr inbounds float, ptr addrspace(1) %1, i64 97
  br label %32

25:                                               ; preds = %22
  %26 = getelementptr inbounds float, ptr addrspace(1) %1, i64 96
  br label %32

27:                                               ; preds = %2
  br i1 %21, label %28, label %30

28:                                               ; preds = %27
  %29 = getelementptr inbounds float, ptr addrspace(1) %1, i64 98
  br label %32

30:                                               ; preds = %27
  %31 = getelementptr inbounds float, ptr addrspace(1) %1, i64 95
  br label %32

32:                                               ; preds = %30, %28, %25, %23
  %33 = phi ptr addrspace(1) [ %24, %23 ], [ %26, %25 ], [ %29, %28 ], [ %31, %30 ]
  %34 = load float, ptr addrspace(1) %33, align 4, !tbaa !34
  %35 = tail call float @air.fabs.f32(float %14) #6
  %36 = fsub float %6, %34
  %37 = fsub float %35, %36
  %38 = tail call float @air.fabs.f32(float %19) #6
  %39 = fsub float %9, %34
  %40 = fsub float %38, %39
  %41 = insertelement <2 x float> undef, float %37, i64 0
  %42 = insertelement <2 x float> %41, float %40, i64 1
  %43 = tail call <2 x float> @air.fmax.v2f32(<2 x float> %42, <2 x float> zeroinitializer) #6
  %44 = tail call float @air.dot.v2f32(<2 x float> %43, <2 x float> %43) #6
  %45 = bitcast float %44 to i32
  %46 = and i32 %45, 2147483647
  %47 = icmp eq i32 %46, 2139095040
  br i1 %47, label %48, label %53

48:                                               ; preds = %32
  %49 = fmul <2 x float> %43, splat (float 0x3BD0000000000000)
  %50 = tail call float @air.dot.v2f32(<2 x float> %49, <2 x float> %49) #6
  %51 = tail call float @air.sqrt.f32(float %50) #6
  %52 = fmul float %51, 0x4410000000000000
  br label %62

53:                                               ; preds = %32
  %54 = fcmp olt float %44, 0x3980000000000000
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = fmul <2 x float> %43, splat (float 0x43F0000000000000)
  %57 = tail call float @air.dot.v2f32(<2 x float> %56, <2 x float> %56) #6
  %58 = tail call float @air.sqrt.f32(float %57) #6
  %59 = fmul float %58, 0x3BF0000000000000
  br label %62

60:                                               ; preds = %53
  %61 = tail call float @air.sqrt.f32(float %44) #6
  br label %62

62:                                               ; preds = %60, %55, %48
  %63 = phi float [ %52, %48 ], [ %59, %55 ], [ %61, %60 ]
  %64 = tail call float @air.fmax.f32(float %37, float %40) #6
  %65 = tail call float @air.fmin.f32(float %64, float 0.000000e+00) #6
  %66 = fadd float %63, %65
  %67 = fsub float %66, %34
  %68 = fcmp ogt float %37, %40
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = select i1 %20, i32 1, i32 3
  %71 = fadd float %9, %19
  br label %76

72:                                               ; preds = %62
  %73 = fcmp ogt float %19, 0.000000e+00
  %74 = select i1 %73, i32 2, i32 0
  %75 = fadd float %6, %14
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi float [ %9, %69 ], [ %6, %72 ]
  %78 = phi float [ %71, %69 ], [ %75, %72 ]
  %79 = phi i32 [ %70, %69 ], [ %74, %72 ]
  %80 = fmul float %77, 2.000000e+00
  %81 = fdiv float %78, %80
  %82 = tail call float @air.clamp.f32(float %81, float 0.000000e+00, float 1.000000e+00) #6
  %83 = mul nuw nsw i32 %79, 3
  %84 = add nuw nsw i32 %83, 20
  %85 = or i32 %83, 32
  br label %102

86:                                               ; preds = %102
  %87 = fmul float %82, 0x400921FB60000000
  %88 = tail call float @air.sin.f32(float %87) #6
  %89 = fneg float %118
  %90 = tail call float @llvm.fmuladd.f32(float %89, float %88, float %67)
  %91 = getelementptr inbounds float, ptr addrspace(1) %1, i64 99
  %92 = load float, ptr addrspace(1) %91, align 4, !tbaa !34
  %93 = tail call i32 @air.convert.u.i32.f.f32(float %92) #6
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %120, label %95

95:                                               ; preds = %86
  %96 = getelementptr inbounds float, ptr addrspace(1) %1, i64 100
  %97 = bitcast ptr %3 to ptr
  %98 = getelementptr inbounds [4 x <2 x float>], ptr %3, i64 0, i64 0
  %99 = getelementptr inbounds [4 x <2 x float>], ptr %3, i64 0, i64 1
  %100 = getelementptr inbounds [4 x <2 x float>], ptr %3, i64 0, i64 2
  %101 = getelementptr inbounds [4 x <2 x float>], ptr %3, i64 0, i64 3
  br label %125

102:                                              ; preds = %102, %76
  %103 = phi float [ 0.000000e+00, %76 ], [ %118, %102 ]
  %104 = phi i32 [ 0, %76 ], [ %109, %102 ]
  %105 = add nuw nsw i32 %84, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %106
  %108 = load float, ptr addrspace(1) %107, align 4, !tbaa !34
  %109 = add nuw nsw i32 %104, 1
  %110 = tail call float @air.convert.f.f32.u.i32(i32 %109) #6
  %111 = fmul float %110, 0x400921FB60000000
  %112 = add nuw nsw i32 %85, %104
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %113
  %115 = load float, ptr addrspace(1) %114, align 4, !tbaa !34
  %116 = tail call float @llvm.fmuladd.f32(float %111, float %82, float %115)
  %117 = tail call float @air.sin.f32(float %116) #6
  %118 = tail call float @llvm.fmuladd.f32(float %108, float %117, float %103)
  %119 = icmp eq i32 %109, 3
  br i1 %119, label %86, label %102, !llvm.loop !44

120:                                              ; preds = %261, %86
  %121 = phi float [ %90, %86 ], [ %262, %261 ]
  %122 = getelementptr inbounds float, ptr addrspace(1) %1, i64 180
  %123 = load float, ptr addrspace(1) %122, align 4, !tbaa !34
  %124 = fcmp ogt float %123, 0.000000e+00
  br i1 %124, label %265, label %340

125:                                              ; preds = %261, %95
  %126 = phi float [ %90, %95 ], [ %262, %261 ]
  %127 = phi i32 [ 0, %95 ], [ %263, %261 ]
  %128 = mul i32 %127, 10
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds float, ptr addrspace(1) %96, i64 %129
  %131 = getelementptr inbounds float, ptr addrspace(1) %130, i64 9
  %132 = load float, ptr addrspace(1) %131, align 4, !tbaa !34
  %133 = tail call float @air.fabs.f32(float %132) #6
  %134 = fcmp ogt float %133, 1.500000e+00
  br i1 %134, label %135, label %175

135:                                              ; preds = %125
  %136 = getelementptr inbounds float, ptr addrspace(1) %130, i64 2
  %137 = load float, ptr addrspace(1) %136, align 4, !tbaa !34
  %138 = insertelement <2 x float> undef, float %137, i64 0
  %139 = getelementptr inbounds float, ptr addrspace(1) %130, i64 3
  %140 = load float, ptr addrspace(1) %139, align 4, !tbaa !34
  %141 = insertelement <2 x float> %138, float %140, i64 1
  %142 = tail call <2 x float> @air.fmax.v2f32(<2 x float> %141, <2 x float> splat (float 0x3F1A36E2E0000000)) #6
  %143 = load float, ptr addrspace(1) %130, align 4, !tbaa !34
  %144 = insertelement <2 x float> undef, float %143, i64 0
  %145 = getelementptr inbounds float, ptr addrspace(1) %130, i64 1
  %146 = load float, ptr addrspace(1) %145, align 4, !tbaa !34
  %147 = insertelement <2 x float> %144, float %146, i64 1
  %148 = fsub <2 x float> %0, %147
  %149 = fdiv <2 x float> %148, %142
  %150 = tail call float @air.dot.v2f32(<2 x float> %149, <2 x float> %149) #6
  %151 = bitcast float %150 to i32
  %152 = and i32 %151, 2147483647
  %153 = icmp eq i32 %152, 2139095040
  br i1 %153, label %154, label %159

154:                                              ; preds = %135
  %155 = fmul <2 x float> %149, splat (float 0x3BD0000000000000)
  %156 = tail call float @air.dot.v2f32(<2 x float> %155, <2 x float> %155) #6
  %157 = tail call float @air.sqrt.f32(float %156) #6
  %158 = fmul float %157, 0x4410000000000000
  br label %168

159:                                              ; preds = %135
  %160 = fcmp olt float %150, 0x3980000000000000
  br i1 %160, label %161, label %166

161:                                              ; preds = %159
  %162 = fmul <2 x float> %149, splat (float 0x43F0000000000000)
  %163 = tail call float @air.dot.v2f32(<2 x float> %162, <2 x float> %162) #6
  %164 = tail call float @air.sqrt.f32(float %163) #6
  %165 = fmul float %164, 0x3BF0000000000000
  br label %168

166:                                              ; preds = %159
  %167 = tail call float @air.sqrt.f32(float %150) #6
  br label %168

168:                                              ; preds = %166, %161, %154
  %169 = phi float [ %158, %154 ], [ %165, %161 ], [ %167, %166 ]
  %170 = fadd float %169, -1.000000e+00
  %171 = extractelement <2 x float> %142, i64 0
  %172 = extractelement <2 x float> %142, i64 1
  %173 = tail call float @air.fmin.f32(float %171, float %172) #6
  %174 = fmul float %170, %173
  br label %253

175:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(ptr %3)
  %176 = load float, ptr addrspace(1) %130, align 4, !tbaa !34
  %177 = insertelement <2 x float> undef, float %176, i64 0
  %178 = getelementptr inbounds float, ptr addrspace(1) %130, i64 1
  %179 = load float, ptr addrspace(1) %178, align 4, !tbaa !34
  %180 = insertelement <2 x float> %177, float %179, i64 1
  store <2 x float> %180, ptr %98, align 8, !tbaa !45
  %181 = getelementptr inbounds float, ptr addrspace(1) %130, i64 2
  %182 = load float, ptr addrspace(1) %181, align 4, !tbaa !34
  %183 = insertelement <2 x float> undef, float %182, i64 0
  %184 = getelementptr inbounds float, ptr addrspace(1) %130, i64 3
  %185 = load float, ptr addrspace(1) %184, align 4, !tbaa !34
  %186 = insertelement <2 x float> %183, float %185, i64 1
  store <2 x float> %186, ptr %99, align 8, !tbaa !45
  %187 = getelementptr inbounds float, ptr addrspace(1) %130, i64 4
  %188 = load float, ptr addrspace(1) %187, align 4, !tbaa !34
  %189 = insertelement <2 x float> undef, float %188, i64 0
  %190 = getelementptr inbounds float, ptr addrspace(1) %130, i64 5
  %191 = load float, ptr addrspace(1) %190, align 4, !tbaa !34
  %192 = insertelement <2 x float> %189, float %191, i64 1
  store <2 x float> %192, ptr %100, align 8, !tbaa !45
  %193 = getelementptr inbounds float, ptr addrspace(1) %130, i64 6
  %194 = load float, ptr addrspace(1) %193, align 4, !tbaa !34
  %195 = insertelement <2 x float> undef, float %194, i64 0
  %196 = getelementptr inbounds float, ptr addrspace(1) %130, i64 7
  %197 = load float, ptr addrspace(1) %196, align 4, !tbaa !34
  %198 = insertelement <2 x float> %195, float %197, i64 1
  store <2 x float> %198, ptr %101, align 8, !tbaa !45
  %199 = fsub <2 x float> %0, %180
  %200 = tail call float @air.dot.v2f32(<2 x float> %199, <2 x float> %199) #6
  br label %201

201:                                              ; preds = %242, %175
  %202 = phi <2 x float> [ %198, %175 ], [ %208, %242 ]
  %203 = phi float [ %200, %175 ], [ %244, %242 ]
  %204 = phi float [ 1.000000e+00, %175 ], [ %243, %242 ]
  %205 = phi i32 [ 0, %175 ], [ %245, %242 ]
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [4 x <2 x float>], ptr %3, i64 0, i64 %206
  %208 = load <2 x float>, ptr %207, align 8, !tbaa !45
  %209 = fsub <2 x float> %202, %208
  %210 = tail call float @air.dot.v2f32(<2 x float> %209, <2 x float> %209) #6
  %211 = fcmp olt float %210, 0x3D71979980000000
  br i1 %211, label %242, label %212

212:                                              ; preds = %201
  %213 = fsub <2 x float> %0, %208
  %214 = tail call float @air.dot.v2f32(<2 x float> %213, <2 x float> %209) #6
  %215 = fdiv float %214, %210
  %216 = tail call float @air.clamp.f32(float %215, float 0.000000e+00, float 1.000000e+00) #6
  %217 = insertelement <2 x float> poison, float %216, i64 0
  %218 = shufflevector <2 x float> %217, <2 x float> poison, <2 x i32> zeroinitializer
  %219 = fneg <2 x float> %209
  %220 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %219, <2 x float> %218, <2 x float> %213) #7
  %221 = tail call float @air.dot.v2f32(<2 x float> %220, <2 x float> %220) #6
  %222 = tail call float @air.fmin.f32(float %203, float %221) #6
  %223 = extractelement <2 x float> %208, i64 1
  %224 = fcmp oge float %15, %223
  %225 = extractelement <2 x float> %202, i64 1
  %226 = fcmp olt float %15, %225
  %227 = extractelement <2 x float> %209, i64 0
  %228 = extractelement <2 x float> %213, i64 1
  %229 = fmul float %227, %228
  %230 = extractelement <2 x float> %209, i64 1
  %231 = extractelement <2 x float> %213, i64 0
  %232 = fmul float %230, %231
  %233 = fcmp ogt float %229, %232
  %234 = select i1 %224, i1 %226, i1 false
  %235 = select i1 %234, i1 %233, i1 false
  %236 = xor i1 %235, true
  %237 = select i1 %224, i1 true, i1 %226
  %238 = select i1 %237, i1 true, i1 %233
  %239 = select i1 %236, i1 %238, i1 false
  %240 = fneg float %204
  %241 = select i1 %239, float %204, float %240
  br label %242

242:                                              ; preds = %212, %201
  %243 = phi float [ %204, %201 ], [ %241, %212 ]
  %244 = phi float [ %203, %201 ], [ %222, %212 ]
  %245 = add nuw nsw i32 %205, 1
  %246 = icmp eq i32 %245, 4
  br i1 %246, label %247, label %201, !llvm.loop !46

247:                                              ; preds = %242
  %248 = tail call float @air.sqrt.f32(float %244) #6
  %249 = fmul float %243, %248
  call void @llvm.lifetime.end.p0(ptr %3)
  %250 = getelementptr inbounds float, ptr addrspace(1) %130, i64 8
  %251 = load float, ptr addrspace(1) %250, align 4, !tbaa !34
  %252 = fsub float %249, %251
  br label %253

253:                                              ; preds = %247, %168
  %254 = phi float [ %174, %168 ], [ %252, %247 ]
  %255 = fcmp ogt float %132, 0.000000e+00
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = tail call float @air.fmin.f32(float %126, float %254) #6
  br label %261

258:                                              ; preds = %253
  %259 = fneg float %254
  %260 = tail call float @air.fmax.f32(float %126, float %259) #6
  br label %261

261:                                              ; preds = %258, %256
  %262 = phi float [ %257, %256 ], [ %260, %258 ]
  %263 = add nuw i32 %127, 1
  %264 = icmp eq i32 %263, %93
  br i1 %264, label %120, label %125, !llvm.loop !47

265:                                              ; preds = %120
  %266 = getelementptr inbounds float, ptr addrspace(1) %1, i64 182
  %267 = load float, ptr addrspace(1) %266, align 4, !tbaa !34
  %268 = tail call i32 @air.convert.u.i32.f.f32(float %267) #6
  %269 = getelementptr inbounds float, ptr addrspace(1) %1, i64 181
  %270 = load float, ptr addrspace(1) %269, align 4, !tbaa !34
  %271 = tail call float @air.fmax.f32(float %270, float 0x3F50624DE0000000) #6
  %272 = fdiv float %10, %271
  %273 = tail call float @air.floor.f32(float %272) #6
  %274 = fsub float %272, %273
  %275 = fmul float %274, %274
  %276 = tail call float @llvm.fmuladd.f32(float %274, float -2.000000e+00, float 3.000000e+00) #7
  %277 = fmul float %275, %276
  %278 = tail call i32 @air.convert.s.i32.f.f32(float %273) #6
  %279 = mul i32 %278, -1640531527
  %280 = xor i32 %279, %268
  %281 = lshr i32 %280, 16
  %282 = xor i32 %281, %280
  %283 = mul i32 %282, 2146121005
  %284 = lshr i32 %283, 15
  %285 = xor i32 %284, %283
  %286 = mul i32 %285, -2073254261
  %287 = lshr i32 %286, 16
  %288 = xor i32 %287, %286
  %289 = tail call float @air.convert.f.f32.u.i32(i32 %288) #6
  %290 = fmul float %289, 0x3DF0000000000000
  %291 = add i32 %279, -1640531527
  %292 = xor i32 %291, %268
  %293 = lshr i32 %292, 16
  %294 = xor i32 %293, %292
  %295 = mul i32 %294, 2146121005
  %296 = lshr i32 %295, 15
  %297 = xor i32 %296, %295
  %298 = mul i32 %297, -2073254261
  %299 = lshr i32 %298, 16
  %300 = xor i32 %299, %298
  %301 = tail call float @air.convert.f.f32.u.i32(i32 %300) #6
  %302 = fmul float %301, 0x3DF0000000000000
  %303 = tail call float @air.mix.f32(float %290, float %302, float %277) #6
  %304 = fdiv float %15, %271
  %305 = xor i32 %268, 1540483477
  %306 = tail call float @air.floor.f32(float %304) #6
  %307 = fsub float %304, %306
  %308 = fmul float %307, %307
  %309 = tail call float @llvm.fmuladd.f32(float %307, float -2.000000e+00, float 3.000000e+00) #7
  %310 = fmul float %308, %309
  %311 = tail call i32 @air.convert.s.i32.f.f32(float %306) #6
  %312 = mul i32 %311, -1640531527
  %313 = xor i32 %312, %305
  %314 = lshr i32 %313, 16
  %315 = xor i32 %314, %313
  %316 = mul i32 %315, 2146121005
  %317 = lshr i32 %316, 15
  %318 = xor i32 %317, %316
  %319 = mul i32 %318, -2073254261
  %320 = lshr i32 %319, 16
  %321 = xor i32 %320, %319
  %322 = tail call float @air.convert.f.f32.u.i32(i32 %321) #6
  %323 = fmul float %322, 0x3DF0000000000000
  %324 = add i32 %312, -1640531527
  %325 = xor i32 %324, %305
  %326 = lshr i32 %325, 16
  %327 = xor i32 %326, %325
  %328 = mul i32 %327, 2146121005
  %329 = lshr i32 %328, 15
  %330 = xor i32 %329, %328
  %331 = mul i32 %330, -2073254261
  %332 = lshr i32 %331, 16
  %333 = xor i32 %332, %331
  %334 = tail call float @air.convert.f.f32.u.i32(i32 %333) #6
  %335 = fmul float %334, 0x3DF0000000000000
  %336 = tail call float @air.mix.f32(float %323, float %335, float %310) #6
  %337 = fadd float %303, %336
  %338 = fadd float %337, -1.000000e+00
  %339 = tail call float @llvm.fmuladd.f32(float %123, float %338, float %121)
  br label %340

340:                                              ; preds = %265, %120
  %341 = phi float [ %339, %265 ], [ %121, %120 ]
  ret float %341
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.dot.v2f32(<2 x float>, <2 x float>) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare <2 x float> @air.fmax.v2f32(<2 x float>, <2 x float>) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fabs.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.sin.f32(float) local_unnamed_addr #2

declare void @llvm.lifetime.end.i64(i64)

declare void @llvm.lifetime.start.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

attributes #0 = { convergent mustprogress nofree nosync nounwind "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(read) "frame-pointer"="all" "min-legal-vector-width"="64" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }

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
!15 = !{ptr @spk_overscan_canvas, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"frame"}
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
!29 = distinct !{!29, !"air-alias-scopes(spk_overscan_canvas)"}
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
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!33}
!43 = !{!31, !32, !28}
!44 = distinct !{!44, !41}
!45 = !{!25, !25, i64 0}
!46 = distinct !{!46, !41}
!47 = distinct !{!47, !41}
