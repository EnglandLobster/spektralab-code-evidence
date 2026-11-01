; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/032.bc'
source_filename = "spk_couplers_correction"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define void @spk_couplers_correction(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %4, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %5, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %6, <3 x i32> noundef %7) local_unnamed_addr #0 {
  %9 = extractelement <3 x i32> %7, i64 0
  %10 = load i32, ptr addrspace(1) %5, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %76

12:                                               ; preds = %8
  %13 = mul i32 %9, 3
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %14
  %16 = load float, ptr addrspace(1) %15, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %17 = add i32 %13, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %18
  %20 = load float, ptr addrspace(1) %19, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %21 = add i32 %13, 2
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %22
  %24 = load float, ptr addrspace(1) %23, align 4, !tbaa !40, !alias.scope !42, !noalias !43
  %25 = load i32, ptr addrspace(1) %3, align 4, !tbaa !26, !alias.scope !44, !noalias !45
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %12
  %28 = load float, ptr addrspace(1) %2, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %29 = fsub float %28, %16
  %30 = getelementptr inbounds float, ptr addrspace(1) %2, i64 1
  %31 = load float, ptr addrspace(1) %30, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %32 = fsub float %31, %20
  %33 = getelementptr inbounds float, ptr addrspace(1) %2, i64 2
  %34 = load float, ptr addrspace(1) %33, align 4, !tbaa !40, !alias.scope !46, !noalias !47
  %35 = fsub float %34, %24
  br label %36

36:                                               ; preds = %27, %12
  %37 = phi float [ %29, %27 ], [ %16, %12 ]
  %38 = phi float [ %32, %27 ], [ %20, %12 ]
  %39 = phi float [ %35, %27 ], [ %24, %12 ]
  %40 = load float, ptr addrspace(1) %4, align 4, !tbaa !40, !alias.scope !48, !noalias !49
  %41 = fmul float %37, %40
  %42 = tail call float @llvm.fmuladd.f32(float %41, float %37, float %37)
  %43 = fmul float %38, %40
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %38, float %38)
  %45 = fmul float %39, %40
  %46 = tail call float @llvm.fmuladd.f32(float %45, float %39, float %39)
  %47 = load float, ptr addrspace(1) %1, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %48 = getelementptr inbounds float, ptr addrspace(1) %1, i64 3
  %49 = load float, ptr addrspace(1) %48, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %50 = fmul float %44, %49
  %51 = tail call float @llvm.fmuladd.f32(float %42, float %47, float %50)
  %52 = getelementptr inbounds float, ptr addrspace(1) %1, i64 6
  %53 = load float, ptr addrspace(1) %52, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %54 = tail call float @llvm.fmuladd.f32(float %46, float %53, float %51)
  %55 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %14
  store float %54, ptr addrspace(1) %55, align 4, !tbaa !40, !alias.scope !52, !noalias !53
  %56 = getelementptr inbounds float, ptr addrspace(1) %1, i64 1
  %57 = load float, ptr addrspace(1) %56, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %58 = getelementptr inbounds float, ptr addrspace(1) %1, i64 4
  %59 = load float, ptr addrspace(1) %58, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %60 = fmul float %44, %59
  %61 = tail call float @llvm.fmuladd.f32(float %42, float %57, float %60)
  %62 = getelementptr inbounds float, ptr addrspace(1) %1, i64 7
  %63 = load float, ptr addrspace(1) %62, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %64 = tail call float @llvm.fmuladd.f32(float %46, float %63, float %61)
  %65 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %18
  store float %64, ptr addrspace(1) %65, align 4, !tbaa !40, !alias.scope !52, !noalias !53
  %66 = getelementptr inbounds float, ptr addrspace(1) %1, i64 2
  %67 = load float, ptr addrspace(1) %66, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %68 = getelementptr inbounds float, ptr addrspace(1) %1, i64 5
  %69 = load float, ptr addrspace(1) %68, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %70 = fmul float %44, %69
  %71 = tail call float @llvm.fmuladd.f32(float %42, float %67, float %70)
  %72 = getelementptr inbounds float, ptr addrspace(1) %1, i64 8
  %73 = load float, ptr addrspace(1) %72, align 4, !tbaa !40, !alias.scope !50, !noalias !51
  %74 = tail call float @llvm.fmuladd.f32(float %46, float %73, float %71)
  %75 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %22
  store float %74, ptr addrspace(1) %75, align 4, !tbaa !40, !alias.scope !52, !noalias !53
  br label %76

76:                                               ; preds = %36, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!15 = !{ptr @spk_couplers_correction, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"cmy"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"m"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"dmax"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"pos"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"shift"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"n"}
!24 = !{i32 6, !"air.buffer", !"air.location_index", i32 6, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!25 = !{i32 7, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C++ TBAA"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"air-alias-scope-arg(5)"}
!32 = distinct !{!32, !"air-alias-scopes(spk_couplers_correction)"}
!33 = !{!34, !35, !36, !37, !38, !39}
!34 = distinct !{!34, !32, !"air-alias-scope-arg(0)"}
!35 = distinct !{!35, !32, !"air-alias-scope-arg(1)"}
!36 = distinct !{!36, !32, !"air-alias-scope-arg(2)"}
!37 = distinct !{!37, !32, !"air-alias-scope-arg(3)"}
!38 = distinct !{!38, !32, !"air-alias-scope-arg(4)"}
!39 = distinct !{!39, !32, !"air-alias-scope-arg(6)"}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !28, i64 0}
!42 = !{!34}
!43 = !{!35, !36, !37, !38, !31, !39}
!44 = !{!37}
!45 = !{!34, !35, !36, !38, !31, !39}
!46 = !{!36}
!47 = !{!34, !35, !37, !38, !31, !39}
!48 = !{!38}
!49 = !{!34, !35, !36, !37, !31, !39}
!50 = !{!35}
!51 = !{!34, !36, !37, !38, !31, !39}
!52 = !{!39}
!53 = !{!34, !35, !36, !37, !38, !31}
