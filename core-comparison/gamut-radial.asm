FUNCTION 0x1008f39e0 0x1008f3b78
0x1008f39e0: stp      d15, d14, [sp, #-0x70]!
0x1008f39e4: stp      d13, d12, [sp, #0x10]
0x1008f39e8: stp      d11, d10, [sp, #0x20]
0x1008f39ec: stp      d9, d8, [sp, #0x30]
0x1008f39f0: stp      x22, x21, [sp, #0x40]
0x1008f39f4: stp      x20, x19, [sp, #0x50]
0x1008f39f8: stp      x29, x30, [sp, #0x60]
0x1008f39fc: add      x29, sp, #0x60
0x1008f3a00: mov      x19, x3
0x1008f3a04: mov      v8.16b, v2.16b
0x1008f3a08: mov      v9.16b, v1.16b
0x1008f3a0c: mov      v10.16b, v0.16b
0x1008f3a10: mov      x21, x2
0x1008f3a14: mov      x20, x1
0x1008f3a18: mov      x22, x0
0x1008f3a1c: ldp      d15, d0, [x0]
0x1008f3a20: ldp      d13, d14, [x1]
0x1008f3a24: fsub     d12, d15, d13
0x1008f3a28: fsub     d11, d0, d14
0x1008f3a2c: mov      v0.16b, v12.16b
0x1008f3a30: mov      v1.16b, v11.16b
0x1008f3a34: bl       #0x100979a54
0x1008f3a38: adrp     x8, #0x10098a000
0x1008f3a3c: ldr      d2, [x8, #0xef0]
0x1008f3a40: fcmp     d0, d2
0x1008f3a44: b.pl     #0x1008f3a54
0x1008f3a48: str      d15, [x19]
0x1008f3a4c: ldr      d0, [x22, #8]
0x1008f3a50: b        #0x1008f3b54
0x1008f3a54: adrp     x8, #0x100991000
0x1008f3a58: ldr      d1, [x8, #0xc58]
0x1008f3a5c: fcmp     d0, d1
0x1008f3a60: fcsel    d3, d1, d0, mi
0x1008f3a64: fdiv     d12, d12, d3
0x1008f3a68: ldp      x9, x8, [x21]
0x1008f3a6c: sub      x8, x8, x9
0x1008f3a70: asr      x8, x8, #3
0x1008f3a74: lsr      x8, x8, #1
0x1008f3a78: fdiv     d11, d11, d3
0x1008f3a7c: subs     x8, x8, #1
0x1008f3a80: b.eq     #0x1008f3b18
0x1008f3a84: add      x9, x9, #0x10
0x1008f3a88: mov      x10, #0x7ff0000000000000
0x1008f3a8c: fmov     d15, x10
0x1008f3a90: fmov     d3, #1.00000000
0x1008f3a94: b        #0x1008f3aa4
0x1008f3a98: add      x9, x9, #0x10
0x1008f3a9c: subs     x8, x8, #1
0x1008f3aa0: b.eq     #0x1008f3b20
0x1008f3aa4: ldp      d4, d5, [x9, #-0x10]
0x1008f3aa8: ldp      d6, d16, [x9]
0x1008f3aac: fsub     d7, d6, d4
0x1008f3ab0: fsub     d16, d16, d5
0x1008f3ab4: fnmul    d6, d7, d11
0x1008f3ab8: fmadd    d6, d12, d16, d6
0x1008f3abc: fabs     d17, d6
0x1008f3ac0: fcmp     d17, d1
0x1008f3ac4: b.ls     #0x1008f3a98
0x1008f3ac8: fsub     d4, d13, d4
0x1008f3acc: fsub     d5, d14, d5
0x1008f3ad0: fmul     d7, d5, d7
0x1008f3ad4: fmsub    d7, d4, d16, d7
0x1008f3ad8: fdiv     d7, d7, d6
0x1008f3adc: fmul     d5, d12, d5
0x1008f3ae0: fmsub    d4, d4, d11, d5
0x1008f3ae4: fdiv     d4, d4, d6
0x1008f3ae8: fcmp     d7, d2
0x1008f3aec: cset     w10, gt
0x1008f3af0: fcmp     d4, #0.0
0x1008f3af4: cset     w11, ge
0x1008f3af8: fcmp     d4, d3
0x1008f3afc: csel     w11, wzr, w11, hi
0x1008f3b00: and      w10, w10, w11
0x1008f3b04: fcmp     d7, d15
0x1008f3b08: cset     w11, mi
0x1008f3b0c: tst      w10, w11
0x1008f3b10: fcsel    d15, d7, d15, ne
0x1008f3b14: b        #0x1008f3a98
0x1008f3b18: mov      x8, #0x7ff0000000000000
0x1008f3b1c: fmov     d15, x8
0x1008f3b20: fcmp     d15, d1
0x1008f3b24: fcsel    d1, d1, d15, mi
0x1008f3b28: fdiv     d0, d0, d1
0x1008f3b2c: mov      v1.16b, v10.16b
0x1008f3b30: mov      v2.16b, v9.16b
0x1008f3b34: mov      v3.16b, v8.16b
0x1008f3b38: bl       #0x1008e66c8
0x1008f3b3c: ldr      d1, [x20]
0x1008f3b40: fmul     d0, d15, d0
0x1008f3b44: fmadd    d1, d12, d0, d1
0x1008f3b48: str      d1, [x19]
0x1008f3b4c: ldr      d1, [x20, #8]
0x1008f3b50: fmadd    d0, d11, d0, d1
0x1008f3b54: str      d0, [x19, #8]
0x1008f3b58: ldp      x29, x30, [sp, #0x60]
0x1008f3b5c: ldp      x20, x19, [sp, #0x50]
0x1008f3b60: ldp      x22, x21, [sp, #0x40]
0x1008f3b64: ldp      d9, d8, [sp, #0x30]
0x1008f3b68: ldp      d11, d10, [sp, #0x20]
0x1008f3b6c: ldp      d13, d12, [sp, #0x10]
0x1008f3b70: ldp      d15, d14, [sp], #0x70
0x1008f3b74: ret      
