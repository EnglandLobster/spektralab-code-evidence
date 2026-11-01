; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/014.bc'
source_filename = "spk_grain_m_layer_one"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

%struct.Rng = type <{ <4 x i32>, <2 x i32>, [8 x i8], <4 x i32>, i32, [12 x i8] }>

; Function Attrs: nounwind
define void @spk_grain_m_layer_one(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %4, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %5, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %6, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %7, <3 x i32> noundef %8) local_unnamed_addr #0 {
  %10 = alloca %struct.Rng, align 16
  %11 = extractelement <3 x i32> %8, i64 0
  %12 = load i32, ptr addrspace(1) %6, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %161

14:                                               ; preds = %9
  %15 = getelementptr inbounds i32, ptr addrspace(1) %6, i64 1
  %16 = load i32, ptr addrspace(1) %15, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %17 = getelementptr inbounds i32, ptr addrspace(1) %6, i64 2
  %18 = load i32, ptr addrspace(1) %17, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %19 = getelementptr inbounds i32, ptr addrspace(1) %6, i64 3
  %20 = load i32, ptr addrspace(1) %19, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %21 = getelementptr inbounds i32, ptr addrspace(1) %6, i64 4
  %22 = load i32, ptr addrspace(1) %21, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %23 = udiv i32 %11, %16
  %24 = urem i32 %11, %16
  %25 = add i32 %23, %20
  %26 = mul i32 %25, %22
  %27 = add i32 %24, %18
  %28 = add i32 %27, %26
  %29 = getelementptr inbounds i32, ptr addrspace(1) %6, i64 5
  %30 = load i32, ptr addrspace(1) %29, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %31 = getelementptr inbounds i32, ptr addrspace(1) %6, i64 6
  %32 = load i32, ptr addrspace(1) %31, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %33 = getelementptr inbounds i32, ptr addrspace(1) %6, i64 7
  %34 = load i32, ptr addrspace(1) %33, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %35 = getelementptr inbounds i32, ptr addrspace(1) %6, i64 8
  %36 = load i32, ptr addrspace(1) %35, align 4, !tbaa !27, !alias.scope !31, !noalias !34
  %37 = mul i32 %11, 3
  %38 = icmp eq i32 %32, 0
  %39 = add i32 %30, -1
  %40 = bitcast ptr %10 to ptr
  %41 = insertelement <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, i32 %28, i64 0
  %42 = getelementptr inbounds %struct.Rng, ptr %10, i64 0, i32 0
  %43 = insertelement <2 x i32> <i32 poison, i32 0>, i32 %34, i64 0
  %44 = getelementptr inbounds %struct.Rng, ptr %10, i64 0, i32 1
  %45 = getelementptr inbounds %struct.Rng, ptr %10, i64 0, i32 4
  %46 = mul i32 %39, 3
  %47 = icmp eq i32 %30, 0
  %48 = mul i32 %39, 9
  br label %49

49:                                               ; preds = %124, %14
  %50 = phi i32 [ 0, %14 ], [ %159, %124 ]
  %51 = add i32 %50, %37
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %52
  %54 = load float, ptr addrspace(1) %53, align 4, !tbaa !42, !alias.scope !44, !noalias !45
  %55 = fneg float %54
  %56 = select i1 %38, float %54, float %55
  %57 = zext i32 %50 to i64
  %58 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %57
  %59 = load float, ptr addrspace(1) %58, align 4, !tbaa !42, !alias.scope !46, !noalias !47
  %60 = fcmp ugt float %56, %59
  br i1 %60, label %61, label %96

61:                                               ; preds = %49
  %62 = add i32 %50, %46
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %63
  %65 = load float, ptr addrspace(1) %64, align 4, !tbaa !42, !alias.scope !46, !noalias !47
  %66 = fcmp ult float %56, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %61
  br i1 %47, label %84, label %68

68:                                               ; preds = %68, %67
  %69 = phi i32 [ %82, %68 ], [ 0, %67 ]
  %70 = phi i32 [ %81, %68 ], [ %30, %67 ]
  %71 = sub i32 %70, %69
  %72 = lshr i32 %71, 1
  %73 = add i32 %72, %69
  %74 = mul i32 %73, 3
  %75 = add i32 %74, %50
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %76
  %78 = load float, ptr addrspace(1) %77, align 4, !tbaa !42, !alias.scope !46, !noalias !47
  %79 = fcmp ugt float %78, %56
  %80 = add i32 %73, 1
  %81 = select i1 %79, i32 %73, i32 %70
  %82 = select i1 %79, i32 %69, i32 %80
  %83 = icmp ugt i32 %81, %82
  br i1 %83, label %68, label %84, !llvm.loop !48

84:                                               ; preds = %68, %67
  %85 = phi i32 [ 0, %67 ], [ %82, %68 ]
  %86 = add i32 %85, -1
  %87 = mul i32 %86, 3
  %88 = add i32 %87, %50
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %89
  %91 = load float, ptr addrspace(1) %90, align 4, !tbaa !42, !alias.scope !46, !noalias !47
  %92 = fsub float %56, %91
  %93 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %89
  %94 = load float, ptr addrspace(1) %93, align 4, !tbaa !42, !alias.scope !50, !noalias !51
  %95 = fmul float %92, %94
  br label %96

96:                                               ; preds = %84, %61, %49
  %97 = phi float [ %95, %84 ], [ 0.000000e+00, %49 ], [ 0.000000e+00, %61 ]
  %98 = phi i1 [ false, %84 ], [ false, %49 ], [ true, %61 ]
  %99 = phi i32 [ %86, %84 ], [ 0, %49 ], [ 0, %61 ]
  %100 = mul nuw nsw i32 %50, 3
  %101 = add i32 %100, %36
  br i1 %60, label %106, label %102

102:                                              ; preds = %96
  %103 = zext i32 %101 to i64
  %104 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %103
  %105 = load float, ptr addrspace(1) %104, align 4, !tbaa !42, !alias.scope !52, !noalias !53
  br label %124

106:                                              ; preds = %96
  br i1 %98, label %107, label %112

107:                                              ; preds = %106
  %108 = add i32 %101, %48
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %109
  %111 = load float, ptr addrspace(1) %110, align 4, !tbaa !42, !alias.scope !52, !noalias !53
  br label %124

112:                                              ; preds = %106
  %113 = mul i32 %99, 9
  %114 = add i32 %113, %101
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %115
  %117 = load float, ptr addrspace(1) %116, align 4, !tbaa !42, !alias.scope !52, !noalias !53
  %118 = add i32 %114, 9
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %119
  %121 = load float, ptr addrspace(1) %120, align 4, !tbaa !42, !alias.scope !52, !noalias !53
  %122 = fsub float %121, %117
  %123 = call float @llvm.fmuladd.f32(float %97, float %122, float %117)
  br label %124

124:                                              ; preds = %112, %107, %102
  %125 = phi float [ %105, %102 ], [ %111, %107 ], [ %123, %112 ]
  %126 = shl i32 %101, 2
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %127
  %129 = load float, ptr addrspace(1) %128, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %130 = fadd float %125, %129
  call void @llvm.lifetime.start.p0(ptr %10)
  %131 = zext i32 %101 to i64
  %132 = getelementptr inbounds i32, ptr addrspace(1) %5, i64 %131
  %133 = load i32, ptr addrspace(1) %132, align 4, !tbaa !27, !alias.scope !56, !noalias !57
  %134 = insertelement <4 x i32> %41, i32 %133, i64 1
  store <4 x i32> %134, ptr %42, align 16, !tbaa !58
  store <2 x i32> %43, ptr %44, align 16, !tbaa !58
  store i32 0, ptr %45, align 16, !tbaa !59
  %135 = or i32 %126, 1
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %136
  %138 = load float, ptr addrspace(1) %137, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %139 = or i32 %126, 2
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %140
  %142 = load float, ptr addrspace(1) %141, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %143 = or i32 %126, 3
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %144
  %146 = load float, ptr addrspace(1) %145, align 4, !tbaa !42, !alias.scope !54, !noalias !55
  %147 = fdiv float %130, %138
  %148 = call float @air.clamp.f32(float %147, float 0x3EB0C6F7A0000000, float 0x3FEFFFFDE0000000) #5
  %149 = fneg float %148
  %150 = fmul float %146, %149
  %151 = call float @llvm.fmuladd.f32(float %150, float 0x3FEFFFFDE0000000, float 1.000000e+00) #6
  %152 = fdiv float %142, %151
  %153 = fmul float %148, %152
  %154 = fdiv float %138, %142
  %155 = call fastcc float @_Z7poissonR3Rngf(ptr noundef nonnull align 16 dereferenceable(52) %10, float noundef %153) #7
  %156 = fmul float %154, %151
  %157 = fmul float %155, %156
  %158 = getelementptr inbounds float, ptr addrspace(1) %7, i64 %52
  store float %157, ptr addrspace(1) %158, align 4, !tbaa !42, !alias.scope !61, !noalias !62
  call void @llvm.lifetime.end.p0(ptr %10)
  %159 = add nuw nsw i32 %50, 1
  %160 = icmp eq i32 %159, 3
  br i1 %160, label %161, label %49, !llvm.loop !63

161:                                              ; preds = %124, %9
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define internal fastcc float @_Z7poissonR3Rngf(ptr noundef nonnull align 16 dereferenceable(52) %0, float noundef %1) unnamed_addr #1 {
  %3 = fcmp ult float %1, 1.000000e+01
  br i1 %3, label %205, label %4

4:                                                ; preds = %2
  %5 = tail call float @air.sqrt.f32(float %1) #5
  %6 = tail call float @air.log.f32(float %1) #5
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
  %22 = load i32, ptr %15, align 16, !tbaa !59
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
  %39 = tail call i32 @air.mul_hi.u.i32(i32 -766435501, i32 %38) #5
  %40 = mul i32 %38, -766435501
  %41 = extractelement <4 x i32> %35, i64 2
  %42 = tail call i32 @air.mul_hi.u.i32(i32 -845247145, i32 %41) #5
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
  br i1 %61, label %62, label %34, !llvm.loop !64

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
  %72 = tail call float @air.convert.f.f32.u.i32(i32 %71) #5
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
  %85 = tail call i32 @air.mul_hi.u.i32(i32 -766435501, i32 %84) #5
  %86 = mul i32 %84, -766435501
  %87 = extractelement <4 x i32> %81, i64 2
  %88 = tail call i32 @air.mul_hi.u.i32(i32 -845247145, i32 %87) #5
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
  br i1 %107, label %108, label %80, !llvm.loop !64

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
  %119 = tail call float @air.convert.f.f32.u.i32(i32 %118) #5
  %120 = fadd float %119, 5.000000e-01
  %121 = fmul float %120, 0x3E70000000000000
  %122 = tail call float @air.fabs.f32(float %75) #5
  %123 = fsub float 5.000000e-01, %122
  %124 = fdiv float %20, %123
  %125 = fadd float %7, %124
  %126 = tail call float @llvm.fmuladd.f32(float %125, float %75, float %1)
  %127 = fadd float %126, 0x3FDB851EC0000000
  %128 = tail call float @air.floor.f32(float %127) #5
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
  %139 = tail call float @air.log.f32(float %121) #5
  %140 = tail call float @air.log.f32(float %11) #5
  %141 = fadd float %139, %140
  %142 = fmul float %123, %123
  %143 = fdiv float %8, %142
  %144 = fadd float %7, %143
  %145 = tail call float @air.log.f32(float %144) #5
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
  %156 = tail call i32 @air.convert.s.i32.f.f32(float %155) #5
  %157 = tail call float @air.convert.f.f32.s.i32(i32 %156) #5
  %158 = fadd float %148, %157
  br label %159

159:                                              ; preds = %154, %152
  %160 = phi i32 [ %156, %154 ], [ 0, %152 ]
  %161 = phi float [ %158, %154 ], [ %148, %152 ]
  %162 = fmul float %161, %161
  %163 = fdiv float 1.000000e+00, %162
  %164 = tail call float @llvm.fmuladd.f32(float %163, float 0x3F4B951E20000000, float 0xBF43813820000000) #6
  %165 = tail call float @llvm.fmuladd.f32(float %164, float %163, float 0x3F4A01A020000000) #6
  %166 = tail call float @llvm.fmuladd.f32(float %165, float %163, float 0xBF66C16C20000000) #6
  %167 = tail call float @llvm.fmuladd.f32(float %166, float %163, float 0x3FB5555560000000) #6
  %168 = fdiv float %167, %161
  %169 = tail call float @air.log.f32(float 0x401921FB60000000) #5
  %170 = tail call float @llvm.fmuladd.f32(float %169, float 5.000000e-01, float %168) #6
  %171 = fadd float %161, -5.000000e-01
  %172 = tail call float @air.log.f32(float %161) #5
  %173 = tail call float @llvm.fmuladd.f32(float %171, float %172, float %170) #6
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
  %183 = tail call float @air.log.f32(float %182) #5
  %184 = fsub float %180, %183
  %185 = add nuw i32 %179, 1
  %186 = icmp eq i32 %179, %160
  br i1 %186, label %187, label %178, !llvm.loop !65

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
  br i1 %199, label %200, label %25, !llvm.loop !66

200:                                              ; preds = %197, %194
  %201 = phi i32 [ %195, %194 ], [ 2, %197 ]
  store i32 %114, ptr %15, align 16, !tbaa !59
  store <4 x i32> %117, ptr %16, align 16
  %202 = icmp eq i32 %201, 2
  br i1 %202, label %203, label %276

203:                                              ; preds = %200
  %204 = tail call float @air.floor.f32(float %1) #5
  br label %276

205:                                              ; preds = %2
  %206 = fneg float %1
  %207 = tail call float @air.exp.f32(float %206) #5
  %208 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 4
  %209 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 3
  %210 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 0
  %211 = getelementptr inbounds %struct.Rng, ptr %0, i64 0, i32 1
  %212 = load <2 x i32>, ptr %211, align 16
  %213 = load i32, ptr %208, align 16, !tbaa !59
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
  %231 = tail call i32 @air.mul_hi.u.i32(i32 -766435501, i32 %230) #5
  %232 = mul i32 %230, -766435501
  %233 = extractelement <4 x i32> %227, i64 2
  %234 = tail call i32 @air.mul_hi.u.i32(i32 -845247145, i32 %233) #5
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
  br i1 %253, label %254, label %226, !llvm.loop !64

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
  %265 = tail call float @air.convert.f.f32.u.i32(i32 %264) #5
  %266 = fadd float %265, 5.000000e-01
  %267 = fmul float %266, 0x3E70000000000000
  %268 = fmul float %221, %267
  %269 = fcmp ogt float %268, %207
  br i1 %269, label %270, label %274

270:                                              ; preds = %258
  %271 = fadd float %222, 1.000000e+00
  %272 = add nuw nsw i32 %220, 1
  %273 = icmp eq i32 %272, 512
  br i1 %273, label %274, label %216, !llvm.loop !67

274:                                              ; preds = %270, %258
  %275 = phi float [ %222, %258 ], [ %271, %270 ]
  store i32 %260, ptr %208, align 16, !tbaa !59
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
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { nounwind }
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
!15 = !{ptr @spk_grain_m_layer_one, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"cmy"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"xa"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"inv"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"ylay"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"lp"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"streams"}
!24 = !{i32 6, !"air.buffer", !"air.location_index", i32 6, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!25 = !{i32 7, !"air.buffer", !"air.location_index", i32 7, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!26 = !{i32 8, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C++ TBAA"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"air-alias-scope-arg(6)"}
!33 = distinct !{!33, !"air-alias-scopes(spk_grain_m_layer_one)"}
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
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!37}
!51 = !{!35, !36, !38, !39, !40, !32, !41}
!52 = !{!38}
!53 = !{!35, !36, !37, !39, !40, !32, !41}
!54 = !{!39}
!55 = !{!35, !36, !37, !38, !40, !32, !41}
!56 = !{!40}
!57 = !{!35, !36, !37, !38, !39, !32, !41}
!58 = !{!29, !29, i64 0}
!59 = !{!60, !28, i64 48}
!60 = !{!"_ZTS3Rng", !29, i64 0, !29, i64 16, !29, i64 32, !28, i64 48}
!61 = !{!41}
!62 = !{!35, !36, !37, !38, !39, !40, !32}
!63 = distinct !{!63, !49}
!64 = distinct !{!64, !49}
!65 = distinct !{!65, !49}
!66 = distinct !{!66, !49}
!67 = distinct !{!67, !49}
