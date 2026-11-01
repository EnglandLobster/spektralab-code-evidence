; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/017.bc'
source_filename = "spk_grain_m_post"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite)
define void @spk_grain_m_post(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %4, <3 x i32> noundef %5) local_unnamed_addr #0 {
  %7 = extractelement <3 x i32> %5, i64 0
  %8 = load i32, ptr addrspace(1) %3, align 4, !tbaa !24, !alias.scope !28, !noalias !31
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %102

10:                                               ; preds = %6
  %11 = getelementptr inbounds i32, ptr addrspace(1) %3, i64 1
  %12 = load i32, ptr addrspace(1) %11, align 4, !tbaa !24, !alias.scope !28, !noalias !31
  %13 = mul i32 %7, 3
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %14
  %16 = load float, ptr addrspace(1) %15, align 4, !tbaa !36, !alias.scope !38, !noalias !39
  %17 = insertelement <3 x float> undef, float %16, i64 0
  %18 = add i32 %13, 1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %19
  %21 = load float, ptr addrspace(1) %20, align 4, !tbaa !36, !alias.scope !38, !noalias !39
  %22 = insertelement <3 x float> %17, float %21, i64 1
  %23 = add i32 %13, 2
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %24
  %26 = load float, ptr addrspace(1) %25, align 4, !tbaa !36, !alias.scope !38, !noalias !39
  %27 = insertelement <3 x float> %22, float %26, i64 2
  %28 = and i32 %12, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %10
  %31 = load float, ptr addrspace(1) %2, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %32 = insertelement <3 x float> undef, float %31, i64 0
  %33 = getelementptr inbounds float, ptr addrspace(1) %2, i64 1
  %34 = load float, ptr addrspace(1) %33, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %35 = insertelement <3 x float> %32, float %34, i64 1
  %36 = getelementptr inbounds float, ptr addrspace(1) %2, i64 2
  %37 = load float, ptr addrspace(1) %36, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %38 = insertelement <3 x float> %35, float %37, i64 2
  %39 = getelementptr inbounds float, ptr addrspace(1) %2, i64 3
  %40 = load float, ptr addrspace(1) %39, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %41 = insertelement <3 x float> undef, float %40, i64 0
  %42 = getelementptr inbounds float, ptr addrspace(1) %2, i64 4
  %43 = load float, ptr addrspace(1) %42, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %44 = insertelement <3 x float> %41, float %43, i64 1
  %45 = getelementptr inbounds float, ptr addrspace(1) %2, i64 5
  %46 = load float, ptr addrspace(1) %45, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %47 = insertelement <3 x float> %44, float %46, i64 2
  %48 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %27, <3 x float> %38, <3 x float> %47)
  br label %49

49:                                               ; preds = %30, %10
  %50 = phi <3 x float> [ %48, %30 ], [ %27, %10 ]
  %51 = and i32 %12, 26
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %94, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %14
  %55 = load float, ptr addrspace(1) %54, align 4, !tbaa !36, !alias.scope !42, !noalias !43
  %56 = insertelement <3 x float> undef, float %55, i64 0
  %57 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %19
  %58 = load float, ptr addrspace(1) %57, align 4, !tbaa !36, !alias.scope !42, !noalias !43
  %59 = insertelement <3 x float> %56, float %58, i64 1
  %60 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %24
  %61 = load float, ptr addrspace(1) %60, align 4, !tbaa !36, !alias.scope !42, !noalias !43
  %62 = insertelement <3 x float> %59, float %61, i64 2
  %63 = getelementptr inbounds float, ptr addrspace(1) %2, i64 6
  %64 = load float, ptr addrspace(1) %63, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %65 = insertelement <3 x float> undef, float %64, i64 0
  %66 = getelementptr inbounds float, ptr addrspace(1) %2, i64 7
  %67 = load float, ptr addrspace(1) %66, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %68 = insertelement <3 x float> %65, float %67, i64 1
  %69 = getelementptr inbounds float, ptr addrspace(1) %2, i64 8
  %70 = load float, ptr addrspace(1) %69, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %71 = insertelement <3 x float> %68, float %70, i64 2
  %72 = getelementptr inbounds float, ptr addrspace(1) %2, i64 9
  %73 = load float, ptr addrspace(1) %72, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %74 = insertelement <3 x float> undef, float %73, i64 0
  %75 = getelementptr inbounds float, ptr addrspace(1) %2, i64 10
  %76 = load float, ptr addrspace(1) %75, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %77 = insertelement <3 x float> %74, float %76, i64 1
  %78 = getelementptr inbounds float, ptr addrspace(1) %2, i64 11
  %79 = load float, ptr addrspace(1) %78, align 4, !tbaa !36, !alias.scope !40, !noalias !41
  %80 = insertelement <3 x float> %77, float %79, i64 2
  %81 = and i32 %12, 8
  %82 = icmp eq i32 %81, 0
  %83 = fmul <3 x float> %50, %62
  %84 = select i1 %82, <3 x float> %50, <3 x float> %83
  %85 = and i32 %12, 16
  %86 = icmp eq i32 %85, 0
  %87 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %84, <3 x float> %80, <3 x float> %62) #2
  %88 = select i1 %86, <3 x float> %84, <3 x float> %87
  %89 = and i32 %12, 2
  %90 = icmp eq i32 %89, 0
  %91 = fmul <3 x float> %80, %88
  %92 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %71, <3 x float> %62, <3 x float> %91) #2
  %93 = select i1 %90, <3 x float> %88, <3 x float> %92
  br label %94

94:                                               ; preds = %53, %49
  %95 = phi <3 x float> [ %93, %53 ], [ %50, %49 ]
  %96 = extractelement <3 x float> %95, i64 0
  %97 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %14
  store float %96, ptr addrspace(1) %97, align 4, !tbaa !36, !alias.scope !44, !noalias !45
  %98 = extractelement <3 x float> %95, i64 1
  %99 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %19
  store float %98, ptr addrspace(1) %99, align 4, !tbaa !36, !alias.scope !44, !noalias !45
  %100 = extractelement <3 x float> %95, i64 2
  %101 = getelementptr inbounds float, ptr addrspace(1) %4, i64 %24
  store float %100, ptr addrspace(1) %101, align 4, !tbaa !36, !alias.scope !44, !noalias !45
  br label %102

102:                                              ; preds = %94, %6
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind }

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
!15 = !{ptr @spk_grain_m_post, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"src"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"aux"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"k"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!23 = !{i32 5, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C++ TBAA"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"air-alias-scope-arg(3)"}
!30 = distinct !{!30, !"air-alias-scopes(spk_grain_m_post)"}
!31 = !{!32, !33, !34, !35}
!32 = distinct !{!32, !30, !"air-alias-scope-arg(0)"}
!33 = distinct !{!33, !30, !"air-alias-scope-arg(1)"}
!34 = distinct !{!34, !30, !"air-alias-scope-arg(2)"}
!35 = distinct !{!35, !30, !"air-alias-scope-arg(4)"}
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !26, i64 0}
!38 = !{!32}
!39 = !{!33, !34, !29, !35}
!40 = !{!34}
!41 = !{!32, !33, !29, !35}
!42 = !{!33}
!43 = !{!32, !34, !29, !35}
!44 = !{!35}
!45 = !{!32, !33, !34, !29}
