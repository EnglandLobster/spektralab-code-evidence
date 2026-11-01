FUNCTION 0x1008e66c8 0x1008e6728
0x1008e66c8: fcmp     d0, d1
0x1008e66cc: b.le     #0x1008e6724
0x1008e66d0: stp      d11, d10, [sp, #-0x30]!
0x1008e66d4: stp      d9, d8, [sp, #0x10]
0x1008e66d8: stp      x29, x30, [sp, #0x20]
0x1008e66dc: add      x29, sp, #0x20
0x1008e66e0: fsub     d9, d2, d1
0x1008e66e4: fsub     d0, d0, d1
0x1008e66e8: fdiv     d8, d0, d9
0x1008e66ec: mov      v0.16b, v8.16b
0x1008e66f0: mov      v10.16b, v1.16b
0x1008e66f4: mov      v1.16b, v3.16b
0x1008e66f8: mov      v11.16b, v3.16b
0x1008e66fc: bl       #0x100979d6c
0x1008e6700: fmov     d1, #1.00000000
0x1008e6704: fadd     d0, d0, d1
0x1008e6708: fdiv     d1, d1, d11
0x1008e670c: bl       #0x100979d6c
0x1008e6710: fdiv     d0, d8, d0
0x1008e6714: fmadd    d0, d9, d0, d10
0x1008e6718: ldp      x29, x30, [sp, #0x20]
0x1008e671c: ldp      d9, d8, [sp, #0x10]
0x1008e6720: ldp      d11, d10, [sp], #0x30
0x1008e6724: ret      
