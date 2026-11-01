; ModuleID = 'artifacts/licensing-review/2026-10-28-spektralab-ios/core-comparison/air-bitcode/051.bc'
source_filename = "spk_reduce_max"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32"
target triple = "air64_v26-apple-ios17.0.0"

@_ZZ14spk_reduce_maxPU9MTLdeviceKfPU9MTLdeviceKjPU9MTLdevicefDv3_jS5_jS5_S5_E7scratch = internal unnamed_addr addrspace(3) global [256 x float] undef, align 4

; Function Attrs: convergent mustprogress nounwind
define void @spk_reduce_max(ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %0, ptr addrspace(1) noundef readonly captures(none) "air-buffer-no-alias" %1, ptr addrspace(1) noundef writeonly captures(none) "air-buffer-no-alias" %2, <3 x i32> noundef %3, <3 x i32> noundef %4, i32 noundef %5, <3 x i32> noundef %6, <3 x i32> noundef %7) local_unnamed_addr #0 {
  %9 = extractelement <3 x i32> %3, i64 0
  %10 = load i32, ptr addrspace(1) %1, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = extractelement <3 x i32> %4, i64 0
  br label %20

14:                                               ; preds = %20, %8
  %15 = phi float [ 0xFFF0000000000000, %8 ], [ %26, %20 ]
  %16 = zext i32 %5 to i64
  %17 = getelementptr inbounds [256 x float], ptr addrspace(3) @_ZZ14spk_reduce_maxPU9MTLdeviceKfPU9MTLdeviceKjPU9MTLdevicefDv3_jS5_jS5_S5_E7scratch, i64 0, i64 %16
  store float %15, ptr addrspace(3) %17, align 4, !tbaa !36
  tail call void @air.wg.barrier(i32 2, i32 1) #3
  %18 = extractelement <3 x i32> %7, i64 0
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %29, label %31

20:                                               ; preds = %20, %12
  %21 = phi i32 [ %9, %12 ], [ %27, %20 ]
  %22 = phi float [ 0xFFF0000000000000, %12 ], [ %26, %20 ]
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %23
  %25 = load float, ptr addrspace(1) %24, align 4, !tbaa !36, !alias.scope !38, !noalias !39
  %26 = tail call float @air.fmax.f32(float %22, float %25) #4
  %27 = add i32 %21, %13
  %28 = icmp ult i32 %27, %10
  br i1 %28, label %20, label %14, !llvm.loop !40

29:                                               ; preds = %42, %14
  %30 = icmp eq i32 %5, 0
  br i1 %30, label %44, label %49

31:                                               ; preds = %42, %14
  %32 = phi i32 [ %33, %42 ], [ %18, %14 ]
  %33 = lshr i32 %32, 1
  %34 = icmp ugt i32 %33, %5
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = add i32 %33, %5
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [256 x float], ptr addrspace(3) @_ZZ14spk_reduce_maxPU9MTLdeviceKfPU9MTLdeviceKjPU9MTLdevicefDv3_jS5_jS5_S5_E7scratch, i64 0, i64 %37
  %39 = load float, ptr addrspace(3) %17, align 4, !tbaa !36
  %40 = load float, ptr addrspace(3) %38, align 4, !tbaa !36
  %41 = tail call float @air.fmax.f32(float %39, float %40) #4
  store float %41, ptr addrspace(3) %17, align 4, !tbaa !36
  br label %42

42:                                               ; preds = %35, %31
  tail call void @air.wg.barrier(i32 2, i32 1) #3
  %43 = icmp ult i32 %32, 4
  br i1 %43, label %29, label %31, !llvm.loop !42

44:                                               ; preds = %29
  %45 = extractelement <3 x i32> %6, i64 0
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds float, ptr addrspace(1) %2, i64 %46
  %48 = load float, ptr addrspace(3) @_ZZ14spk_reduce_maxPU9MTLdeviceKfPU9MTLdeviceKjPU9MTLdevicefDv3_jS5_jS5_S5_E7scratch, align 4, !tbaa !36
  store float %48, ptr addrspace(1) %47, align 4, !tbaa !36, !alias.scope !43, !noalias !44
  br label %49

49:                                               ; preds = %44, %29
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @air.wg.barrier(i32, i32) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @air.fmax.f32(float, float) local_unnamed_addr #2

attributes #0 = { convergent mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="96" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { convergent mustprogress nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #3 = { convergent nounwind willreturn }
attributes #4 = { nounwind willreturn memory(none) }

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
!15 = !{ptr @spk_reduce_max, !16, !17}
!16 = !{}
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25}
!18 = !{i32 0, !"air.buffer", !"air.location_index", i32 0, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"x"}
!19 = !{i32 1, !"air.buffer", !"air.location_index", i32 1, i32 1, !"air.read", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"uint", !"air.arg_name", !"n"}
!20 = !{i32 2, !"air.buffer", !"air.location_index", i32 2, i32 1, !"air.read_write", !"air.address_space", i32 1, !"air.arg_type_size", i32 4, !"air.arg_type_align_size", i32 4, !"air.arg_type_name", !"float", !"air.arg_name", !"partials"}
!21 = !{i32 3, !"air.thread_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"thread_position_in_grid"}
!22 = !{i32 4, !"air.threads_per_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"threads_per_grid"}
!23 = !{i32 5, !"air.thread_index_in_threadgroup", !"air.arg_type_name", !"uint", !"air.arg_name", !"lid"}
!24 = !{i32 6, !"air.threadgroup_position_in_grid", !"air.arg_type_name", !"uint3", !"air.arg_name", !"tg"}
!25 = !{i32 7, !"air.threads_per_threadgroup", !"air.arg_type_name", !"uint3", !"air.arg_name", !"tgsize"}
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C++ TBAA"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"air-alias-scope-arg(1)"}
!32 = distinct !{!32, !"air-alias-scopes(spk_reduce_max)"}
!33 = !{!34, !35}
!34 = distinct !{!34, !32, !"air-alias-scope-arg(0)"}
!35 = distinct !{!35, !32, !"air-alias-scope-arg(2)"}
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !28, i64 0}
!38 = !{!34}
!39 = !{!31, !35}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = !{!35}
!44 = !{!34, !31}
