; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/028.bc'
source_filename = "spk_curves"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_curves(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %4, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %5, <3 x i32> noundef %6) local_unnamed_addr #0 {
  %8 = extractelement <3 x i32> %6, i64 0
  %9 = load i32, ptr addrspace(1) %4, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %10 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 1
  %11 = load i32, ptr addrspace(1) %10, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %82

13:                                               ; preds = %7
  %14 = mul i32 %8, 3
  %15 = mul i32 %9, 3
  %16 = icmp eq i32 %9, 0
  br label %17

17:                                               ; preds = %77, %13
  %18 = phi i32 [ 0, %13 ], [ %80, %77 ]
  %19 = add i32 %18, %14
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %20
  %22 = load float, ptr addrspace(1) %21, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %23 = zext i32 %18 to i64
  %24 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %23
  %25 = load float, ptr addrspace(1) %24, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %26 = add nuw nsw i32 %18, -3
  %27 = add i32 %26, %15
  %28 = zext i32 %27 to i64
  %29 = fcmp ult float %25, %22
  br i1 %29, label %33, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %23
  %32 = load float, ptr addrspace(1) %31, align 4, !tbaa !38, !alias.scope !44, !noalias !45
  br label %77

33:                                               ; preds = %17
  %34 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %28
  %35 = load float, ptr addrspace(1) %34, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %36 = fcmp ugt float %35, %22
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %28
  %39 = load float, ptr addrspace(1) %38, align 4, !tbaa !38, !alias.scope !44, !noalias !45
  br label %77

40:                                               ; preds = %33
  br i1 %16, label %59, label %41

41:                                               ; preds = %41, %40
  %42 = phi i32 [ %55, %41 ], [ 0, %40 ]
  %43 = phi i32 [ %54, %41 ], [ %9, %40 ]
  %44 = sub i32 %43, %42
  %45 = lshr i32 %44, 1
  %46 = add i32 %45, %42
  %47 = mul i32 %46, 3
  %48 = add i32 %47, %18
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %49
  %51 = load float, ptr addrspace(1) %50, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %52 = fcmp ugt float %51, %22
  %53 = add i32 %46, 1
  %54 = select i1 %52, i32 %46, i32 %43
  %55 = select i1 %52, i32 %42, i32 %53
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %41, label %57, !llvm.loop !46

57:                                               ; preds = %41
  %58 = mul i32 %55, 3
  br label %59

59:                                               ; preds = %57, %40
  %60 = phi i32 [ 0, %40 ], [ %58, %57 ]
  %61 = add i32 %60, %26
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %62
  %64 = load float, ptr addrspace(1) %63, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %65 = fsub float %22, %64
  %66 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %62
  %67 = load float, ptr addrspace(1) %66, align 4, !tbaa !38, !alias.scope !48, !noalias !49
  %68 = fmul float %65, %67
  %69 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %62
  %70 = load float, ptr addrspace(1) %69, align 4, !tbaa !38, !alias.scope !44, !noalias !45
  %71 = add i32 %60, %18
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %72
  %74 = load float, ptr addrspace(1) %73, align 4, !tbaa !38, !alias.scope !44, !noalias !45
  %75 = fsub float %74, %70
  %76 = tail call float @llvm.fmuladd.f32(float %68, float %75, float %70) #2
  br label %77

77:                                               ; preds = %59, %37, %30
  %78 = phi float [ %32, %30 ], [ %39, %37 ], [ %76, %59 ]
  %79 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %20
  store float %78, ptr addrspace(1) %79, align 4, !tbaa !38, !alias.scope !50, !noalias !51
  %80 = add nuw nsw i32 %18, 1
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %17, !llvm.loop !52

82:                                               ; preds = %77, %7
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
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
!15 = !{ptr @spk_curves, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"x"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"xa"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"inv"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"y"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!24 = !{i32 6, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C++ TBAA"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"air-alias-scope-arg(4)"}
!31 = distinct !{!31, !"air-alias-scopes(spk_curves)"}
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
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!35}
!49 = !{!33, !34, !36, !30, !37}
!50 = !{!37}
!51 = !{!33, !34, !35, !36, !30}
!52 = distinct !{!52, !47}
