; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/011.bc'
source_filename = "spk_sep_fir1"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite)
define void @spk_sep_fir1(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %2, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %3, <3 x i32> noundef %4) local_unnamed_addr #0 {
  %6 = extractelement <3 x i32> %4, i64 0
  %7 = load i32, ptr addrspace(1) %2, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %8 = getelementptr inbounds i32, ptr addrspace(1) %2, i64 1
  %9 = load i32, ptr addrspace(1) %8, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %10 = mul i32 %9, %7
  %11 = icmp ult i32 %6, %10
  br i1 %11, label %12, label %77

12:                                               ; preds = %5
  %13 = getelementptr inbounds i32, ptr addrspace(1) %2, i64 2
  %14 = load i32, ptr addrspace(1) %13, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %15 = getelementptr inbounds i32, ptr addrspace(1) %2, i64 3
  %16 = load i32, ptr addrspace(1) %15, align 4, !tbaa !23, !alias.scope !27, !noalias !30
  %17 = udiv i32 %6, %9
  %18 = urem i32 %6, %9
  %19 = icmp eq i32 %16, 0
  %20 = select i1 %19, i32 %7, i32 %9
  %21 = select i1 %19, i32 %17, i32 %18
  %22 = icmp slt i32 %14, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %12
  %24 = sub nsw i32 0, %14
  %25 = sub nsw i32 0, %20
  %26 = shl nsw i32 %20, 1
  %27 = mul i32 %17, %9
  br label %32

28:                                               ; preds = %61, %12
  %29 = phi float [ 0.000000e+00, %12 ], [ %74, %61 ]
  %30 = zext i32 %6 to i64
  %31 = getelementptr inbounds float, ptr addrspace(1) %3, i64 %30
  store float %29, ptr addrspace(1) %31, align 4, !tbaa !34, !alias.scope !36, !noalias !37
  br label %77

32:                                               ; preds = %61, %23
  %33 = phi float [ 0.000000e+00, %23 ], [ %74, %61 ]
  %34 = phi i32 [ %24, %23 ], [ %75, %61 ]
  %35 = add nsw i32 %34, %21
  %36 = icmp sgt i32 %35, -1
  %37 = icmp slt i32 %35, %20
  %38 = and i1 %36, %37
  br i1 %38, label %61, label %39

39:                                               ; preds = %32
  %40 = icmp sge i32 %35, %25
  %41 = icmp slt i32 %35, 0
  %42 = and i1 %41, %40
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = xor i32 %35, -1
  br label %61

45:                                               ; preds = %39
  %46 = xor i1 %37, true
  %47 = icmp sgt i32 %26, %35
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = xor i32 %35, -1
  %51 = add i32 %26, %50
  br label %61

52:                                               ; preds = %45
  %53 = srem i32 %35, %26
  %54 = icmp slt i32 %53, 0
  %55 = select i1 %54, i32 %26, i32 0
  %56 = add nsw i32 %55, %53
  %57 = icmp slt i32 %56, %20
  %58 = xor i32 %56, -1
  %59 = add i32 %26, %58
  %60 = select i1 %57, i32 %56, i32 %59
  br label %61

61:                                               ; preds = %52, %49, %43, %32
  %62 = phi i32 [ %44, %43 ], [ %51, %49 ], [ %60, %52 ], [ %35, %32 ]
  %63 = mul i32 %62, %9
  %64 = add i32 %63, %18
  %65 = add i32 %62, %27
  %66 = select i1 %19, i32 %64, i32 %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %67
  %69 = load float, ptr addrspace(1) %68, align 4, !tbaa !34, !alias.scope !38, !noalias !39
  %70 = add nsw i32 %34, %14
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %71
  %73 = load float, ptr addrspace(1) %72, align 4, !tbaa !34, !alias.scope !40, !noalias !41
  %74 = tail call float @llvm.fmuladd.f32(float %69, float %73, float %33)
  %75 = add i32 %34, 1
  %76 = icmp eq i32 %34, %14
  br i1 %76, label %28, label %32, !llvm.loop !42

77:                                               ; preds = %28, %5
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
!15 = !{ptr @spk_sep_fir1, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"img"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"w"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"meta"}
!21 = !{i32 3, !"air.buffer", !"air.location_index", i32 3, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"out"}
!22 = !{i32 4, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C++ TBAA"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"air-alias-scope-arg(2)"}
!29 = distinct !{!29, !"air-alias-scopes(spk_sep_fir1)"}
!30 = !{!31, !32, !33}
!31 = distinct !{!31, !29, !"air-alias-scope-arg(0)"}
!32 = distinct !{!32, !29, !"air-alias-scope-arg(1)"}
!33 = distinct !{!33, !29, !"air-alias-scope-arg(3)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !25, i64 0}
!36 = !{!33}
!37 = !{!31, !32, !28}
!38 = !{!31}
!39 = !{!32, !28, !33}
!40 = !{!32}
!41 = !{!31, !28, !33}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
