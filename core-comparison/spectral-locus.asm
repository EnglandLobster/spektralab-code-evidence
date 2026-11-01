FUNCTION 0x1008f38e0 0x1008f39e0
0x1008f38e0: sub      sp, sp, #0x30
0x1008f38e4: stp      x20, x19, [sp, #0x10]
0x1008f38e8: stp      x29, x30, [sp, #0x20]
0x1008f38ec: add      x29, sp, #0x20
0x1008f38f0: mov      x19, x1
0x1008f38f4: mov      x20, x0
0x1008f38f8: str      xzr, [sp, #8]
0x1008f38fc: add      x2, sp, #8
0x1008f3900: mov      x0, x1
0x1008f3904: mov      w1, #0x84
0x1008f3908: bl       #0x1008e7774
0x1008f390c: mov      x10, #0
0x1008f3910: ldr      x9, [x20, #0x18]
0x1008f3914: ldr      x8, [x19]
0x1008f3918: add      x11, x8, #0x410
0x1008f391c: add      x12, x9, #0x618
0x1008f3920: cmp      x8, x12
0x1008f3924: ccmp     x9, x11, #2, lo
0x1008f3928: b.lo     #0x1008f397c
0x1008f392c: mov      x11, #0
0x1008f3930: mov      x10, #0xea11
0x1008f3934: movk     x10, #0x812d, lsl #16
0x1008f3938: movk     x10, #0x9799, lsl #32
0x1008f393c: movk     x10, #0x3d71, lsl #48
0x1008f3940: dup      v0.2d, x10
0x1008f3944: mov      w10, #0x40
0x1008f3948: mov      x12, x9
0x1008f394c: ld3      {v1.2d, v2.2d, v3.2d}, [x12], #48
0x1008f3950: fadd     v4.2d, v1.2d, v2.2d
0x1008f3954: fadd     v4.2d, v4.2d, v3.2d
0x1008f3958: fcmgt    v5.2d, v0.2d, v4.2d
0x1008f395c: bit      v4.16b, v0.16b, v5.16b
0x1008f3960: fdiv     v5.2d, v1.2d, v4.2d
0x1008f3964: fdiv     v6.2d, v2.2d, v4.2d
0x1008f3968: add      x13, x8, x11
0x1008f396c: st2      {v5.2d, v6.2d}, [x13]
0x1008f3970: add      x11, x11, #0x20
0x1008f3974: cmp      x11, #0x400
0x1008f3978: b.ne     #0x1008f394c
0x1008f397c: lsl      x11, x10, #4
0x1008f3980: mov      w12, #0x18
0x1008f3984: umaddl   x9, w10, w12, x9
0x1008f3988: add      x9, x9, #0x10
0x1008f398c: adrp     x10, #0x100991000
0x1008f3990: ldr      d0, [x10, #0xc58]
0x1008f3994: ldr      d1, [x9]
0x1008f3998: ldur     q2, [x9, #-0x10]
0x1008f399c: faddp    d3, v2.2d
0x1008f39a0: fadd     d1, d3, d1
0x1008f39a4: fcmp     d1, d0
0x1008f39a8: fcsel    d1, d0, d1, mi
0x1008f39ac: dup      v1.2d, v1.d[0]
0x1008f39b0: fdiv     v1.2d, v2.2d, v1.2d
0x1008f39b4: str      q1, [x8, x11]
0x1008f39b8: add      x11, x11, #0x10
0x1008f39bc: add      x9, x9, #0x18
0x1008f39c0: cmp      x11, #0x410
0x1008f39c4: b.ne     #0x1008f3994
0x1008f39c8: ldr      q0, [x8]
0x1008f39cc: str      q0, [x8, #0x410]
0x1008f39d0: ldp      x29, x30, [sp, #0x20]
0x1008f39d4: ldp      x20, x19, [sp, #0x10]
0x1008f39d8: add      sp, sp, #0x30
0x1008f39dc: ret      
