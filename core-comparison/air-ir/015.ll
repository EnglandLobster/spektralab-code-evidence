; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/015.bc'
source_filename = "spk_grain_m_simple"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

%struct.Rng = type <{ <4 x i32>, <2 x i32>, [8 x i8], <4 x i32>, i32, [12 x i8] }>

; Function Attrs: nounwind
define void @spk_grain_m_simple(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %4, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %5, <3 x i32> noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.Rng, align 16
  %9 = extractelement <3 x i32> %6, i64 0
  %10 = load i32, ptr addrspace(1) %4, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %124

12:                                               ; preds = %7
  %13 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 1
  %14 = load i32, ptr addrspace(1) %13, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %15 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 2
  %16 = load i32, ptr addrspace(1) %15, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %17 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 3
  %18 = load i32, ptr addrspace(1) %17, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %19 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 4
  %20 = load i32, ptr addrspace(1) %19, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %21 = udiv i32 %9, %14
  %22 = urem i32 %9, %14
  %23 = add i32 %21, %18
  %24 = mul i32 %23, %20
  %25 = add i32 %22, %16
  %26 = add i32 %25, %24
  %27 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 5
  %28 = load i32, ptr addrspace(1) %27, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %29 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 6
  %30 = load i32, ptr addrspace(1) %29, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %31 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 7
  %32 = load i32, ptr addrspace(1) %31, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %33 = mul i32 %9, 3
  %34 = icmp eq i32 %28, 0
  %35 = bitcast ptr %8 to ptr
  %36 = insertelement <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, i32 %26, i64 0
  %37 = getelementptr inbounds %struct.Rng, ptr %8, i64 0, i32 0
  %38 = insertelement <2 x i32> <i32 poison, i32 0>, i32 %30, i64 0
  %39 = getelementptr inbounds %struct.Rng, ptr %8, i64 0, i32 1
  %40 = getelementptr inbounds %struct.Rng, ptr %8, i64 0, i32 4
  %41 = and i32 %32, 1
  %42 = icmp eq i32 %41, 0
  %43 = and i32 %32, 2
  %44 = icmp eq i32 %43, 0
  br label %45

45:                                               ; preds = %95, %12
  %46 = phi i32 [ 0, %12 ], [ %98, %95 ]
  %47 = add i32 %46, %33
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %48
  %50 = load float, ptr addrspace(1) %49, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %51 = shl nuw nsw i32 %46, 2
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %52
  %54 = load float, ptr addrspace(1) %53, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %55 = fadd float %50, %54
  br i1 %34, label %70, label %56

56:                                               ; preds = %45
  %57 = zext i32 %46 to i64
  %58 = getelementptr inbounds i32, ptr addrspace(1) %2, i64 %57
  %59 = or i32 %51, 1
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %60
  %62 = or i32 %51, 2
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %63
  %65 = or i32 %51, 3
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %66
  br label %100

68:                                               ; preds = %100
  %69 = load float, ptr addrspace(1) %49, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  br label %70

70:                                               ; preds = %68, %45
  %71 = phi float [ %50, %45 ], [ %69, %68 ]
  %72 = phi float [ 0.000000e+00, %45 ], [ %121, %68 ]
  br i1 %42, label %82, label %73

73:                                               ; preds = %70
  %74 = zext i32 %46 to i64
  %75 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %74
  %76 = add nuw nsw i32 %46, 3
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %77
  %79 = load float, ptr addrspace(1) %75, align 4, !tbaa !38, !alias.scope !44, !noalias !45
  %80 = load float, ptr addrspace(1) %78, align 4, !tbaa !38, !alias.scope !44, !noalias !45
  %81 = call float @llvm.fmuladd.f32(float %72, float %79, float %80) #5
  br label %82

82:                                               ; preds = %73, %70
  %83 = phi float [ %81, %73 ], [ %72, %70 ]
  br i1 %44, label %95, label %84

84:                                               ; preds = %82
  %85 = add nuw nsw i32 %46, 6
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %86
  %88 = add nuw nsw i32 %46, 9
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %89
  %91 = load float, ptr addrspace(1) %87, align 4, !tbaa !38, !alias.scope !44, !noalias !45
  %92 = load float, ptr addrspace(1) %90, align 4, !tbaa !38, !alias.scope !44, !noalias !45
  %93 = fmul float %83, %92
  %94 = call float @llvm.fmuladd.f32(float %91, float %71, float %93) #5
  br label %95

95:                                               ; preds = %84, %82
  %96 = phi float [ %94, %84 ], [ %83, %82 ]
  %97 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %48
  store float %96, ptr addrspace(1) %97, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %98 = add nuw nsw i32 %46, 1
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %124, label %45, !llvm.loop !48

100:                                              ; preds = %100, %56
  %101 = phi i32 [ 0, %56 ], [ %122, %100 ]
  %102 = phi float [ 0.000000e+00, %56 ], [ %121, %100 ]
  call void @llvm.lifetime.start.p0(ptr %8)
  %103 = load i32, ptr addrspace(1) %58, align 4, !tbaa !25, !alias.scope !50, !noalias !51
  %104 = mul i32 %101, 10
  %105 = add i32 %103, %104
  %106 = insertelement <4 x i32> %36, i32 %105, i64 1
  store <4 x i32> %106, ptr %37, align 16, !tbaa !52
  store <2 x i32> %38, ptr %39, align 16, !tbaa !52
  store i32 0, ptr %40, align 16, !tbaa !53
  %107 = load float, ptr addrspace(1) %61, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %108 = load float, ptr addrspace(1) %64, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %109 = load float, ptr addrspace(1) %67, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %110 = fdiv float %55, %107
  %111 = call float @air.clamp.f32(float %110, float 0x3EB0C6F7A0000000, float 0x3FEFFFFDE0000000) #6
  %112 = fneg float %111
  %113 = fmul float %109, %112
  %114 = call float @llvm.fmuladd.f32(float %113, float 0x3FEFFFFDE0000000, float 1.000000e+00) #5
  %115 = fdiv float %108, %114
  %116 = fmul float %111, %115
  %117 = fdiv float %107, %108
  %118 = call fastcc float @_Z7poissonR3Rngf(ptr noundef nonnull align 16 dereferenceable(52) %8, float noundef %116) #7
  %119 = fmul float %117, %114
  %120 = fmul float %118, %119
  %121 = fadd float %102, %120
  call void @llvm.lifetime.end.p0(ptr %8)
  %122 = add nuw i32 %101, 1
  %123 = icmp eq i32 %122, %28
  br i1 %123, label %68, label %100, !llvm.loop !55

124:                                              ; preds = %95, %7
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define internal fastcc float @_Z7poissonR3Rngf(ptr noundef nonnull align 16 dereferenceable(52) %0, float noundef %1) unnamed_addr #1 {
  %3 = fcmp ult float %1, 1.000000e+01
  br i1 %3, label %205, label %4

4:                                                ; preds = %2
  %5 = tail call float @air.sqrt.f32(float %1) #6
  %6 = tail call float @air.log.f32(float %1) #6
  %7 = tail call float @llvm.fmuladd.f32(float %5, float 0x40043D70A0000000, float 0x3FEDCAC080000000)
  %8 = tail call float @llvm.fmuladd.f32(float %7, float 0x3F996D0920000000, float 0xBFAE353F80000000)
  %9 = fadd float %7, 0xC00B333340000000
  %10 = fdiv float 0x3FF21FF2E0000000, %9
  %11 = fadd float %10, 0x3FF1FB7EA0000000
  %12 = fadd float %7, -2.000000e+00
  %13 = fdiv float 0x400CFAACE0000000, %12
  %14 = fsub float 0x3FEDAFB7E0000000, %13
  %15 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 4
  %16 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 3
  %17 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 0
  %18 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 1
  %19 = load <2 x i32>, ptr %18, align 16
  %20 = fmul float %8, 2.000000e+00
  %21 = fneg float %1
  %22 = load i32, ptr %15, align 16, !tbaa !53
  %23 = load <4 x i32>, ptr %16, align 16
  %24 = load <4 x i32>, ptr %17, align 16
  br label %25

25:                                               ; preds = %197, %4
  %26 = phi <4 x i32> [ %24, %4 ], [ %113, %197 ]
  %27 = phi <4 x i32> [ %23, %4 ], [ %117, %197 ]
  %28 = phi i32 [ %22, %4 ], [ %114, %197 ]
  %29 = phi float [ undef, %4 ], [ %196, %197 ]
  %30 = phi i32 [ 0, %4 ], [ %198, %197 ]
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = add i32 %28, -1
  br label %66

34:                                               ; preds = %34, %25
  %35 = phi <4 x i32> [ %55, %34 ], [ %26, %25 ]
  %36 = phi <2 x i32> [ %59, %34 ], [ %19, %25 ]
  %37 = phi i32 [ %60, %34 ], [ 0, %25 ]
  %38 = extractelement <4 x i32> %35, i64 0
  %39 = tail call i32 @air.mul_hi.u.i32(i32 -766435501, i32 %38) #6
  %40 = mul i32 %38, -766435501
  %41 = extractelement <4 x i32> %35, i64 2
  %42 = tail call i32 @air.mul_hi.u.i32(i32 -845247145, i32 %41) #6
  %43 = mul i32 %41, -845247145
  %44 = extractelement <4 x i32> %35, i64 1
  %45 = extractelement <2 x i32> %36, i64 0
  %46 = xor i32 %45, %44
  %47 = xor i32 %46, %42
  %48 = insertelement <4 x i32> undef, i32 %47, i64 0
  %49 = insertelement <4 x i32> %48, i32 %43, i64 1
  %50 = extractelement <4 x i32> %35, i64 3
  %51 = extractelement <2 x i32> %36, i64 1
  %52 = xor i32 %51, %50
  %53 = xor i32 %52, %39
  %54 = insertelement <4 x i32> %49, i32 %53, i64 2
  %55 = insertelement <4 x i32> %54, i32 %40, i64 3
  %56 = add i32 %45, -1640531527
  %57 = insertelement <2 x i32> poison, i32 %56, i64 0
  %58 = add i32 %51, -1150833019
  %59 = insertelement <2 x i32> %57, i32 %58, i64 1
  %60 = add nuw nsw i32 %37, 1
  %61 = icmp eq i32 %60, 10
  br i1 %61, label %62, label %34, !llvm.loop !56

62:                                               ; preds = %34
  %63 = extractelement <4 x i32> %26, i64 2
  %64 = add i32 %63, 1
  %65 = insertelement <4 x i32> %26, i32 %64, i64 2
  store <4 x i32> %65, ptr %17, align 16
  br label %66

66:                                               ; preds = %62, %32
  %67 = phi <4 x i32> [ %26, %32 ], [ %65, %62 ]
  %68 = phi i32 [ %33, %32 ], [ 3, %62 ]
  %69 = phi <4 x i32> [ %27, %32 ], [ %55, %62 ]
  %70 = extractelement <4 x i32> %69, i64 0
  %71 = lshr i32 %70, 8
  %72 = tail call float @air.convert.f.f32.u.i32(i32 %71) #6
  %73 = fadd float %72, 5.000000e-01
  %74 = fmul float %73, 0x3E70000000000000
  %75 = fadd float %74, -5.000000e-01
  %76 = icmp eq i32 %68, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %66
  %78 = shufflevector <4 x i32> %69, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %79 = add i32 %68, -1
  br label %112

80:                                               ; preds = %80, %66
  %81 = phi <4 x i32> [ %101, %80 ], [ %67, %66 ]
  %82 = phi <2 x i32> [ %105, %80 ], [ %19, %66 ]
  %83 = phi i32 [ %106, %80 ], [ 0, %66 ]
  %84 = extractelement <4 x i32> %81, i64 0
  %85 = tail call i32 @air.mul_hi.u.i32(i32 -766435501, i32 %84) #6
  %86 = mul i32 %84, -766435501
  %87 = extractelement <4 x i32> %81, i64 2
  %88 = tail call i32 @air.mul_hi.u.i32(i32 -845247145, i32 %87) #6
  %89 = mul i32 %87, -845247145
  %90 = extractelement <4 x i32> %81, i64 1
  %91 = extractelement <2 x i32> %82, i64 0
  %92 = xor i32 %91, %90
  %93 = xor i32 %92, %88
  %94 = insertelement <4 x i32> undef, i32 %93, i64 0
  %95 = insertelement <4 x i32> %94, i32 %89, i64 1
  %96 = extractelement <4 x i32> %81, i64 3
  %97 = extractelement <2 x i32> %82, i64 1
  %98 = xor i32 %97, %96
  %99 = xor i32 %98, %85
  %100 = insertelement <4 x i32> %95, i32 %99, i64 2
  %101 = insertelement <4 x i32> %100, i32 %86, i64 3
  %102 = add i32 %91, -1640531527
  %103 = insertelement <2 x i32> poison, i32 %102, i64 0
  %104 = add i32 %97, -1150833019
  %105 = insertelement <2 x i32> %103, i32 %104, i64 1
  %106 = add nuw nsw i32 %83, 1
  %107 = icmp eq i32 %106, 10
  br i1 %107, label %108, label %80, !llvm.loop !56

108:                                              ; preds = %80
  %109 = extractelement <4 x i32> %67, i64 2
  %110 = add i32 %109, 1
  %111 = insertelement <4 x i32> %67, i32 %110, i64 2
  store <4 x i32> %111, ptr %17, align 16
  br label %112

112:                                              ; preds = %108, %77
  %113 = phi <4 x i32> [ %67, %77 ], [ %111, %108 ]
  %114 = phi i32 [ %79, %77 ], [ 3, %108 ]
  %115 = phi <4 x i32> [ %78, %77 ], [ %101, %108 ]
  %116 = extractelement <4 x i32> %115, i64 0
  %117 = shufflevector <4 x i32> %115, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %118 = lshr i32 %116, 8
  %119 = tail call float @air.convert.f.f32.u.i32(i32 %118) #6
  %120 = fadd float %119, 5.000000e-01
  %121 = fmul float %120, 0x3E70000000000000
  %122 = tail call float @air.fabs.f32(float %75) #6
  %123 = fsub float 5.000000e-01, %122
  %124 = fdiv float %20, %123
  %125 = fadd float %7, %124
  %126 = tail call float @llvm.fmuladd.f32(float %125, float %75, float %1)
  %127 = fadd float %126, 0x3FDB851EC0000000
  %128 = tail call float @air.floor.f32(float %127) #6
  %129 = fcmp ult float %123, 0x3FB1EB8520000000
  %130 = fcmp ugt float %121, %14
  %131 = select i1 %129, i1 true, i1 %130
  br i1 %131, label %132, label %194

132:                                              ; preds = %112
  %133 = fcmp olt float %128, 0.000000e+00
  br i1 %133, label %194, label %134

134:                                              ; preds = %132
  %135 = fcmp olt float %123, 0x3F8A9FBE80000000
  %136 = fcmp ogt float %121, %123
  %137 = select i1 %135, i1 %136, i1 false
  br i1 %137, label %194, label %138

138:                                              ; preds = %134
  %139 = tail call float @air.log.f32(float %121) #6
  %140 = tail call float @air.log.f32(float %11) #6
  %141 = fadd float %139, %140
  %142 = fmul float %123, %123
  %143 = fdiv float %8, %142
  %144 = fadd float %7, %143
  %145 = tail call float @air.log.f32(float %144) #6
  %146 = fsub float %141, %145
  %147 = tail call float @llvm.fmuladd.f32(float %128, float %6, float %21)
  %148 = fadd float %128, 1.000000e+00
  %149 = fcmp oeq float %148, 1.000000e+00
  %150 = fcmp oeq float %148, 2.000000e+00
  %151 = or i1 %149, %150
  br i1 %151, label %187, label %152

152:                                              ; preds = %138
  %153 = fcmp ole float %148, 7.000000e+00
  br i1 %153, label %154, label %159

154:                                              ; preds = %152
  %155 = fsub float 7.000000e+00, %148
  %156 = tail call i32 @air.convert.s.i32.f.f32(float %155) #6
  %157 = tail call float @air.convert.f.f32.s.i32(i32 %156) #6
  %158 = fadd float %148, %157
  br label %159

159:                                              ; preds = %154, %152
  %160 = phi i32 [ %156, %154 ], [ 0, %152 ]
  %161 = phi float [ %158, %154 ], [ %148, %152 ]
  %162 = fmul float %161, %161
  %163 = fdiv float 1.000000e+00, %162
  %164 = tail call float @llvm.fmuladd.f32(float %163, float 0x3F4B951E20000000, float 0xBF43813820000000) #5
  %165 = tail call float @llvm.fmuladd.f32(float %164, float %163, float 0x3F4A01A020000000) #5
  %166 = tail call float @llvm.fmuladd.f32(float %165, float %163, float 0xBF66C16C20000000) #5
  %167 = tail call float @llvm.fmuladd.f32(float %166, float %163, float 0x3FB5555560000000) #5
  %168 = fdiv float %167, %161
  %169 = tail call float @air.log.f32(float 0x401921FB60000000) #6
  %170 = tail call float @llvm.fmuladd.f32(float %169, float 5.000000e-01, float %168) #5
  %171 = fadd float %161, -5.000000e-01
  %172 = tail call float @air.log.f32(float %161) #6
  %173 = tail call float @llvm.fmuladd.f32(float %171, float %172, float %170) #5
  %174 = fsub float %173, %161
  %175 = xor i1 %153, true
  %176 = icmp slt i32 %160, 1
  %177 = select i1 %175, i1 true, i1 %176
  br i1 %177, label %187, label %178

178:                                              ; preds = %178, %159
  %179 = phi i32 [ %185, %178 ], [ 1, %159 ]
  %180 = phi float [ %184, %178 ], [ %174, %159 ]
  %181 = phi float [ %182, %178 ], [ %161, %159 ]
  %182 = fadd float %181, -1.000000e+00
  %183 = tail call float @air.log.f32(float %182) #6
  %184 = fsub float %180, %183
  %185 = add nuw i32 %179, 1
  %186 = icmp eq i32 %179, %160
  br i1 %186, label %187, label %178, !llvm.loop !57

187:                                              ; preds = %178, %159, %138
  %188 = phi float [ 0.000000e+00, %138 ], [ %174, %159 ], [ %184, %178 ]
  %189 = fsub float %147, %188
  %190 = fcmp ugt float %146, %189
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = select i1 %190, float %29, float %128
  br label %194

194:                                              ; preds = %187, %134, %132, %112
  %195 = phi i32 [ 1, %112 ], [ 4, %134 ], [ 4, %132 ], [ %192, %187 ]
  %196 = phi float [ %128, %112 ], [ %29, %134 ], [ %29, %132 ], [ %193, %187 ]
  switch i32 %195, label %200 [
    i32 0, label %197
    i32 4, label %197
  ]

197:                                              ; preds = %194, %194
  %198 = add nuw nsw i32 %30, 1
  %199 = icmp eq i32 %198, 64
  br i1 %199, label %200, label %25, !llvm.loop !58

200:                                              ; preds = %197, %194
  %201 = phi i32 [ %195, %194 ], [ 2, %197 ]
  store i32 %114, ptr %15, align 16, !tbaa !53
  store <4 x i32> %117, ptr %16, align 16
  %202 = icmp eq i32 %201, 2
  br i1 %202, label %203, label %276

203:                                              ; preds = %200
  %204 = tail call float @air.floor.f32(float %1) #6
  br label %276

205:                                              ; preds = %2
  %206 = fneg float %1
  %207 = tail call float @air.exp.f32(float %206) #6
  %208 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 4
  %209 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 3
  %210 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 0
  %211 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 1
  %212 = load <2 x i32>, ptr %211, align 16
  %213 = load i32, ptr %208, align 16, !tbaa !53
  %214 = load <4 x i32>, ptr %209, align 16
  %215 = load <4 x i32>, ptr %210, align 16
  br label %216

216:                                              ; preds = %270, %205
  %217 = phi <4 x i32> [ %215, %205 ], [ %259, %270 ]
  %218 = phi <4 x i32> [ %214, %205 ], [ %263, %270 ]
  %219 = phi i32 [ %213, %205 ], [ %260, %270 ]
  %220 = phi i32 [ 0, %205 ], [ %272, %270 ]
  %221 = phi float [ 1.000000e+00, %205 ], [ %268, %270 ]
  %222 = phi float [ 0.000000e+00, %205 ], [ %271, %270 ]
  %223 = icmp eq i32 %219, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %216
  %225 = add i32 %219, -1
  br label %258

226:                                              ; preds = %226, %216
  %227 = phi <4 x i32> [ %247, %226 ], [ %217, %216 ]
  %228 = phi <2 x i32> [ %251, %226 ], [ %212, %216 ]
  %229 = phi i32 [ %252, %226 ], [ 0, %216 ]
  %230 = extractelement <4 x i32> %227, i64 0
  %231 = tail call i32 @air.mul_hi.u.i32(i32 -766435501, i32 %230) #6
  %232 = mul i32 %230, -766435501
  %233 = extractelement <4 x i32> %227, i64 2
  %234 = tail call i32 @air.mul_hi.u.i32(i32 -845247145, i32 %233) #6
  %235 = mul i32 %233, -845247145
  %236 = extractelement <4 x i32> %227, i64 1
  %237 = extractelement <2 x i32> %228, i64 0
  %238 = xor i32 %237, %236
  %239 = xor i32 %238, %234
  %240 = insertelement <4 x i32> undef, i32 %239, i64 0
  %241 = insertelement <4 x i32> %240, i32 %235, i64 1
  %242 = extractelement <4 x i32> %227, i64 3
  %243 = extractelement <2 x i32> %228, i64 1
  %244 = xor i32 %243, %242
  %245 = xor i32 %244, %231
  %246 = insertelement <4 x i32> %241, i32 %245, i64 2
  %247 = insertelement <4 x i32> %246, i32 %232, i64 3
  %248 = add i32 %237, -1640531527
  %249 = insertelement <2 x i32> poison, i32 %248, i64 0
  %250 = add i32 %243, -1150833019
  %251 = insertelement <2 x i32> %249, i32 %250, i64 1
  %252 = add nuw nsw i32 %229, 1
  %253 = icmp eq i32 %252, 10
  br i1 %253, label %254, label %226, !llvm.loop !56

254:                                              ; preds = %226
  %255 = extractelement <4 x i32> %217, i64 2
  %256 = add i32 %255, 1
  %257 = insertelement <4 x i32> %217, i32 %256, i64 2
  store <4 x i32> %257, ptr %210, align 16
  br label %258

258:                                              ; preds = %254, %224
  %259 = phi <4 x i32> [ %217, %224 ], [ %257, %254 ]
  %260 = phi i32 [ %225, %224 ], [ 3, %254 ]
  %261 = phi <4 x i32> [ %218, %224 ], [ %247, %254 ]
  %262 = extractelement <4 x i32> %261, i64 0
  %263 = shufflevector <4 x i32> %261, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %264 = lshr i32 %262, 8
  %265 = tail call float @air.convert.f.f32.u.i32(i32 %264) #6
  %266 = fadd float %265, 5.000000e-01
  %267 = fmul float %266, 0x3E70000000000000
  %268 = fmul float %221, %267
  %269 = fcmp ogt float %268, %207
  br i1 %269, label %270, label %274

270:                                              ; preds = %258
  %271 = fadd float %222, 1.000000e+00
  %272 = add nuw nsw i32 %220, 1
  %273 = icmp eq i32 %272, 512
  br i1 %273, label %274, label %216, !llvm.loop !59

274:                                              ; preds = %270, %258
  %275 = phi float [ %222, %258 ], [ %271, %270 ]
  store i32 %260, ptr %208, align 16, !tbaa !53
  store <4 x i32> %263, ptr %209, align 16
  br label %276

276:                                              ; preds = %274, %203, %200
  %277 = phi float [ %204, %203 ], [ %196, %200 ], [ %275, %274 ]
  ret float %277
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.u.i32(i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.mul_hi.u.i32(i32, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.exp.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.floor.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.log.f32(float) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.convert.f.f32.s.i32(i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.convert.s.i32.f.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fabs.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.sqrt.f32(float) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.clamp.f32(float, float, float) local_unnamed_addr #2

declare void @llvm.lifetime.end.i64(i64)

declare void @llvm.lifetime.start.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

attributes #0 = { nounwind "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { inlinehint mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }
attributes #7 = { nobuiltin nounwind "no-builtins" }

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
!15 = !{ptr @spk_grain_m_simple, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"cmy"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"lp"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"streams"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"k"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!24 = !{i32 6, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C++ TBAA"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"air-alias-scope-arg(4)"}
!31 = distinct !{!31, !"air-alias-scopes(spk_grain_m_simple)"}
!32 = !{!33, !34, !35, !36, !37}
!33 = distinct !{!33, !31, !"air-alias-scope-arg(0)"}
!34 = distinct !{!34, !31, !"air-alias-scope-arg(1)"}
!35 = distinct !{!35, !31, !"air-alias-scope-arg(2)"}
!36 = distinct !{!36, !31, !"air-alias-scope-arg(3)"}
!37 = distinct !{!37, !31, !"air-alias-scope-arg(5)"}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !27, i64 0}
!40 = !{!33}
!41 = !{!34, !35, !36, !30, !37}
!42 = !{!34}
!43 = !{!33, !35, !36, !30, !37}
!44 = !{!36}
!45 = !{!33, !34, !35, !30, !37}
!46 = !{!37}
!47 = !{!33, !34, !35, !36, !30}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!35}
!51 = !{!33, !34, !36, !30, !37}
!52 = !{!27, !27, i64 0}
!53 = !{!54, !26, i64 48}
!54 = !{!"_ZTS3Rng", !27, i64 0, !27, i64 16, !27, i64 32, !26, i64 48}
!55 = distinct !{!55, !49}
!56 = distinct !{!56, !49}
!57 = distinct !{!57, !49}
!58 = distinct !{!58, !49}
!59 = distinct !{!59, !49}
