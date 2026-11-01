; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/040.bc'
source_filename = "spk_di_encode"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define void @spk_di_encode(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %3, <3 x i32> noundef %4) local_unnamed_addr #0 {
  %6 = extractelement <3 x i32> %4, i64 0
  %7 = load i32, ptr addrspace(1) %2, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %256

9:                                                ; preds = %5
  %10 = mul i32 %6, 3
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %11
  %13 = load float, ptr addrspace(1) %12, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %14 = getelementptr inbounds float, ptr addrspace(1) %1, i64 9
  %15 = load float, ptr addrspace(1) %14, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %16 = fadd float %13, %15
  %17 = tail call float @air.pow.f32(float 1.000000e+01, float %16) #3
  %18 = insertelement <3 x float> undef, float %17, i64 0
  %19 = add i32 %10, 1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %20
  %22 = load float, ptr addrspace(1) %21, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %23 = getelementptr inbounds float, ptr addrspace(1) %1, i64 10
  %24 = load float, ptr addrspace(1) %23, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %25 = fadd float %22, %24
  %26 = tail call float @air.pow.f32(float 1.000000e+01, float %25) #3
  %27 = insertelement <3 x float> %18, float %26, i64 1
  %28 = add i32 %10, 2
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %29
  %31 = load float, ptr addrspace(1) %30, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %32 = getelementptr inbounds float, ptr addrspace(1) %1, i64 11
  %33 = load float, ptr addrspace(1) %32, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %34 = fadd float %31, %33
  %35 = tail call float @air.pow.f32(float 1.000000e+01, float %34) #3
  %36 = insertelement <3 x float> %27, float %35, i64 2
  %37 = getelementptr inbounds float, ptr addrspace(1) %1, i64 40
  %38 = load float, ptr addrspace(1) %37, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %39 = insertelement <3 x float> poison, float %38, i64 0
  %40 = shufflevector <3 x float> %39, <3 x float> poison, <3 x i32> zeroinitializer
  %41 = tail call float @air.pow.f32(float 1.000000e+01, float %15) #3
  %42 = insertelement <3 x float> undef, float %41, i64 0
  %43 = tail call float @air.pow.f32(float 1.000000e+01, float %24) #3
  %44 = insertelement <3 x float> %42, float %43, i64 1
  %45 = tail call float @air.pow.f32(float 1.000000e+01, float %33) #3
  %46 = insertelement <3 x float> %44, float %45, i64 2
  %47 = fneg <3 x float> %40
  %48 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %47, <3 x float> %46, <3 x float> %36)
  %49 = extractelement <3 x float> %48, i64 0
  %50 = load float, ptr addrspace(1) %1, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %51 = extractelement <3 x float> %48, i64 1
  %52 = getelementptr inbounds float, ptr addrspace(1) %1, i64 3
  %53 = load float, ptr addrspace(1) %52, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %54 = fmul float %53, %51
  %55 = tail call float @llvm.fmuladd.f32(float %49, float %50, float %54)
  %56 = extractelement <3 x float> %48, i64 2
  %57 = getelementptr inbounds float, ptr addrspace(1) %1, i64 6
  %58 = load float, ptr addrspace(1) %57, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %59 = tail call float @llvm.fmuladd.f32(float %56, float %58, float %55)
  %60 = insertelement <3 x float> undef, float %59, i64 0
  %61 = getelementptr inbounds float, ptr addrspace(1) %1, i64 1
  %62 = load float, ptr addrspace(1) %61, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %63 = getelementptr inbounds float, ptr addrspace(1) %1, i64 4
  %64 = load float, ptr addrspace(1) %63, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %65 = fmul float %51, %64
  %66 = tail call float @llvm.fmuladd.f32(float %49, float %62, float %65)
  %67 = getelementptr inbounds float, ptr addrspace(1) %1, i64 7
  %68 = load float, ptr addrspace(1) %67, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %69 = tail call float @llvm.fmuladd.f32(float %56, float %68, float %66)
  %70 = insertelement <3 x float> %60, float %69, i64 1
  %71 = getelementptr inbounds float, ptr addrspace(1) %1, i64 2
  %72 = load float, ptr addrspace(1) %71, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %73 = getelementptr inbounds float, ptr addrspace(1) %1, i64 5
  %74 = load float, ptr addrspace(1) %73, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %75 = fmul float %51, %74
  %76 = tail call float @llvm.fmuladd.f32(float %49, float %72, float %75)
  %77 = getelementptr inbounds float, ptr addrspace(1) %1, i64 8
  %78 = load float, ptr addrspace(1) %77, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %79 = tail call float @llvm.fmuladd.f32(float %56, float %78, float %76)
  %80 = insertelement <3 x float> %70, float %79, i64 2
  %81 = getelementptr inbounds float, ptr addrspace(1) %1, i64 30
  %82 = load float, ptr addrspace(1) %81, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %83 = fcmp une float %82, 0.000000e+00
  br i1 %83, label %84, label %223

84:                                               ; preds = %9
  %85 = getelementptr inbounds float, ptr addrspace(1) %1, i64 12
  %86 = load float, ptr addrspace(1) %85, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %87 = getelementptr inbounds float, ptr addrspace(1) %1, i64 13
  %88 = load float, ptr addrspace(1) %87, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %89 = fmul float %69, %88
  %90 = tail call float @llvm.fmuladd.f32(float %86, float %59, float %89)
  %91 = getelementptr inbounds float, ptr addrspace(1) %1, i64 14
  %92 = load float, ptr addrspace(1) %91, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %93 = tail call float @llvm.fmuladd.f32(float %92, float %79, float %90)
  %94 = insertelement <3 x float> undef, float %93, i64 0
  %95 = getelementptr inbounds float, ptr addrspace(1) %1, i64 15
  %96 = load float, ptr addrspace(1) %95, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %97 = getelementptr inbounds float, ptr addrspace(1) %1, i64 16
  %98 = load float, ptr addrspace(1) %97, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %99 = fmul float %69, %98
  %100 = tail call float @llvm.fmuladd.f32(float %96, float %59, float %99)
  %101 = getelementptr inbounds float, ptr addrspace(1) %1, i64 17
  %102 = load float, ptr addrspace(1) %101, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %103 = tail call float @llvm.fmuladd.f32(float %102, float %79, float %100)
  %104 = insertelement <3 x float> %94, float %103, i64 1
  %105 = getelementptr inbounds float, ptr addrspace(1) %1, i64 18
  %106 = load float, ptr addrspace(1) %105, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %107 = getelementptr inbounds float, ptr addrspace(1) %1, i64 19
  %108 = load float, ptr addrspace(1) %107, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %109 = fmul float %69, %108
  %110 = tail call float @llvm.fmuladd.f32(float %106, float %59, float %109)
  %111 = getelementptr inbounds float, ptr addrspace(1) %1, i64 20
  %112 = load float, ptr addrspace(1) %111, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %113 = tail call float @llvm.fmuladd.f32(float %112, float %79, float %110)
  %114 = insertelement <3 x float> %104, float %113, i64 2
  %115 = tail call <3 x float> @air.fmax.v3f32(<3 x float> %114, <3 x float> zeroinitializer) #3
  %116 = tail call <3 x float> @air.pow.v3f32(<3 x float> %115, <3 x float> splat (float 0x3FD5555560000000)) #3
  %117 = extractelement <3 x float> %116, i64 0
  %118 = extractelement <3 x float> %116, i64 1
  %119 = fmul float %118, 0x3FE9655120000000
  %120 = tail call float @llvm.fmuladd.f32(float %117, float 0x3FCAF02A40000000, float %119)
  %121 = extractelement <3 x float> %116, i64 2
  %122 = tail call float @llvm.fmuladd.f32(float %121, float 0xBF70ADD9C0000000, float %120)
  %123 = fmul float %118, 0xC0036DC1C0000000
  %124 = tail call float @llvm.fmuladd.f32(float %117, float 0x3FFFA5E1C0000000, float %123)
  %125 = tail call float @llvm.fmuladd.f32(float %121, float 0x3FDCD68700000000, float %124)
  %126 = fmul float %118, 0x3FE90C7760000000
  %127 = tail call float @llvm.fmuladd.f32(float %117, float 0x3F9A869680000000, float %126)
  %128 = tail call float @llvm.fmuladd.f32(float %121, float 0xBFE9E0AC00000000, float %127)
  %129 = fmul float %128, %128
  %130 = tail call float @llvm.fmuladd.f32(float %125, float %125, float %129)
  %131 = tail call float @air.sqrt.f32(float %130) #3
  %132 = tail call float @air.atan2.f32(float %128, float %125) #3
  %133 = fmul float %132, 0x404CA5DC20000000
  %134 = getelementptr inbounds float, ptr addrspace(1) %1, i64 33
  %135 = load float, ptr addrspace(1) %134, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %136 = fsub float %133, %135
  %137 = fadd float %136, 5.400000e+02
  %138 = tail call float @air.fmod.f32(float %137, float 3.600000e+02) #3
  %139 = fadd float %138, -1.800000e+02
  %140 = tail call float @air.fabs.f32(float %139) #3
  %141 = getelementptr inbounds float, ptr addrspace(1) %1, i64 34
  %142 = load float, ptr addrspace(1) %141, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %143 = fcmp olt float %140, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %84
  %145 = fmul float %139, 0x400921FB60000000
  %146 = fdiv float %145, %142
  %147 = tail call float @air.cos.f32(float %146) #3
  %148 = fadd float %147, 1.000000e+00
  %149 = fmul float %148, 5.000000e-01
  br label %150

150:                                              ; preds = %144, %84
  %151 = phi float [ %149, %144 ], [ 0.000000e+00, %84 ]
  %152 = getelementptr inbounds float, ptr addrspace(1) %1, i64 35
  %153 = load float, ptr addrspace(1) %152, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %154 = fsub float %131, %153
  %155 = getelementptr inbounds float, ptr addrspace(1) %1, i64 36
  %156 = load float, ptr addrspace(1) %155, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %157 = fsub float %156, %153
  %158 = fdiv float %154, %157
  %159 = tail call float @air.clamp.f32(float %158, float 0.000000e+00, float 1.000000e+00) #3
  %160 = fmul float %159, %159
  %161 = tail call float @llvm.fmuladd.f32(float %159, float -2.000000e+00, float 3.000000e+00)
  %162 = fmul float %160, %161
  %163 = fmul float %151, %162
  %164 = fcmp ogt float %163, 0.000000e+00
  br i1 %164, label %165, label %223

165:                                              ; preds = %150
  %166 = getelementptr inbounds float, ptr addrspace(1) %1, i64 31
  %167 = load float, ptr addrspace(1) %166, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %168 = tail call float @llvm.fmuladd.f32(float %163, float %167, float %133)
  %169 = fmul float %168, 0x3F91DF46A0000000
  %170 = getelementptr inbounds float, ptr addrspace(1) %1, i64 32
  %171 = load float, ptr addrspace(1) %170, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %172 = fadd float %171, -1.000000e+00
  %173 = tail call float @llvm.fmuladd.f32(float %163, float %172, float 1.000000e+00)
  %174 = fmul float %131, %173
  %175 = tail call float @air.cos.f32(float %169) #3
  %176 = fmul float %175, %174
  %177 = tail call float @air.sin.f32(float %169) #3
  %178 = fmul float %177, %174
  %179 = tail call float @llvm.fmuladd.f32(float %176, float 0x3FD95D9920000000, float %122)
  %180 = tail call float @llvm.fmuladd.f32(float %178, float 0x3FCB9F7520000000, float %179)
  %181 = insertelement <3 x float> undef, float %180, i64 0
  %182 = tail call float @llvm.fmuladd.f32(float %176, float 0xBFBB061180000000, float %122)
  %183 = tail call float @llvm.fmuladd.f32(float %178, float 0xBFB058BF40000000, float %182)
  %184 = insertelement <3 x float> %181, float %183, i64 1
  %185 = tail call float @llvm.fmuladd.f32(float %176, float 0xBFB6E86F60000000, float %122)
  %186 = tail call float @llvm.fmuladd.f32(float %178, float 0xBFF4A9ECC0000000, float %185)
  %187 = insertelement <3 x float> %184, float %186, i64 2
  %188 = fmul <3 x float> %187, %187
  %189 = fmul <3 x float> %187, %188
  %190 = getelementptr inbounds float, ptr addrspace(1) %1, i64 21
  %191 = load float, ptr addrspace(1) %190, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %192 = extractelement <3 x float> %189, i64 0
  %193 = getelementptr inbounds float, ptr addrspace(1) %1, i64 22
  %194 = load float, ptr addrspace(1) %193, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %195 = extractelement <3 x float> %189, i64 1
  %196 = fmul float %194, %195
  %197 = tail call float @llvm.fmuladd.f32(float %191, float %192, float %196)
  %198 = getelementptr inbounds float, ptr addrspace(1) %1, i64 23
  %199 = load float, ptr addrspace(1) %198, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %200 = extractelement <3 x float> %189, i64 2
  %201 = tail call float @llvm.fmuladd.f32(float %199, float %200, float %197)
  %202 = insertelement <3 x float> undef, float %201, i64 0
  %203 = getelementptr inbounds float, ptr addrspace(1) %1, i64 24
  %204 = load float, ptr addrspace(1) %203, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %205 = getelementptr inbounds float, ptr addrspace(1) %1, i64 25
  %206 = load float, ptr addrspace(1) %205, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %207 = fmul float %206, %195
  %208 = tail call float @llvm.fmuladd.f32(float %204, float %192, float %207)
  %209 = getelementptr inbounds float, ptr addrspace(1) %1, i64 26
  %210 = load float, ptr addrspace(1) %209, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %211 = tail call float @llvm.fmuladd.f32(float %210, float %200, float %208)
  %212 = insertelement <3 x float> %202, float %211, i64 1
  %213 = getelementptr inbounds float, ptr addrspace(1) %1, i64 27
  %214 = load float, ptr addrspace(1) %213, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %215 = getelementptr inbounds float, ptr addrspace(1) %1, i64 28
  %216 = load float, ptr addrspace(1) %215, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %217 = fmul float %216, %195
  %218 = tail call float @llvm.fmuladd.f32(float %214, float %192, float %217)
  %219 = getelementptr inbounds float, ptr addrspace(1) %1, i64 29
  %220 = load float, ptr addrspace(1) %219, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %221 = tail call float @llvm.fmuladd.f32(float %220, float %200, float %218)
  %222 = insertelement <3 x float> %212, float %221, i64 2
  br label %223

223:                                              ; preds = %165, %150, %9
  %224 = phi <3 x float> [ %80, %9 ], [ %222, %165 ], [ %80, %150 ]
  %225 = getelementptr inbounds float, ptr addrspace(1) %1, i64 37
  %226 = load float, ptr addrspace(1) %225, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %227 = insertelement <3 x float> poison, float %226, i64 0
  %228 = shufflevector <3 x float> %227, <3 x float> poison, <3 x i32> zeroinitializer
  %229 = getelementptr inbounds float, ptr addrspace(1) %1, i64 38
  %230 = load float, ptr addrspace(1) %229, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %231 = insertelement <3 x float> poison, float %230, i64 0
  %232 = shufflevector <3 x float> %231, <3 x float> poison, <3 x i32> zeroinitializer
  %233 = tail call <3 x float> @air.fmax.v3f32(<3 x float> %224, <3 x float> zeroinitializer) #3
  %234 = getelementptr inbounds float, ptr addrspace(1) %1, i64 41
  %235 = load float, ptr addrspace(1) %234, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %236 = fsub float 1.000000e+00, %235
  %237 = insertelement <3 x float> poison, float %236, i64 0
  %238 = shufflevector <3 x float> %237, <3 x float> poison, <3 x i32> zeroinitializer
  %239 = insertelement <3 x float> poison, float %235, i64 0
  %240 = shufflevector <3 x float> %239, <3 x float> poison, <3 x i32> zeroinitializer
  %241 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %233, <3 x float> %238, <3 x float> %240)
  %242 = tail call <3 x float> @air.log10.v3f32(<3 x float> %241) #3
  %243 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %232, <3 x float> %242, <3 x float> %228)
  %244 = getelementptr inbounds float, ptr addrspace(1) %1, i64 39
  %245 = load float, ptr addrspace(1) %244, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %246 = insertelement <3 x float> poison, float %245, i64 0
  %247 = shufflevector <3 x float> %246, <3 x float> poison, <3 x i32> zeroinitializer
  %248 = fdiv <3 x float> %243, %247
  %249 = tail call <3 x float> @air.clamp.v3f32(<3 x float> %248, <3 x float> zeroinitializer, <3 x float> splat (float 1.000000e+00)) #3
  %250 = extractelement <3 x float> %249, i64 0
  %251 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %11
  store float %250, ptr addrspace(1) %251, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %252 = extractelement <3 x float> %249, i64 1
  %253 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %20
  store float %252, ptr addrspace(1) %253, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %254 = extractelement <3 x float> %249, i64 2
  %255 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %29
  store float %254, ptr addrspace(1) %255, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  br label %256

256:                                              ; preds = %223, %5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare <3 x float> @air.clamp.v3f32(<3 x float>, <3 x float>, <3 x float>) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare <3 x float> @air.log10.v3f32(<3 x float>) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare <3 x float> @air.fmax.v3f32(<3 x float>, <3 x float>) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.sin.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.cos.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.clamp.f32(float, float, float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fabs.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fmod.f32(float, float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.atan2.f32(float, float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.sqrt.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare <3 x float> @air.pow.v3f32(<3 x float>, <3 x float>) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.pow.f32(float, float) local_unnamed_addr #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!15 = !{ptr @spk_di_encode, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"y"}
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
!29 = distinct !{!29, !"air-alias-scopes(spk_di_encode)"}
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
