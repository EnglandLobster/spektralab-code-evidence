; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/039.bc'
source_filename = "spk_edr"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define void @spk_edr(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %4, <3 x i32> noundef %5) local_unnamed_addr #0 {
  %7 = extractelement <3 x i32> %5, i64 0
  %8 = load i32, ptr addrspace(1) %3, align 4, !tbaa !24, !alias.scope !28, !noalias !31
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %82

10:                                               ; preds = %6
  %11 = mul i32 %7, 3
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %12
  %14 = load float, ptr addrspace(1) %13, align 4, !tbaa !36, !alias.scope !38, !noalias !39
  %15 = add i32 %11, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %16
  %18 = load float, ptr addrspace(1) %17, align 4, !tbaa !36, !alias.scope !38, !noalias !39
  %19 = add i32 %11, 2
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %20
  %22 = load float, ptr addrspace(1) %21, align 4, !tbaa !36, !alias.scope !38, !noalias !39
  %23 = load float, ptr addrspace(1) %1, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %24 = getelementptr inbounds float, ptr addrspace(1) %1, i64 1
  %25 = load float, ptr addrspace(1) %24, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %26 = fmul float %18, %25
  %27 = tail call float @llvm.fmuladd.f32(float %23, float %14, float %26)
  %28 = getelementptr inbounds float, ptr addrspace(1) %1, i64 2
  %29 = load float, ptr addrspace(1) %28, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %22, float %27)
  %31 = tail call float @air.fmax.f32(float %30, float 0.000000e+00) #3
  %32 = fcmp ogt float %31, 0.000000e+00
  br i1 %32, label %33, label %72

33:                                               ; preds = %10
  %34 = getelementptr inbounds float, ptr addrspace(1) %1, i64 6
  %35 = load float, ptr addrspace(1) %34, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %36 = getelementptr inbounds float, ptr addrspace(1) %1, i64 5
  %37 = load float, ptr addrspace(1) %36, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %38 = fcmp olt float %31, %37
  %39 = fcmp ogt float %31, %35
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %33
  %42 = getelementptr inbounds float, ptr addrspace(1) %1, i64 7
  %43 = load float, ptr addrspace(1) %42, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %44 = tail call i32 @air.convert.u.i32.f.f32(float %43) #3
  %45 = tail call i32 @air.max.u.i32(i32 %44, i32 2) #3
  %46 = tail call float @air.log2.f32(float %31) #3
  %47 = getelementptr inbounds float, ptr addrspace(1) %1, i64 3
  %48 = load float, ptr addrspace(1) %47, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %49 = fsub float %46, %48
  %50 = getelementptr inbounds float, ptr addrspace(1) %1, i64 4
  %51 = load float, ptr addrspace(1) %50, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %52 = fmul float %49, %51
  %53 = tail call float @air.clamp.f32(float %52, float 0.000000e+00, float 1.000000e+00) #3
  %54 = add i32 %45, -1
  %55 = tail call float @air.convert.f.f32.u.i32(i32 %54) #3
  %56 = fmul float %53, %55
  %57 = tail call float @air.floor.f32(float %56) #3
  %58 = tail call i32 @air.convert.u.i32.f.f32(float %57) #3
  %59 = add i32 %45, -2
  %60 = tail call i32 @air.min.u.i32(i32 %58, i32 %59) #3
  %61 = tail call float @air.convert.f.f32.u.i32(i32 %60) #3
  %62 = fsub float %56, %61
  %63 = zext i32 %60 to i64
  %64 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %63
  %65 = load float, ptr addrspace(1) %64, align 4, !tbaa !36, !alias.scope !42, !noalias !43
  %66 = add i32 %60, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %67
  %69 = load float, ptr addrspace(1) %68, align 4, !tbaa !36, !alias.scope !42, !noalias !43
  %70 = tail call float @air.mix.f32(float %65, float %69, float %62) #3
  %71 = tail call float @air.exp2.f32(float %70) #3
  br label %72

72:                                               ; preds = %41, %33, %10
  %73 = phi float [ %71, %41 ], [ %31, %10 ], [ %31, %33 ]
  %74 = fadd float %31, 0x3DDB7CDFE0000000
  %75 = fdiv float %73, %74
  %76 = fmul float %14, %75
  %77 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %12
  store float %76, ptr addrspace(1) %77, align 4, !tbaa !36, !alias.scope !44, !noalias !45
  %78 = fmul float %18, %75
  %79 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %16
  store float %78, ptr addrspace(1) %79, align 4, !tbaa !36, !alias.scope !44, !noalias !45
  %80 = fmul float %22, %75
  %81 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %20
  store float %80, ptr addrspace(1) %81, align 4, !tbaa !36, !alias.scope !44, !noalias !45
  br label %82

82:                                               ; preds = %72, %6
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.exp2.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.mix.f32(float, float, float) local_unnamed_addr #1

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

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.log2.f32(float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @air.max.u.i32(i32, i32) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fmax.f32(float, float) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

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
!15 = !{ptr @spk_edr, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"rgb"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"p"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"lut"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"n"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!23 = !{i32 5, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C++ TBAA"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"air-alias-scope-arg(3)"}
!30 = distinct !{!30, !"air-alias-scopes(spk_edr)"}
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
!42 = !{!34}
!43 = !{!32, !33, !29, !35}
!44 = !{!35}
!45 = !{!32, !33, !34, !29}
