; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/008.bc'
source_filename = "spk_mask_epilogue"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_mask_epilogue(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %4, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %5, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %6, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %7, <3 x i32> noundef %8) local_unnamed_addr #0 {
  %10 = load i32, ptr addrspace(1) %6, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %11 = extractelement <3 x i32> %8, i64 0
  %12 = icmp ult i32 %11, %10
  br i1 %12, label %13, label %265

13:                                               ; preds = %9
  %14 = getelementptr inbounds i32, ptr addrspace(1) %6, i64 6
  %15 = load i32, ptr addrspace(1) %14, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %16 = getelementptr inbounds i32, ptr addrspace(1) %6, i64 5
  %17 = load i32, ptr addrspace(1) %16, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %18 = getelementptr inbounds i32, ptr addrspace(1) %6, i64 4
  %19 = load i32, ptr addrspace(1) %18, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %20 = getelementptr inbounds i32, ptr addrspace(1) %6, i64 3
  %21 = load i32, ptr addrspace(1) %20, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %22 = getelementptr inbounds i32, ptr addrspace(1) %6, i64 2
  %23 = load i32, ptr addrspace(1) %22, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %24 = getelementptr inbounds i32, ptr addrspace(1) %6, i64 1
  %25 = load i32, ptr addrspace(1) %24, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %26 = mul i32 %11, 3
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %27
  %29 = load float, ptr addrspace(1) %28, align 4, !tbaa !42, !alias.scope !44, !noalias !45
  %30 = add i32 %26, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %31
  %33 = load float, ptr addrspace(1) %32, align 4, !tbaa !42, !alias.scope !44, !noalias !45
  %34 = add i32 %26, 2
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %35
  %37 = load float, ptr addrspace(1) %36, align 4, !tbaa !42, !alias.scope !44, !noalias !45
  %38 = icmp eq i32 %25, 0
  br i1 %38, label %76, label %39

39:                                               ; preds = %39, %13
  %40 = phi float [ %67, %39 ], [ 0.000000e+00, %13 ]
  %41 = phi float [ %70, %39 ], [ 0.000000e+00, %13 ]
  %42 = phi i32 [ %74, %39 ], [ 0, %13 ]
  %43 = phi float [ %73, %39 ], [ 0.000000e+00, %13 ]
  %44 = mul i32 %42, 3
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %45
  %47 = load float, ptr addrspace(1) %46, align 4, !tbaa !42, !alias.scope !46, !noalias !47
  %48 = add i32 %44, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %49
  %51 = load float, ptr addrspace(1) %50, align 4, !tbaa !42, !alias.scope !46, !noalias !47
  %52 = fmul float %33, %51
  %53 = tail call float @llvm.fmuladd.f32(float %29, float %47, float %52) #3
  %54 = add i32 %44, 2
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %55
  %57 = load float, ptr addrspace(1) %56, align 4, !tbaa !42, !alias.scope !46, !noalias !47
  %58 = tail call float @llvm.fmuladd.f32(float %37, float %57, float %53) #3
  %59 = zext i32 %42 to i64
  %60 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %59
  %61 = load float, ptr addrspace(1) %60, align 4, !tbaa !42, !alias.scope !48, !noalias !49
  %62 = fadd float %61, %58
  %63 = fmul float %62, 0xC00A934F00000000
  %64 = tail call float @air.exp2.f32(float %63) #4
  %65 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %45
  %66 = load float, ptr addrspace(1) %65, align 4, !tbaa !42, !alias.scope !50, !noalias !51
  %67 = tail call float @llvm.fmuladd.f32(float %64, float %66, float %40) #3
  %68 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %49
  %69 = load float, ptr addrspace(1) %68, align 4, !tbaa !42, !alias.scope !50, !noalias !51
  %70 = tail call float @llvm.fmuladd.f32(float %64, float %69, float %41) #3
  %71 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %55
  %72 = load float, ptr addrspace(1) %71, align 4, !tbaa !42, !alias.scope !50, !noalias !51
  %73 = tail call float @llvm.fmuladd.f32(float %64, float %72, float %43) #3
  %74 = add nuw i32 %42, 1
  %75 = icmp eq i32 %74, %25
  br i1 %75, label %76, label %39, !llvm.loop !52

76:                                               ; preds = %39, %13
  %77 = phi float [ 0.000000e+00, %13 ], [ %73, %39 ]
  %78 = phi float [ 0.000000e+00, %13 ], [ %70, %39 ]
  %79 = phi float [ 0.000000e+00, %13 ], [ %67, %39 ]
  %80 = load float, ptr addrspace(1) %4, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %81 = fmul float %79, %80
  %82 = insertelement <3 x float> undef, float %81, i64 0
  %83 = getelementptr inbounds float, ptr addrspace(1) %4, i64 1
  %84 = load float, ptr addrspace(1) %83, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %85 = fmul float %78, %84
  %86 = insertelement <3 x float> %82, float %85, i64 1
  %87 = getelementptr inbounds float, ptr addrspace(1) %4, i64 2
  %88 = load float, ptr addrspace(1) %87, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %89 = fmul float %77, %88
  %90 = insertelement <3 x float> %86, float %89, i64 2
  %91 = urem i32 %11, %23
  %92 = udiv i32 %11, %23
  %93 = add i32 %92, %19
  %94 = tail call float @air.convert.f.f32.u.i32(i32 %91) #4
  %95 = fadd float %94, 5.000000e-01
  %96 = tail call float @air.convert.f.f32.u.i32(i32 %17) #4
  %97 = fmul float %95, %96
  %98 = tail call float @air.convert.f.f32.u.i32(i32 %23) #4
  %99 = fdiv float %97, %98
  %100 = fadd float %99, -5.000000e-01
  %101 = add i32 %17, -1
  %102 = tail call float @air.convert.f.f32.u.i32(i32 %101) #4
  %103 = tail call float @air.clamp.f32(float %100, float 0.000000e+00, float %102) #4
  %104 = tail call float @air.convert.f.f32.u.i32(i32 %93) #4
  %105 = fadd float %104, 5.000000e-01
  %106 = tail call float @air.convert.f.f32.u.i32(i32 %15) #4
  %107 = fmul float %105, %106
  %108 = tail call float @air.convert.f.f32.u.i32(i32 %21) #4
  %109 = fdiv float %107, %108
  %110 = fadd float %109, -5.000000e-01
  %111 = add i32 %15, -1
  %112 = tail call float @air.convert.f.f32.u.i32(i32 %111) #4
  %113 = tail call float @air.clamp.f32(float %110, float 0.000000e+00, float %112) #4
  %114 = tail call float @air.floor.f32(float %103) #4
  %115 = tail call i32 @air.convert.u.i32.f.f32(float %114) #4
  %116 = tail call float @air.floor.f32(float %113) #4
  %117 = tail call i32 @air.convert.u.i32.f.f32(float %116) #4
  %118 = add i32 %115, 1
  %119 = tail call i32 @air.min.u.i32(i32 %118, i32 %101) #4
  %120 = add i32 %117, 1
  %121 = tail call i32 @air.min.u.i32(i32 %120, i32 %111) #4
  %122 = tail call float @air.convert.f.f32.u.i32(i32 %115) #4
  %123 = fsub float %103, %122
  %124 = tail call float @air.convert.f.f32.u.i32(i32 %117) #4
  %125 = fsub float %113, %124
  %126 = mul i32 %117, %17
  %127 = add i32 %126, %115
  %128 = shl i32 %127, 1
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %129
  %131 = load float, ptr addrspace(1) %130, align 4, !tbaa !42, !alias.scope !56, !noalias !57
  %132 = insertelement <2 x float> undef, float %131, i64 0
  %133 = or i32 %128, 1
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %134
  %136 = load float, ptr addrspace(1) %135, align 4, !tbaa !42, !alias.scope !56, !noalias !57
  %137 = insertelement <2 x float> %132, float %136, i64 1
  %138 = add i32 %126, %119
  %139 = shl i32 %138, 1
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %140
  %142 = load float, ptr addrspace(1) %141, align 4, !tbaa !42, !alias.scope !56, !noalias !57
  %143 = insertelement <2 x float> undef, float %142, i64 0
  %144 = or i32 %139, 1
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %145
  %147 = load float, ptr addrspace(1) %146, align 4, !tbaa !42, !alias.scope !56, !noalias !57
  %148 = insertelement <2 x float> %143, float %147, i64 1
  %149 = mul i32 %121, %17
  %150 = add i32 %149, %115
  %151 = shl i32 %150, 1
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %152
  %154 = load float, ptr addrspace(1) %153, align 4, !tbaa !42, !alias.scope !56, !noalias !57
  %155 = insertelement <2 x float> undef, float %154, i64 0
  %156 = or i32 %151, 1
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %157
  %159 = load float, ptr addrspace(1) %158, align 4, !tbaa !42, !alias.scope !56, !noalias !57
  %160 = insertelement <2 x float> %155, float %159, i64 1
  %161 = add i32 %149, %119
  %162 = shl i32 %161, 1
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %163
  %165 = load float, ptr addrspace(1) %164, align 4, !tbaa !42, !alias.scope !56, !noalias !57
  %166 = insertelement <2 x float> undef, float %165, i64 0
  %167 = or i32 %162, 1
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %168
  %170 = load float, ptr addrspace(1) %169, align 4, !tbaa !42, !alias.scope !56, !noalias !57
  %171 = insertelement <2 x float> %166, float %170, i64 1
  %172 = insertelement <2 x float> poison, float %123, i64 0
  %173 = shufflevector <2 x float> %172, <2 x float> poison, <2 x i32> zeroinitializer
  %174 = tail call <2 x float> @air.mix.v2f32(<2 x float> %137, <2 x float> %148, <2 x float> %173) #4
  %175 = tail call <2 x float> @air.mix.v2f32(<2 x float> %160, <2 x float> %171, <2 x float> %173) #4
  %176 = insertelement <2 x float> poison, float %125, i64 0
  %177 = shufflevector <2 x float> %176, <2 x float> poison, <2 x i32> zeroinitializer
  %178 = tail call <2 x float> @air.mix.v2f32(<2 x float> %174, <2 x float> %175, <2 x float> %177) #4
  br label %179

179:                                              ; preds = %179, %76
  %180 = phi float [ 0.000000e+00, %76 ], [ %191, %179 ]
  %181 = phi i32 [ 0, %76 ], [ %192, %179 ]
  %182 = extractelement <3 x float> %90, i32 %181
  %183 = add nuw nsw i32 %181, 3
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %184
  %186 = load float, ptr addrspace(1) %185, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %187 = fmul float %182, %186
  %188 = tail call float @air.fmax.f32(float %187, float 0.000000e+00) #4
  %189 = tail call float @air.log2.f32(float %188) #4
  %190 = tail call float @air.fmax.f32(float %189, float -2.000000e+01) #4
  %191 = fadd float %180, %190
  %192 = add nuw nsw i32 %181, 1
  %193 = icmp eq i32 %192, 3
  br i1 %193, label %194, label %179, !llvm.loop !58

194:                                              ; preds = %179
  %195 = extractelement <2 x float> %178, i64 0
  %196 = fmul float %191, 0x3FD5555560000000
  %197 = extractelement <2 x float> %178, i64 1
  %198 = tail call float @llvm.fmuladd.f32(float %195, float %196, float %197)
  %199 = getelementptr inbounds float, ptr addrspace(1) %4, i64 11
  %200 = load float, ptr addrspace(1) %199, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %201 = fcmp une float %200, 0.000000e+00
  br i1 %201, label %202, label %216

202:                                              ; preds = %194
  %203 = getelementptr inbounds float, ptr addrspace(1) %4, i64 9
  %204 = load float, ptr addrspace(1) %203, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %205 = fcmp ogt float %204, %198
  br i1 %205, label %206, label %216

206:                                              ; preds = %202
  %207 = fsub float %204, %198
  %208 = getelementptr inbounds float, ptr addrspace(1) %4, i64 10
  %209 = load float, ptr addrspace(1) %208, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %210 = fmul float %207, %209
  %211 = fmul float %207, %207
  %212 = tail call float @llvm.fmuladd.f32(float %209, float %209, float %211) #3
  %213 = tail call float @air.rsqrt.f32(float %212) #4
  %214 = fmul float %210, %213
  %215 = fsub float %207, %214
  br label %234

216:                                              ; preds = %202, %194
  %217 = getelementptr inbounds float, ptr addrspace(1) %4, i64 14
  %218 = load float, ptr addrspace(1) %217, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %219 = fcmp une float %218, 0.000000e+00
  br i1 %219, label %220, label %234

220:                                              ; preds = %216
  %221 = getelementptr inbounds float, ptr addrspace(1) %4, i64 12
  %222 = load float, ptr addrspace(1) %221, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %223 = fcmp olt float %222, %198
  br i1 %223, label %224, label %234

224:                                              ; preds = %220
  %225 = fsub float %198, %222
  %226 = getelementptr inbounds float, ptr addrspace(1) %4, i64 13
  %227 = load float, ptr addrspace(1) %226, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %228 = fmul float %225, %227
  %229 = fmul float %225, %225
  %230 = tail call float @llvm.fmuladd.f32(float %227, float %227, float %229) #3
  %231 = tail call float @air.rsqrt.f32(float %230) #4
  %232 = fmul float %228, %231
  %233 = fsub float %232, %225
  br label %234

234:                                              ; preds = %224, %220, %216, %206
  %235 = phi float [ %215, %206 ], [ %233, %224 ], [ 0.000000e+00, %220 ], [ 0.000000e+00, %216 ]
  %236 = getelementptr inbounds float, ptr addrspace(1) %4, i64 15
  %237 = load float, ptr addrspace(1) %236, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %238 = fmul float %235, %237
  %239 = fmul float %235, %235
  %240 = tail call float @llvm.fmuladd.f32(float %237, float %237, float %239) #3
  %241 = tail call float @air.rsqrt.f32(float %240) #4
  %242 = fmul float %238, %241
  %243 = tail call float @air.exp2.f32(float %242) #4
  %244 = getelementptr inbounds float, ptr addrspace(1) %4, i64 6
  %245 = load float, ptr addrspace(1) %244, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %246 = tail call float @llvm.fmuladd.f32(float %243, float %81, float %245)
  %247 = tail call float @air.fmax.f32(float %246, float 0.000000e+00) #4
  %248 = fadd float %247, 0x3DDB7CDFE0000000
  %249 = getelementptr inbounds float, ptr addrspace(1) %4, i64 7
  %250 = load float, ptr addrspace(1) %249, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %251 = tail call float @llvm.fmuladd.f32(float %243, float %85, float %250)
  %252 = tail call float @air.fmax.f32(float %251, float 0.000000e+00) #4
  %253 = fadd float %252, 0x3DDB7CDFE0000000
  %254 = getelementptr inbounds float, ptr addrspace(1) %4, i64 8
  %255 = load float, ptr addrspace(1) %254, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %256 = tail call float @llvm.fmuladd.f32(float %243, float %89, float %255)
  %257 = tail call float @air.fmax.f32(float %256, float 0.000000e+00) #4
  %258 = fadd float %257, 0x3DDB7CDFE0000000
  %259 = tail call float @air.log10.f32(float %248) #4
  %260 = getelementptr inbounds float, ptr addrspace(1) %7, i64 %27
  store float %259, ptr addrspace(1) %260, align 4, !tbaa !42, !alias.scope !59, !noalias !60
  %261 = tail call float @air.log10.f32(float %253) #4
  %262 = getelementptr inbounds float, ptr addrspace(1) %7, i64 %31
  store float %261, ptr addrspace(1) %262, align 4, !tbaa !42, !alias.scope !59, !noalias !60
  %263 = tail call float @air.log10.f32(float %258) #4
  %264 = getelementptr inbounds float, ptr addrspace(1) %7, i64 %35
  store float %263, ptr addrspace(1) %264, align 4, !tbaa !42, !alias.scope !59, !noalias !60
  br label %265

265:                                              ; preds = %234, %9
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.log10.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fmax.f32(float, float) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.exp2.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.rsqrt.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.log2.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare <2 x float> @air.mix.v2f32(<2 x float>, <2 x float>, <2 x float>) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.u.i32(i32) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.min.u.i32(i32, i32) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.convert.u.i32.f.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.floor.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.clamp.f32(float, float, float) local_unnamed_addr #1

attributes #0 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }
attributes #4 = { nounwind willreturn memory(none) }

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
!15 = !{ptr @spk_mask_epilogue, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"cmy"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"chd"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"base"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"ixs"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"p"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"coef"}
!24 = !{i32 6, !"air.buffer", !"air.location_index", i32 6, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!25 = !{i32 7, !"air.buffer", !"air.location_index", i32 7, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!26 = !{i32 8, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C++ TBAA"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"air-alias-scope-arg(6)"}
!33 = distinct !{!33, !"air-alias-scopes(spk_mask_epilogue)"}
!34 = !{!35, !36, !37, !38, !39, !40, !41}
!35 = distinct !{!35, !33, !"air-alias-scope-arg(0)"}
!36 = distinct !{!36, !33, !"air-alias-scope-arg(1)"}
!37 = distinct !{!37, !33, !"air-alias-scope-arg(2)"}
!38 = distinct !{!38, !33, !"air-alias-scope-arg(3)"}
!39 = distinct !{!39, !33, !"air-alias-scope-arg(4)"}
!40 = distinct !{!40, !33, !"air-alias-scope-arg(5)"}
!41 = distinct !{!41, !33, !"air-alias-scope-arg(7)"}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !29, i64 0}
!44 = !{!35}
!45 = !{!36, !37, !38, !39, !40, !32, !41}
!46 = !{!36}
!47 = !{!35, !37, !38, !39, !40, !32, !41}
!48 = !{!37}
!49 = !{!35, !36, !38, !39, !40, !32, !41}
!50 = !{!38}
!51 = !{!35, !36, !37, !39, !40, !32, !41}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!39}
!55 = !{!35, !36, !37, !38, !40, !32, !41}
!56 = !{!40}
!57 = !{!35, !36, !37, !38, !39, !32, !41}
!58 = distinct !{!58, !53}
!59 = !{!41}
!60 = !{!35, !36, !37, !38, !39, !40, !32}
