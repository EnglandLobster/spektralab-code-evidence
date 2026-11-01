FUNCTION 0x1008f5754 0x1008f5864
0x1008f5754: stp      d13, d12, [sp, #-0x40]!
0x1008f5758: stp      d11, d10, [sp, #0x10]
0x1008f575c: stp      d9, d8, [sp, #0x20]
0x1008f5760: stp      x29, x30, [sp, #0x30]
0x1008f5764: add      x29, sp, #0x30
0x1008f5768: mov      v8.16b, v1.16b
0x1008f576c: mov      v9.16b, v0.16b
0x1008f5770: adrp     x8, #0x1009b3000
0x1008f5774: ldr      d0, [x8, #0x350]
0x1008f5778: fcmp     d3, d0
0x1008f577c: fcsel    d10, d0, d3, mi
0x1008f5780: adrp     x8, #0x1009c1000
0x1008f5784: ldr      d0, [x8, #0x998]
0x1008f5788: fmul     d11, d2, d0
0x1008f578c: fadd     d12, d10, d10
0x1008f5790: fneg     d0, d10
0x1008f5794: bl       #0x1009799a0
0x1008f5798: fmov     d1, #1.00000000
0x1008f579c: fsub     d0, d1, d0
0x1008f57a0: fmov     d1, #-1.00000000
0x1008f57a4: fdiv     d1, d1, d11
0x1008f57a8: fmul     d1, d1, d12
0x1008f57ac: fdiv     d0, d1, d0
0x1008f57b0: fsub     d1, d9, d8
0x1008f57b4: fmul     d0, d1, d0
0x1008f57b8: mov      x8, #0x400000000000
0x1008f57bc: movk     x8, #0x407f, lsl #48
0x1008f57c0: fmov     d1, x8
0x1008f57c4: fminnm   d0, d0, d1
0x1008f57c8: mov      x8, #0x400000000000
0x1008f57cc: movk     x8, #0xc07f, lsl #48
0x1008f57d0: fmov     d1, x8
0x1008f57d4: fmaxnm   d9, d0, d1
0x1008f57d8: adrp     x8, #0x1009c1000
0x1008f57dc: ldr      d0, [x8, #0x9a0]
0x1008f57e0: fmul     d8, d10, d0
0x1008f57e4: mov      x8, #0x4049000000000000
0x1008f57e8: fmov     d0, x8
0x1008f57ec: fcmp     d8, d0
0x1008f57f0: b.le     #0x1008f580c
0x1008f57f4: fneg     d0, d8
0x1008f57f8: bl       #0x100979994
0x1008f57fc: fneg     d0, d0
0x1008f5800: bl       #0x100979a84
0x1008f5804: fadd     d0, d8, d0
0x1008f5808: b        #0x1008f5818
0x1008f580c: mov      v0.16b, v8.16b
0x1008f5810: bl       #0x1009799ac
0x1008f5814: bl       #0x100979a6c
0x1008f5818: fadd     d8, d9, d0
0x1008f581c: fcmp     d8, #0.0
0x1008f5820: b.le     #0x1008f5838
0x1008f5824: fneg     d0, d8
0x1008f5828: bl       #0x100979994
0x1008f582c: bl       #0x100979a84
0x1008f5830: fadd     d0, d8, d0
0x1008f5834: b        #0x1008f5844
0x1008f5838: mov      v0.16b, v8.16b
0x1008f583c: bl       #0x100979994
0x1008f5840: bl       #0x100979a84
0x1008f5844: fmov     d1, #-1.00000000
0x1008f5848: fdiv     d1, d1, d10
0x1008f584c: fmul     d0, d1, d0
0x1008f5850: ldp      x29, x30, [sp, #0x30]
0x1008f5854: ldp      d9, d8, [sp, #0x20]
0x1008f5858: ldp      d11, d10, [sp, #0x10]
0x1008f585c: ldp      d13, d12, [sp], #0x40
0x1008f5860: b        #0x100979994
