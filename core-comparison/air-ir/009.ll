; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/009.bc'
source_filename = "spk_cam16ucs_compress"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define void @spk_cam16ucs_compress(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %4, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %5, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %6, <3 x i32> noundef %7) local_unnamed_addr #0 {
  %9 = extractelement <3 x i32> %7, i64 0
  %10 = load i32, ptr addrspace(1) %5, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %445

12:                                               ; preds = %8
  %13 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 1
  %14 = load i32, ptr addrspace(1) %13, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %15 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 2
  %16 = load i32, ptr addrspace(1) %15, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %17 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 3
  %18 = load i32, ptr addrspace(1) %17, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %19 = load float, ptr addrspace(1) %4, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %20 = getelementptr inbounds float, ptr addrspace(1) %4, i64 1
  %21 = load float, ptr addrspace(1) %20, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %22 = getelementptr inbounds float, ptr addrspace(1) %4, i64 2
  %23 = load float, ptr addrspace(1) %22, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %24 = getelementptr inbounds float, ptr addrspace(1) %4, i64 3
  %25 = load float, ptr addrspace(1) %24, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %26 = getelementptr inbounds float, ptr addrspace(1) %4, i64 4
  %27 = load float, ptr addrspace(1) %26, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %28 = getelementptr inbounds float, ptr addrspace(1) %4, i64 5
  %29 = load float, ptr addrspace(1) %28, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %30 = getelementptr inbounds float, ptr addrspace(1) %4, i64 6
  %31 = load float, ptr addrspace(1) %30, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %32 = getelementptr inbounds float, ptr addrspace(1) %4, i64 7
  %33 = load float, ptr addrspace(1) %32, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %34 = getelementptr inbounds float, ptr addrspace(1) %4, i64 8
  %35 = load float, ptr addrspace(1) %34, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %36 = getelementptr inbounds float, ptr addrspace(1) %4, i64 9
  %37 = load float, ptr addrspace(1) %36, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %38 = getelementptr inbounds float, ptr addrspace(1) %4, i64 10
  %39 = load float, ptr addrspace(1) %38, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %40 = getelementptr inbounds float, ptr addrspace(1) %4, i64 11
  %41 = load float, ptr addrspace(1) %40, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %42 = getelementptr inbounds float, ptr addrspace(1) %4, i64 12
  %43 = load float, ptr addrspace(1) %42, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %44 = getelementptr inbounds float, ptr addrspace(1) %4, i64 13
  %45 = load float, ptr addrspace(1) %44, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %46 = getelementptr inbounds float, ptr addrspace(1) %4, i64 14
  %47 = load float, ptr addrspace(1) %46, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %48 = getelementptr inbounds float, ptr addrspace(1) %4, i64 15
  %49 = load float, ptr addrspace(1) %48, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %50 = getelementptr inbounds float, ptr addrspace(1) %4, i64 16
  %51 = load float, ptr addrspace(1) %50, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %52 = getelementptr inbounds float, ptr addrspace(1) %4, i64 17
  %53 = load float, ptr addrspace(1) %52, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %54 = getelementptr inbounds float, ptr addrspace(1) %4, i64 18
  %55 = load float, ptr addrspace(1) %54, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %56 = getelementptr inbounds float, ptr addrspace(1) %4, i64 19
  %57 = load float, ptr addrspace(1) %56, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %58 = getelementptr inbounds float, ptr addrspace(1) %4, i64 20
  %59 = load float, ptr addrspace(1) %58, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %60 = getelementptr inbounds float, ptr addrspace(1) %4, i64 21
  %61 = load float, ptr addrspace(1) %60, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %62 = tail call float @air.pow.f32(float 0x3FD28F5C20000000, float %25) #3
  %63 = fsub float 0x3FFA3D70A0000000, %62
  %64 = tail call float @air.pow.f32(float %63, float 0x3FE75C2900000000) #3
  %65 = tail call float @air.pow.f32(float %19, float 2.500000e-01) #3
  %66 = mul i32 %9, 3
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %67
  %69 = load float, ptr addrspace(1) %68, align 4, !tbaa !40, !alias.scope !44, !noalias !45
  %70 = add i32 %66, 1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %71
  %73 = load float, ptr addrspace(1) %72, align 4, !tbaa !40, !alias.scope !44, !noalias !45
  %74 = add i32 %66, 2
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %75
  %77 = load float, ptr addrspace(1) %76, align 4, !tbaa !40, !alias.scope !44, !noalias !45
  %78 = load float, ptr addrspace(1) %1, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %79 = getelementptr inbounds float, ptr addrspace(1) %1, i64 1
  %80 = load float, ptr addrspace(1) %79, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %81 = fmul float %73, %80
  %82 = tail call float @llvm.fmuladd.f32(float %78, float %69, float %81)
  %83 = getelementptr inbounds float, ptr addrspace(1) %1, i64 2
  %84 = load float, ptr addrspace(1) %83, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %85 = tail call float @llvm.fmuladd.f32(float %84, float %77, float %82)
  %86 = getelementptr inbounds float, ptr addrspace(1) %1, i64 3
  %87 = load float, ptr addrspace(1) %86, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %88 = getelementptr inbounds float, ptr addrspace(1) %1, i64 4
  %89 = load float, ptr addrspace(1) %88, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %90 = fmul float %73, %89
  %91 = tail call float @llvm.fmuladd.f32(float %87, float %69, float %90)
  %92 = getelementptr inbounds float, ptr addrspace(1) %1, i64 5
  %93 = load float, ptr addrspace(1) %92, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %94 = tail call float @llvm.fmuladd.f32(float %93, float %77, float %91)
  %95 = getelementptr inbounds float, ptr addrspace(1) %1, i64 6
  %96 = load float, ptr addrspace(1) %95, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %97 = getelementptr inbounds float, ptr addrspace(1) %1, i64 7
  %98 = load float, ptr addrspace(1) %97, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %99 = fmul float %73, %98
  %100 = tail call float @llvm.fmuladd.f32(float %96, float %69, float %99)
  %101 = getelementptr inbounds float, ptr addrspace(1) %1, i64 8
  %102 = load float, ptr addrspace(1) %101, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %103 = tail call float @llvm.fmuladd.f32(float %102, float %77, float %100)
  %104 = fmul float %85, 1.000000e+02
  %105 = fmul float %94, 1.000000e+02
  %106 = fmul float %103, 1.000000e+02
  %107 = fmul float %105, 0x3FE4CE37A0000000
  %108 = tail call float @llvm.fmuladd.f32(float %104, float 0x3FD9AEB3E0000000, float %107)
  %109 = tail call float @llvm.fmuladd.f32(float %106, float 0xBFAA5918A0000000, float %108)
  %110 = fmul float %105, 0x3FF34547A0000000
  %111 = tail call float @llvm.fmuladd.f32(float %104, float 0xBFD0046420000000, float %110)
  %112 = tail call float @llvm.fmuladd.f32(float %106, float 0x3FA77A2CE0000000, float %111)
  %113 = fmul float %105, 0x3FA9103C80000000
  %114 = tail call float @llvm.fmuladd.f32(float %104, float 0xBF6107FAA0000000, float %113)
  %115 = tail call float @llvm.fmuladd.f32(float %106, float 0x3FEE800440000000, float %114)
  %116 = fmul float %57, %109
  %117 = fmul float %59, %112
  %118 = fmul float %61, %115
  %119 = fcmp oge float %116, 0.000000e+00
  %120 = fcmp oge float %117, 0.000000e+00
  %121 = fcmp oge float %118, 0.000000e+00
  %122 = tail call float @air.fabs.f32(float %116) #3
  %123 = fmul float %19, %122
  %124 = fdiv float %123, 1.000000e+02
  %125 = tail call float @air.pow.f32(float %124, float 0x3FDAE147A0000000) #3
  %126 = tail call float @air.fabs.f32(float %117) #3
  %127 = fmul float %19, %126
  %128 = fdiv float %127, 1.000000e+02
  %129 = tail call float @air.pow.f32(float %128, float 0x3FDAE147A0000000) #3
  %130 = tail call float @air.fabs.f32(float %118) #3
  %131 = fmul float %19, %130
  %132 = fdiv float %131, 1.000000e+02
  %133 = tail call float @air.pow.f32(float %132, float 0x3FDAE147A0000000) #3
  %134 = select i1 %119, float 4.000000e+02, float -4.000000e+02
  %135 = fmul float %125, %134
  %136 = fadd float %125, 0x403B2147A0000000
  %137 = fdiv float %135, %136
  %138 = fadd float %137, 0x3FB99999A0000000
  %139 = select i1 %120, float 4.000000e+02, float -4.000000e+02
  %140 = fmul float %129, %139
  %141 = fadd float %129, 0x403B2147A0000000
  %142 = fdiv float %140, %141
  %143 = fadd float %142, 0x3FB99999A0000000
  %144 = select i1 %121, float 4.000000e+02, float -4.000000e+02
  %145 = fmul float %133, %144
  %146 = fadd float %133, 0x403B2147A0000000
  %147 = fdiv float %145, %146
  %148 = fadd float %147, 0x3FB99999A0000000
  %149 = fmul float %143, 1.200000e+01
  %150 = fdiv float %149, 1.100000e+01
  %151 = fsub float %138, %150
  %152 = fdiv float %148, 1.100000e+01
  %153 = fadd float %152, %151
  %154 = fadd float %138, %143
  %155 = tail call float @llvm.fmuladd.f32(float %148, float -2.000000e+00, float %154)
  %156 = fdiv float %155, 9.000000e+00
  %157 = tail call float @air.atan2.f32(float %156, float %153) #3
  %158 = fadd float %157, 2.000000e+00
  %159 = tail call float @air.cos.f32(float %158) #3
  %160 = fadd float %159, 0x400E666660000000
  %161 = fmul float %160, 2.500000e-01
  %162 = tail call float @llvm.fmuladd.f32(float %138, float 2.000000e+00, float %143)
  %163 = fdiv float %148, 2.000000e+01
  %164 = fadd float %162, %163
  %165 = fadd float %164, 0xBFD3851EC0000000
  %166 = fmul float %21, %165
  %167 = fdiv float %166, %29
  %168 = fcmp oge float %167, 0.000000e+00
  %169 = select i1 %168, float 1.000000e+02, float -1.000000e+02
  %170 = tail call float @air.fabs.f32(float %167) #3
  %171 = fmul float %27, %31
  %172 = tail call float @air.pow.f32(float %170, float %171) #3
  %173 = fmul float %172, %169
  %174 = fmul float %148, 2.100000e+01
  %175 = fdiv float %174, 2.000000e+01
  %176 = fadd float %154, %175
  %177 = fcmp une float %176, 0.000000e+00
  br i1 %177, label %178, label %187

178:                                              ; preds = %12
  %179 = fmul float %156, %156
  %180 = tail call float @llvm.fmuladd.f32(float %153, float %153, float %179)
  %181 = fmul float %33, 0x40AE0C4EC0000000
  %182 = fmul float %23, %181
  %183 = fmul float %182, %161
  %184 = tail call float @air.sqrt.f32(float %180) #3
  %185 = fmul float %183, %184
  %186 = fdiv float %185, %176
  br label %187

187:                                              ; preds = %178, %12
  %188 = phi float [ %186, %178 ], [ 0.000000e+00, %12 ]
  %189 = fcmp ogt float %188, 0.000000e+00
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = tail call float @air.fabs.f32(float %173) #3
  %192 = fdiv float %191, 1.000000e+02
  %193 = tail call float @air.sqrt.f32(float %192) #3
  %194 = tail call float @air.pow.f32(float %188, float 0x3FECCCCCC0000000) #3
  %195 = fmul float %193, %194
  %196 = fmul float %64, %195
  br label %197

197:                                              ; preds = %190, %187
  %198 = phi float [ %196, %190 ], [ 0.000000e+00, %187 ]
  %199 = fmul float %65, %198
  %200 = tail call float @llvm.fmuladd.f32(float %199, float 0x3F9758E220000000, float 1.000000e+00)
  %201 = tail call float @air.log.f32(float %200) #3
  %202 = fmul float %201, 0x4045EE0900000000
  %203 = fmul float %173, 0x3FFB333340000000
  %204 = tail call float @llvm.fmuladd.f32(float %173, float 0x3F7CAC0840000000, float 1.000000e+00)
  %205 = fdiv float %203, %204
  %206 = icmp eq i32 %18, 0
  br i1 %206, label %223, label %207

207:                                              ; preds = %197
  %208 = fdiv float %205, %55
  %209 = fcmp ogt float %208, %49
  br i1 %209, label %210, label %220

210:                                              ; preds = %207
  %211 = fsub float %51, %49
  %212 = fsub float %208, %49
  %213 = fdiv float %212, %211
  %214 = tail call float @air.pow.f32(float %213, float %53) #3
  %215 = fadd float %214, 1.000000e+00
  %216 = fdiv float 1.000000e+00, %53
  %217 = tail call float @air.pow.f32(float %215, float %216) #3
  %218 = fdiv float %213, %217
  %219 = tail call float @llvm.fmuladd.f32(float %211, float %218, float %49)
  br label %220

220:                                              ; preds = %210, %207
  %221 = phi float [ %219, %210 ], [ %208, %207 ]
  %222 = fmul float %55, %221
  br label %223

223:                                              ; preds = %220, %197
  %224 = phi float [ %222, %220 ], [ %205, %197 ]
  %225 = tail call float @air.fmax.f32(float %224, float %35) #3
  %226 = tail call float @air.fmin.f32(float %225, float %37) #3
  %227 = fsub float %226, %35
  %228 = fsub float %37, %35
  %229 = fdiv float %227, %228
  %230 = add i32 %14, -1
  %231 = tail call float @air.convert.f.f32.u.i32(i32 %230) #3
  %232 = fmul float %231, %229
  %233 = tail call float @air.floor.f32(float %232) #3
  %234 = tail call i32 @air.convert.s.i32.f.f32(float %233) #3
  %235 = tail call i32 @air.max.s.i32(i32 %234, i32 0) #3
  %236 = add nsw i32 %14, -2
  %237 = tail call i32 @air.min.s.i32(i32 %235, i32 %236) #3
  %238 = tail call float @air.convert.f.f32.s.i32(i32 %237) #3
  %239 = fsub float %232, %238
  %240 = fsub float %157, %39
  %241 = fdiv float %240, %41
  %242 = tail call float @air.floor.f32(float %241) #3
  %243 = tail call i32 @air.convert.s.i32.f.f32(float %242) #3
  %244 = srem i32 %243, %16
  %245 = add nsw i32 %244, %16
  %246 = srem i32 %245, %16
  %247 = add nsw i32 %246, 1
  %248 = srem i32 %247, %16
  %249 = fsub float %241, %242
  %250 = mul nsw i32 %237, %16
  %251 = add nsw i32 %246, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %252
  %254 = load float, ptr addrspace(1) %253, align 4, !tbaa !40, !alias.scope !48, !noalias !49
  %255 = add nsw i32 %248, %250
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %256
  %258 = load float, ptr addrspace(1) %257, align 4, !tbaa !40, !alias.scope !48, !noalias !49
  %259 = add nsw i32 %237, 1
  %260 = mul nsw i32 %259, %16
  %261 = add nsw i32 %246, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %262
  %264 = load float, ptr addrspace(1) %263, align 4, !tbaa !40, !alias.scope !48, !noalias !49
  %265 = add nsw i32 %248, %260
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %266
  %268 = load float, ptr addrspace(1) %267, align 4, !tbaa !40, !alias.scope !48, !noalias !49
  %269 = fsub float 1.000000e+00, %239
  %270 = fsub float 1.000000e+00, %249
  %271 = fmul float %249, %258
  %272 = tail call float @llvm.fmuladd.f32(float %270, float %254, float %271)
  %273 = fmul float %249, %268
  %274 = tail call float @llvm.fmuladd.f32(float %270, float %264, float %273)
  %275 = fmul float %239, %274
  %276 = tail call float @llvm.fmuladd.f32(float %269, float %272, float %275)
  %277 = fcmp ogt float %276, 0x3E112E0BE0000000
  %278 = select i1 %277, float %276, float 0x3E112E0BE0000000
  %279 = fdiv float %202, %278
  %280 = fcmp ogt float %279, %43
  br i1 %280, label %281, label %291

281:                                              ; preds = %223
  %282 = fsub float %45, %43
  %283 = fsub float %279, %43
  %284 = fdiv float %283, %282
  %285 = tail call float @air.pow.f32(float %284, float %47) #3
  %286 = fadd float %285, 1.000000e+00
  %287 = fdiv float 1.000000e+00, %47
  %288 = tail call float @air.pow.f32(float %286, float %287) #3
  %289 = fdiv float %284, %288
  %290 = tail call float @llvm.fmuladd.f32(float %282, float %289, float %43)
  br label %291

291:                                              ; preds = %281, %223
  %292 = phi float [ %290, %281 ], [ %279, %223 ]
  %293 = fmul float %278, %292
  %294 = fmul float %293, 0x3F9758E220000000
  %295 = tail call float @air.exp.f32(float %294) #3
  %296 = fadd float %295, -1.000000e+00
  %297 = fdiv float %296, 0x3F9758E220000000
  %298 = tail call float @llvm.fmuladd.f32(float %224, float 0xBF7CAC0840000000, float 0x3FFB333340000000)
  %299 = fdiv float %224, %298
  %300 = fdiv float %297, %65
  %301 = fcmp oge float %299, 0.000000e+00
  %302 = fneg float %29
  %303 = select i1 %301, float %29, float %302
  %304 = tail call float @air.fabs.f32(float %299) #3
  %305 = fdiv float %304, 1.000000e+02
  %306 = fdiv float 1.000000e+00, %171
  %307 = tail call float @air.pow.f32(float %305, float %306) #3
  %308 = fmul float %303, %307
  %309 = tail call float @air.sqrt.f32(float %305) #3
  %310 = fcmp ogt float %309, 0.000000e+00
  %311 = fcmp ogt float %300, 0.000000e+00
  %312 = select i1 %310, i1 %311, i1 false
  br i1 %312, label %313, label %317

313:                                              ; preds = %291
  %314 = fmul float %64, %309
  %315 = fdiv float %300, %314
  %316 = tail call float @air.pow.f32(float %315, float 0x3FF1C71C80000000) #3
  br label %317

317:                                              ; preds = %313, %291
  %318 = phi float [ %316, %313 ], [ 0.000000e+00, %291 ]
  %319 = tail call float @air.cos.f32(float %157) #3
  %320 = tail call float @air.sin.f32(float %157) #3
  %321 = fdiv float %308, %21
  %322 = fadd float %321, 0x3FD3851EC0000000
  %323 = fcmp oeq float %318, 0.000000e+00
  br i1 %323, label %351, label %324

324:                                              ; preds = %317
  %325 = fmul float %33, 0x40AE0C4EC0000000
  %326 = fmul float %23, %325
  %327 = fmul float %326, %161
  %328 = fdiv float %327, %318
  %329 = tail call float @air.fabs.f32(float %320) #3
  %330 = tail call float @air.fabs.f32(float %319) #3
  %331 = fcmp ult float %329, %330
  br i1 %331, label %342, label %332

332:                                              ; preds = %324
  %333 = fdiv float %328, %320
  %334 = fmul float %322, 0x4008666660000000
  %335 = fmul float %334, 0x3FD4FBCDA0000000
  %336 = fdiv float %319, %320
  %337 = tail call float @llvm.fmuladd.f32(float %336, float 0x3FDE9BD360000000, float %333)
  %338 = fadd float %337, 0xBF93B4D2E0000000
  %339 = fadd float %338, 0x4012DC0DE0000000
  %340 = fdiv float %335, %339
  %341 = fmul float %336, %340
  br label %351

342:                                              ; preds = %324
  %343 = fdiv float %328, %319
  %344 = fmul float %322, 0x4008666660000000
  %345 = fmul float %344, 0x3FD4FBCDA0000000
  %346 = fadd float %343, 0x3FDE9BD360000000
  %347 = fdiv float %320, %319
  %348 = tail call float @llvm.fmuladd.f32(float %347, float 0x4012C85900000000, float %346)
  %349 = fdiv float %345, %348
  %350 = fmul float %347, %349
  br label %351

351:                                              ; preds = %342, %332, %317
  %352 = phi float [ 0.000000e+00, %317 ], [ %340, %332 ], [ %350, %342 ]
  %353 = phi float [ 0.000000e+00, %317 ], [ %341, %332 ], [ %349, %342 ]
  %354 = fmul float %353, 4.510000e+02
  %355 = tail call float @llvm.fmuladd.f32(float %322, float 4.600000e+02, float %354)
  %356 = tail call float @llvm.fmuladd.f32(float %352, float 2.880000e+02, float %355)
  %357 = fdiv float %356, 1.403000e+03
  %358 = fmul float %353, -8.910000e+02
  %359 = tail call float @llvm.fmuladd.f32(float %322, float 4.600000e+02, float %358)
  %360 = tail call float @llvm.fmuladd.f32(float %352, float -2.610000e+02, float %359)
  %361 = fdiv float %360, 1.403000e+03
  %362 = fmul float %353, -2.200000e+02
  %363 = tail call float @llvm.fmuladd.f32(float %322, float 4.600000e+02, float %362)
  %364 = tail call float @llvm.fmuladd.f32(float %352, float -6.300000e+03, float %363)
  %365 = fdiv float %364, 1.403000e+03
  %366 = fadd float %357, 0xBFB99999A0000000
  %367 = fcmp oge float %366, 0.000000e+00
  %368 = tail call float @air.fabs.f32(float %366) #3
  %369 = fcmp olt float %368, 4.000000e+02
  %370 = fmul float %368, 0x403B2147A0000000
  %371 = fsub float 4.000000e+02, %368
  %372 = fdiv float %370, %371
  %373 = select i1 %369, float %372, float 0.000000e+00
  %374 = fdiv float 1.000000e+02, %19
  %375 = fneg float %374
  %376 = select i1 %367, float %374, float %375
  %377 = tail call float @air.pow.f32(float %373, float 0x40030C30C0000000) #3
  %378 = fmul float %377, %376
  %379 = fdiv float %378, %57
  %380 = fadd float %361, 0xBFB99999A0000000
  %381 = fcmp oge float %380, 0.000000e+00
  %382 = tail call float @air.fabs.f32(float %380) #3
  %383 = fcmp olt float %382, 4.000000e+02
  %384 = fmul float %382, 0x403B2147A0000000
  %385 = fsub float 4.000000e+02, %382
  %386 = fdiv float %384, %385
  %387 = select i1 %383, float %386, float 0.000000e+00
  %388 = select i1 %381, float %374, float %375
  %389 = tail call float @air.pow.f32(float %387, float 0x40030C30C0000000) #3
  %390 = fmul float %389, %388
  %391 = fdiv float %390, %59
  %392 = fadd float %365, 0xBFB99999A0000000
  %393 = fcmp oge float %392, 0.000000e+00
  %394 = tail call float @air.fabs.f32(float %392) #3
  %395 = fcmp olt float %394, 4.000000e+02
  %396 = fmul float %394, 0x403B2147A0000000
  %397 = fsub float 4.000000e+02, %394
  %398 = fdiv float %396, %397
  %399 = select i1 %395, float %398, float 0.000000e+00
  %400 = select i1 %393, float %374, float %375
  %401 = tail call float @air.pow.f32(float %399, float 0x40030C30C0000000) #3
  %402 = fmul float %401, %400
  %403 = fdiv float %402, %61
  %404 = fmul float %391, 0xBFF02E1960000000
  %405 = tail call float @llvm.fmuladd.f32(float %379, float 0x3FFDCB07A0000000, float %404)
  %406 = tail call float @llvm.fmuladd.f32(float %403, float 0x3FC3188D60000000, float %405)
  %407 = fmul float %391, 0x3FE3E2E5C0000000
  %408 = tail call float @llvm.fmuladd.f32(float %379, float 0x3FD8CD3C20000000, float %407)
  %409 = tail call float @llvm.fmuladd.f32(float %403, float 0xBF8260F340000000, float %408)
  %410 = fmul float %391, 0xBFA1788FE0000000
  %411 = tail call float @llvm.fmuladd.f32(float %379, float 0xBF9038C120000000, float %410)
  %412 = tail call float @llvm.fmuladd.f32(float %403, float 0x3FF0CCA780000000, float %411)
  %413 = fdiv float %406, 1.000000e+02
  %414 = fdiv float %409, 1.000000e+02
  %415 = fdiv float %412, 1.000000e+02
  %416 = load float, ptr addrspace(1) %2, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %417 = getelementptr inbounds float, ptr addrspace(1) %2, i64 1
  %418 = load float, ptr addrspace(1) %417, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %419 = fmul float %418, %414
  %420 = tail call float @llvm.fmuladd.f32(float %416, float %413, float %419)
  %421 = getelementptr inbounds float, ptr addrspace(1) %2, i64 2
  %422 = load float, ptr addrspace(1) %421, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %423 = tail call float @llvm.fmuladd.f32(float %422, float %415, float %420)
  %424 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %67
  store float %423, ptr addrspace(1) %424, align 4, !tbaa !40, !alias.scope !52, !noalias !53
  %425 = getelementptr inbounds float, ptr addrspace(1) %2, i64 3
  %426 = load float, ptr addrspace(1) %425, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %427 = getelementptr inbounds float, ptr addrspace(1) %2, i64 4
  %428 = load float, ptr addrspace(1) %427, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %429 = fmul float %428, %414
  %430 = tail call float @llvm.fmuladd.f32(float %426, float %413, float %429)
  %431 = getelementptr inbounds float, ptr addrspace(1) %2, i64 5
  %432 = load float, ptr addrspace(1) %431, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %433 = tail call float @llvm.fmuladd.f32(float %432, float %415, float %430)
  %434 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %71
  store float %433, ptr addrspace(1) %434, align 4, !tbaa !40, !alias.scope !52, !noalias !53
  %435 = getelementptr inbounds float, ptr addrspace(1) %2, i64 6
  %436 = load float, ptr addrspace(1) %435, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %437 = getelementptr inbounds float, ptr addrspace(1) %2, i64 7
  %438 = load float, ptr addrspace(1) %437, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %439 = fmul float %414, %438
  %440 = tail call float @llvm.fmuladd.f32(float %436, float %413, float %439)
  %441 = getelementptr inbounds float, ptr addrspace(1) %2, i64 8
  %442 = load float, ptr addrspace(1) %441, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %443 = tail call float @llvm.fmuladd.f32(float %442, float %415, float %440)
  %444 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %75
  store float %443, ptr addrspace(1) %444, align 4, !tbaa !40, !alias.scope !52, !noalias !53
  br label %445

445:                                              ; preds = %351, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.pow.f32(float, float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fabs.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.sin.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.cos.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.sqrt.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.exp.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.convert.s.i32.f.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.floor.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.s.i32(i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.min.s.i32(i32, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.max.s.i32(i32, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.u.i32(i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fmin.f32(float, float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fmax.f32(float, float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.log.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.atan2.f32(float, float) local_unnamed_addr #2

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
!15 = !{ptr @spk_cam16ucs_compress, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"rgb"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"m2x"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"m2r"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"cmax"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"k"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!24 = !{i32 6, !"air.buffer", !"air.location_index", i32 6, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!25 = !{i32 7, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C++ TBAA"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"air-alias-scope-arg(5)"}
!32 = distinct !{!32, !"air-alias-scopes(spk_cam16ucs_compress)"}
!33 = !{!34, !35, !36, !37, !38, !39}
!34 = distinct !{!34, !32, !"air-alias-scope-arg(0)"}
!35 = distinct !{!35, !32, !"air-alias-scope-arg(1)"}
!36 = distinct !{!36, !32, !"air-alias-scope-arg(2)"}
!37 = distinct !{!37, !32, !"air-alias-scope-arg(3)"}
!38 = distinct !{!38, !32, !"air-alias-scope-arg(4)"}
!39 = distinct !{!39, !32, !"air-alias-scope-arg(6)"}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !28, i64 0}
!42 = !{!38}
!43 = !{!34, !35, !36, !37, !31, !39}
!44 = !{!34}
!45 = !{!35, !36, !37, !38, !31, !39}
!46 = !{!35}
!47 = !{!34, !36, !37, !38, !31, !39}
!48 = !{!37}
!49 = !{!34, !35, !36, !38, !31, !39}
!50 = !{!36}
!51 = !{!34, !35, !37, !38, !31, !39}
!52 = !{!39}
!53 = !{!34, !35, !36, !37, !38, !31}
