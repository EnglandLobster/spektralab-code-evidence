; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/037.bc'
source_filename = "spk_geometry_resample_df"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_geometry_resample_df(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %3, <3 x i32> noundef %4) local_unnamed_addr #0 {
  %6 = extractelement <3 x i32> %4, i64 0
  %7 = load i32, ptr addrspace(1) %2, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %8 = getelementptr inbounds i32, ptr addrspace(1) %2, i64 1
  %9 = load i32, ptr addrspace(1) %8, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %10 = getelementptr inbounds i32, ptr addrspace(1) %2, i64 2
  %11 = load i32, ptr addrspace(1) %10, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %12 = getelementptr inbounds i32, ptr addrspace(1) %2, i64 3
  %13 = load i32, ptr addrspace(1) %12, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %14 = getelementptr inbounds i32, ptr addrspace(1) %2, i64 4
  %15 = load i32, ptr addrspace(1) %14, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %16 = getelementptr inbounds i32, ptr addrspace(1) %2, i64 5
  %17 = load i32, ptr addrspace(1) %16, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %18 = mul i32 %13, %11
  %19 = icmp ult i32 %6, %18
  br i1 %19, label %20, label %344

20:                                               ; preds = %5
  %21 = udiv i32 %6, %13
  %22 = urem i32 %6, %13
  %23 = tail call float @air.convert.f.f32.u.i32(i32 %22) #3
  %24 = fadd float %23, 5.000000e-01
  %25 = tail call float @air.convert.f.f32.u.i32(i32 %21) #3
  %26 = fadd float %25, 5.000000e-01
  %27 = and i32 %17, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = tail call float @air.convert.f.f32.u.i32(i32 %13) #3
  %31 = fsub float %30, %24
  br label %32

32:                                               ; preds = %29, %20
  %33 = phi float [ %31, %29 ], [ %24, %20 ]
  %34 = and i32 %17, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = tail call float @air.convert.f.f32.u.i32(i32 %11) #3
  %38 = fsub float %37, %26
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi float [ %38, %36 ], [ %26, %32 ]
  switch i32 %15, label %52 [
    i32 1, label %41
    i32 2, label %44
    i32 3, label %49
  ]

41:                                               ; preds = %39
  %42 = tail call float @air.convert.f.f32.u.i32(i32 %13) #3
  %43 = fsub float %42, %33
  br label %52

44:                                               ; preds = %39
  %45 = tail call float @air.convert.f.f32.u.i32(i32 %13) #3
  %46 = fsub float %45, %33
  %47 = tail call float @air.convert.f.f32.u.i32(i32 %11) #3
  %48 = fsub float %47, %40
  br label %52

49:                                               ; preds = %39
  %50 = tail call float @air.convert.f.f32.u.i32(i32 %11) #3
  %51 = fsub float %50, %40
  br label %52

52:                                               ; preds = %49, %44, %41, %39
  %53 = phi float [ %40, %39 ], [ %33, %49 ], [ %48, %44 ], [ %43, %41 ]
  %54 = phi float [ %33, %39 ], [ %51, %49 ], [ %46, %44 ], [ %40, %41 ]
  %55 = load float, ptr addrspace(1) %1, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %56 = getelementptr inbounds float, ptr addrspace(1) %1, i64 1
  %57 = load float, ptr addrspace(1) %56, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %58 = fmul float %54, %55
  %59 = fneg float %58
  %60 = tail call float @air.fma.f32(float %55, float %54, float %59) #3
  %61 = tail call float @llvm.fmuladd.f32(float %57, float %54, float %60) #4
  %62 = fadd float %58, %61
  %63 = fsub float %62, %58
  %64 = fsub float %61, %63
  %65 = getelementptr inbounds float, ptr addrspace(1) %1, i64 4
  %66 = load float, ptr addrspace(1) %65, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %67 = getelementptr inbounds float, ptr addrspace(1) %1, i64 5
  %68 = load float, ptr addrspace(1) %67, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %69 = fneg float %66
  %70 = fneg float %68
  %71 = fsub float %62, %66
  %72 = fsub float %71, %62
  %73 = fsub float %71, %72
  %74 = fsub float %62, %73
  %75 = fsub float %69, %72
  %76 = fadd float %75, %74
  %77 = fsub float %64, %68
  %78 = fsub float %77, %64
  %79 = fsub float %77, %78
  %80 = fsub float %64, %79
  %81 = fsub float %70, %78
  %82 = fadd float %81, %80
  %83 = fadd float %77, %76
  %84 = fadd float %71, %83
  %85 = fsub float %84, %71
  %86 = fsub float %83, %85
  %87 = fadd float %82, %86
  %88 = fadd float %84, %87
  %89 = fsub float %88, %84
  %90 = fsub float %87, %89
  %91 = getelementptr inbounds float, ptr addrspace(1) %1, i64 2
  %92 = load float, ptr addrspace(1) %91, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %93 = getelementptr inbounds float, ptr addrspace(1) %1, i64 3
  %94 = load float, ptr addrspace(1) %93, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %95 = fmul float %53, %92
  %96 = fneg float %95
  %97 = tail call float @air.fma.f32(float %92, float %53, float %96) #3
  %98 = tail call float @llvm.fmuladd.f32(float %94, float %53, float %97) #4
  %99 = fadd float %95, %98
  %100 = fsub float %99, %95
  %101 = fsub float %98, %100
  %102 = getelementptr inbounds float, ptr addrspace(1) %1, i64 6
  %103 = load float, ptr addrspace(1) %102, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %104 = getelementptr inbounds float, ptr addrspace(1) %1, i64 7
  %105 = load float, ptr addrspace(1) %104, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %106 = fneg float %103
  %107 = fneg float %105
  %108 = fsub float %99, %103
  %109 = fsub float %108, %99
  %110 = fsub float %108, %109
  %111 = fsub float %99, %110
  %112 = fsub float %106, %109
  %113 = fadd float %112, %111
  %114 = fsub float %101, %105
  %115 = fsub float %114, %101
  %116 = fsub float %114, %115
  %117 = fsub float %101, %116
  %118 = fsub float %107, %115
  %119 = fadd float %118, %117
  %120 = fadd float %114, %113
  %121 = fadd float %108, %120
  %122 = fsub float %121, %108
  %123 = fsub float %120, %122
  %124 = fadd float %119, %123
  %125 = fadd float %121, %124
  %126 = fsub float %125, %121
  %127 = fsub float %124, %126
  %128 = getelementptr inbounds float, ptr addrspace(1) %1, i64 12
  %129 = load float, ptr addrspace(1) %128, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %130 = getelementptr inbounds float, ptr addrspace(1) %1, i64 13
  %131 = load float, ptr addrspace(1) %130, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %132 = getelementptr inbounds float, ptr addrspace(1) %1, i64 14
  %133 = load float, ptr addrspace(1) %132, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %134 = getelementptr inbounds float, ptr addrspace(1) %1, i64 15
  %135 = load float, ptr addrspace(1) %134, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %136 = getelementptr inbounds float, ptr addrspace(1) %1, i64 8
  %137 = load float, ptr addrspace(1) %136, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %138 = getelementptr inbounds float, ptr addrspace(1) %1, i64 9
  %139 = load float, ptr addrspace(1) %138, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %140 = fmul float %129, %88
  %141 = fneg float %140
  %142 = tail call float @air.fma.f32(float %88, float %129, float %141) #3
  %143 = fmul float %129, %90
  %144 = tail call float @llvm.fmuladd.f32(float %88, float %131, float %143) #4
  %145 = fadd float %142, %144
  %146 = fadd float %140, %145
  %147 = fsub float %146, %140
  %148 = fsub float %145, %147
  %149 = fmul float %133, %125
  %150 = fneg float %149
  %151 = tail call float @air.fma.f32(float %125, float %133, float %150) #3
  %152 = fmul float %133, %127
  %153 = tail call float @llvm.fmuladd.f32(float %125, float %135, float %152) #4
  %154 = fadd float %151, %153
  %155 = fadd float %149, %154
  %156 = fsub float %155, %149
  %157 = fsub float %154, %156
  %158 = fneg float %155
  %159 = fneg float %157
  %160 = fsub float %146, %155
  %161 = fsub float %160, %146
  %162 = fsub float %160, %161
  %163 = fsub float %146, %162
  %164 = fsub float %158, %161
  %165 = fadd float %164, %163
  %166 = fsub float %148, %157
  %167 = fsub float %166, %148
  %168 = fsub float %166, %167
  %169 = fsub float %148, %168
  %170 = fsub float %159, %167
  %171 = fadd float %170, %169
  %172 = fadd float %166, %165
  %173 = fadd float %160, %172
  %174 = fsub float %173, %160
  %175 = fsub float %172, %174
  %176 = fadd float %171, %175
  %177 = fadd float %173, %176
  %178 = fsub float %177, %173
  %179 = fsub float %176, %178
  %180 = fadd float %137, %177
  %181 = fsub float %180, %137
  %182 = fsub float %180, %181
  %183 = fsub float %137, %182
  %184 = fsub float %177, %181
  %185 = fadd float %184, %183
  %186 = fadd float %139, %179
  %187 = fsub float %186, %139
  %188 = fsub float %186, %187
  %189 = fsub float %139, %188
  %190 = fsub float %179, %187
  %191 = fadd float %190, %189
  %192 = fadd float %186, %185
  %193 = fadd float %180, %192
  %194 = fsub float %193, %180
  %195 = fsub float %192, %194
  %196 = fadd float %191, %195
  %197 = fadd float %193, %196
  %198 = fsub float %197, %193
  %199 = fsub float %196, %198
  %200 = getelementptr inbounds float, ptr addrspace(1) %1, i64 10
  %201 = load float, ptr addrspace(1) %200, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %202 = getelementptr inbounds float, ptr addrspace(1) %1, i64 11
  %203 = load float, ptr addrspace(1) %202, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  %204 = fmul float %133, %88
  %205 = fneg float %204
  %206 = tail call float @air.fma.f32(float %88, float %133, float %205) #3
  %207 = fmul float %133, %90
  %208 = tail call float @llvm.fmuladd.f32(float %88, float %135, float %207) #4
  %209 = fadd float %208, %206
  %210 = fadd float %204, %209
  %211 = fsub float %210, %204
  %212 = fsub float %209, %211
  %213 = fmul float %129, %125
  %214 = fneg float %213
  %215 = tail call float @air.fma.f32(float %125, float %129, float %214) #3
  %216 = fmul float %129, %127
  %217 = tail call float @llvm.fmuladd.f32(float %125, float %131, float %216) #4
  %218 = fadd float %215, %217
  %219 = fadd float %213, %218
  %220 = fsub float %219, %213
  %221 = fsub float %218, %220
  %222 = fadd float %210, %219
  %223 = fsub float %222, %210
  %224 = fsub float %222, %223
  %225 = fsub float %210, %224
  %226 = fsub float %219, %223
  %227 = fadd float %226, %225
  %228 = fadd float %212, %221
  %229 = fsub float %228, %212
  %230 = fsub float %228, %229
  %231 = fsub float %212, %230
  %232 = fsub float %221, %229
  %233 = fadd float %232, %231
  %234 = fadd float %228, %227
  %235 = fadd float %222, %234
  %236 = fsub float %235, %222
  %237 = fsub float %234, %236
  %238 = fadd float %233, %237
  %239 = fadd float %235, %238
  %240 = fsub float %239, %235
  %241 = fsub float %238, %240
  %242 = fadd float %201, %239
  %243 = fsub float %242, %201
  %244 = fsub float %242, %243
  %245 = fsub float %201, %244
  %246 = fsub float %239, %243
  %247 = fadd float %246, %245
  %248 = fadd float %203, %241
  %249 = fsub float %248, %203
  %250 = fsub float %248, %249
  %251 = fsub float %203, %250
  %252 = fsub float %241, %249
  %253 = fadd float %252, %251
  %254 = fadd float %248, %247
  %255 = fadd float %242, %254
  %256 = fsub float %255, %242
  %257 = fsub float %254, %256
  %258 = fadd float %253, %257
  %259 = fadd float %255, %258
  %260 = fsub float %259, %255
  %261 = fsub float %258, %260
  %262 = tail call float @air.convert.f.f32.u.i32(i32 %7) #3
  %263 = fadd float %262, -1.000000e+00
  %264 = fcmp ugt float %197, 0.000000e+00
  br i1 %264, label %265, label %277

265:                                              ; preds = %52
  %266 = tail call float @air.convert.f.f32.u.i32(i32 %9) #3
  %267 = fadd float %266, -1.000000e+00
  %268 = fcmp ult float %197, %267
  br i1 %268, label %269, label %277

269:                                              ; preds = %265
  %270 = tail call float @air.floor.f32(float %197) #3
  %271 = fsub float %197, %270
  %272 = fadd float %199, %271
  %273 = fcmp olt float %272, 0.000000e+00
  %274 = select i1 %273, float 0.000000e+00, float %272
  %275 = fcmp ogt float %274, 1.000000e+00
  br i1 %275, label %276, label %277

276:                                              ; preds = %269
  br label %277

277:                                              ; preds = %276, %269, %265, %52
  %278 = phi float [ 1.000000e+00, %276 ], [ %274, %269 ], [ 0.000000e+00, %52 ], [ 0.000000e+00, %265 ]
  %279 = phi float [ %270, %276 ], [ %270, %269 ], [ 0.000000e+00, %52 ], [ %267, %265 ]
  %280 = fcmp ugt float %259, 0.000000e+00
  br i1 %280, label %281, label %291

281:                                              ; preds = %277
  %282 = fcmp ult float %259, %263
  br i1 %282, label %283, label %291

283:                                              ; preds = %281
  %284 = tail call float @air.floor.f32(float %259) #3
  %285 = fsub float %259, %284
  %286 = fadd float %261, %285
  %287 = fcmp olt float %286, 0.000000e+00
  %288 = select i1 %287, float 0.000000e+00, float %286
  %289 = fcmp ogt float %288, 1.000000e+00
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  br label %291

291:                                              ; preds = %290, %283, %281, %277
  %292 = phi float [ 1.000000e+00, %290 ], [ %288, %283 ], [ 0.000000e+00, %277 ], [ 0.000000e+00, %281 ]
  %293 = phi float [ %284, %290 ], [ %284, %283 ], [ 0.000000e+00, %277 ], [ %263, %281 ]
  %294 = tail call i32 @air.convert.u.i32.f.f32(float %279) #3
  %295 = tail call i32 @air.convert.u.i32.f.f32(float %293) #3
  %296 = add i32 %294, 1
  %297 = add i32 %9, -1
  %298 = tail call i32 @air.min.u.i32(i32 %296, i32 %297) #3
  %299 = add i32 %295, 1
  %300 = add i32 %7, -1
  %301 = tail call i32 @air.min.u.i32(i32 %299, i32 %300) #3
  %302 = mul i32 %295, %9
  %303 = add i32 %302, %294
  %304 = mul i32 %303, 3
  %305 = add i32 %302, %298
  %306 = mul i32 %305, 3
  %307 = mul i32 %301, %9
  %308 = add i32 %307, %294
  %309 = mul i32 %308, 3
  %310 = add i32 %307, %298
  %311 = mul i32 %310, 3
  %312 = fsub float 1.000000e+00, %278
  %313 = fsub float 1.000000e+00, %292
  %314 = mul i32 %6, 3
  br label %315

315:                                              ; preds = %315, %291
  %316 = phi i32 [ 0, %291 ], [ %342, %315 ]
  %317 = add i32 %316, %304
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %318
  %320 = load float, ptr addrspace(1) %319, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %321 = add i32 %316, %306
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %322
  %324 = load float, ptr addrspace(1) %323, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %325 = add i32 %316, %309
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %326
  %328 = load float, ptr addrspace(1) %327, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %329 = add i32 %316, %311
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %330
  %332 = load float, ptr addrspace(1) %331, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %333 = fmul float %278, %324
  %334 = tail call float @llvm.fmuladd.f32(float %320, float %312, float %333)
  %335 = fmul float %278, %332
  %336 = tail call float @llvm.fmuladd.f32(float %328, float %312, float %335)
  %337 = fmul float %292, %336
  %338 = tail call float @llvm.fmuladd.f32(float %334, float %313, float %337)
  %339 = add i32 %316, %314
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %340
  store float %338, ptr addrspace(1) %341, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %342 = add nuw nsw i32 %316, 1
  %343 = icmp eq i32 %342, 3
  br i1 %343, label %344, label %315, !llvm.loop !42

344:                                              ; preds = %315, %5
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.min.u.i32(i32, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.convert.u.i32.f.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.floor.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.u.i32(i32) local_unnamed_addr #2

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
!15 = !{ptr @spk_geometry_resample_df, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"img"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"g"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!22 = !{i32 4, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C++ TBAA"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"air-alias-scope-arg(2)"}
!29 = distinct !{!29, !"air-alias-scopes(spk_geometry_resample_df)"}
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
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
