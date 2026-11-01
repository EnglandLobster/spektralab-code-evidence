; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/012.bc'
source_filename = "spk_glare_fir1_add"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_glare_fir1_add(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %3, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %4, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %5, <3 x i32> noundef %6) local_unnamed_addr #0 {
  %8 = extractelement <3 x i32> %6, i64 0
  %9 = load i32, ptr addrspace(1) %4, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %10 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 1
  %11 = load i32, ptr addrspace(1) %10, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %12 = mul i32 %11, %9
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %83

14:                                               ; preds = %7
  %15 = getelementptr inbounds i32, ptr addrspace(1) %4, i64 2
  %16 = load i32, ptr addrspace(1) %15, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %17 = urem i32 %8, %11
  %18 = icmp slt i32 %16, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = sub nsw i32 0, %16
  %21 = sub nsw i32 0, %11
  %22 = shl nsw i32 %11, 1
  %23 = sub i32 %8, %17
  br label %28

24:                                               ; preds = %57, %14
  %25 = phi float [ 0.000000e+00, %14 ], [ %67, %57 ]
  %26 = mul i32 %8, 3
  %27 = fdiv float %25, 1.000000e+02
  br label %70

28:                                               ; preds = %57, %19
  %29 = phi i32 [ %20, %19 ], [ %68, %57 ]
  %30 = phi float [ 0.000000e+00, %19 ], [ %67, %57 ]
  %31 = add nsw i32 %29, %17
  %32 = icmp sgt i32 %31, -1
  %33 = icmp slt i32 %31, %11
  %34 = and i1 %32, %33
  br i1 %34, label %57, label %35

35:                                               ; preds = %28
  %36 = icmp sge i32 %31, %21
  %37 = icmp slt i32 %31, 0
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = xor i32 %31, -1
  br label %57

41:                                               ; preds = %35
  %42 = xor i1 %33, true
  %43 = icmp sgt i32 %22, %31
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = xor i32 %31, -1
  %47 = add i32 %22, %46
  br label %57

48:                                               ; preds = %41
  %49 = srem i32 %31, %22
  %50 = icmp slt i32 %49, 0
  %51 = select i1 %50, i32 %22, i32 0
  %52 = add nsw i32 %51, %49
  %53 = icmp slt i32 %52, %11
  %54 = xor i32 %52, -1
  %55 = add i32 %22, %54
  %56 = select i1 %53, i32 %52, i32 %55
  br label %57

57:                                               ; preds = %48, %45, %39, %28
  %58 = phi i32 [ %40, %39 ], [ %47, %45 ], [ %56, %48 ], [ %31, %28 ]
  %59 = add i32 %23, %58
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %60
  %62 = load float, ptr addrspace(1) %61, align 4, !tbaa !38, !alias.scope !40, !noalias !41
  %63 = add nsw i32 %29, %16
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %64
  %66 = load float, ptr addrspace(1) %65, align 4, !tbaa !38, !alias.scope !42, !noalias !43
  %67 = tail call float @llvm.fmuladd.f32(float %62, float %66, float %30)
  %68 = add i32 %29, 1
  %69 = icmp eq i32 %29, %16
  br i1 %69, label %24, label %28, !llvm.loop !44

70:                                               ; preds = %70, %24
  %71 = phi i32 [ 0, %24 ], [ %81, %70 ]
  %72 = add i32 %71, %26
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %73
  %75 = load float, ptr addrspace(1) %74, align 4, !tbaa !38, !alias.scope !46, !noalias !47
  %76 = zext i32 %71 to i64
  %77 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %76
  %78 = load float, ptr addrspace(1) %77, align 4, !tbaa !38, !alias.scope !48, !noalias !49
  %79 = tail call float @llvm.fmuladd.f32(float %27, float %78, float %75)
  %80 = getelementptr inbounds float, ptr addrspace(1) %5, i64 %73
  store float %79, ptr addrspace(1) %80, align 4, !tbaa !38, !alias.scope !50, !noalias !51
  %81 = add nuw nsw i32 %71, 1
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %83, label %70, !llvm.loop !52

83:                                               ; preds = %70, %7
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
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
!15 = !{ptr @spk_glare_fir1_add, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"field"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"w"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"xyz"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"illum"}
!22 = !{i32 4, !"air.buffer", !"air.location_index", i32 4, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!23 = !{i32 5, !"air.buffer", !"air.location_index", i32 5, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!24 = !{i32 6, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C++ TBAA"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"air-alias-scope-arg(4)"}
!31 = distinct !{!31, !"air-alias-scopes(spk_glare_fir1_add)"}
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
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!35}
!47 = !{!33, !34, !36, !30, !37}
!48 = !{!36}
!49 = !{!33, !34, !35, !30, !37}
!50 = !{!37}
!51 = !{!33, !34, !35, !36, !30}
!52 = distinct !{!52, !45}
