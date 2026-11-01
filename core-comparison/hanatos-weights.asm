FUNCTION 0x1008f4164 0x1008f45f8
0x1008f4164: sub      sp, sp, #0xf0
0x1008f4168: stp      d15, d14, [sp, #0x50]
0x1008f416c: stp      d13, d12, [sp, #0x60]
0x1008f4170: stp      d11, d10, [sp, #0x70]
0x1008f4174: stp      d9, d8, [sp, #0x80]
0x1008f4178: stp      x28, x27, [sp, #0x90]
0x1008f417c: stp      x26, x25, [sp, #0xa0]
0x1008f4180: stp      x24, x23, [sp, #0xb0]
0x1008f4184: stp      x22, x21, [sp, #0xc0]
0x1008f4188: stp      x20, x19, [sp, #0xd0]
0x1008f418c: stp      x29, x30, [sp, #0xe0]
0x1008f4190: add      x29, sp, #0xe0
0x1008f4194: mov      x21, x6
0x1008f4198: mov      x19, x5
0x1008f419c: mov      x20, x4
0x1008f41a0: mov      x25, x3
0x1008f41a4: mov      x24, x2
0x1008f41a8: mov      x22, x1
0x1008f41ac: mov      x23, x0
0x1008f41b0: cmp      x5, x4
0x1008f41b4: b.eq     #0x1008f41cc
0x1008f41b8: ldp      x1, x2, [x20]
0x1008f41bc: sub      x8, x2, x1
0x1008f41c0: asr      x3, x8, #3
0x1008f41c4: mov      x0, x19
0x1008f41c8: bl       #0x1008eb4f8
0x1008f41cc: ldrb     w8, [x25, #0x18]
0x1008f41d0: cmp      w8, #1
0x1008f41d4: b.ne     #0x1008f454c
0x1008f41d8: ldp      x8, x9, [x24, #0x158]
0x1008f41dc: cmp      x8, x9
0x1008f41e0: b.eq     #0x1008f454c
0x1008f41e4: stp      xzr, xzr, [sp, #0x38]
0x1008f41e8: str      xzr, [sp, #0x48]
0x1008f41ec: ldp      x27, x26, [x23]
0x1008f41f0: sub      x8, x26, x27
0x1008f41f4: asr      x25, x8, #3
0x1008f41f8: add      x1, x25, x8, asr #2
0x1008f41fc: mov      x8, #0x3ff0000000000000
0x1008f4200: str      x8, [sp, #0x20]
0x1008f4204: add      x0, sp, #0x38
0x1008f4208: add      x2, sp, #0x20
0x1008f420c: bl       #0x1008e7774
0x1008f4210: ldp      x8, x9, [x24, #0x158]
0x1008f4214: sub      x9, x9, x8
0x1008f4218: asr      x9, x9, #3
0x1008f421c: cmp      x9, #8
0x1008f4220: b.eq     #0x1008f42a4
0x1008f4224: cmp      x9, #4
0x1008f4228: b.ne     #0x1008f4398
0x1008f422c: cmp      x26, x27
0x1008f4230: b.eq     #0x1008f4398
0x1008f4234: ldp      d8, d0, [x8, #0x10]
0x1008f4238: ldp      d9, d1, [x8]
0x1008f423c: ldr      x26, [x23]
0x1008f4240: adrp     x8, #0x1009c1000
0x1008f4244: ldr      d2, [x8, #0x990]
0x1008f4248: fmul     d10, d1, d2
0x1008f424c: fmul     d11, d0, d2
0x1008f4250: ldr      x8, [sp, #0x38]
0x1008f4254: add      x27, x8, #0x10
0x1008f4258: fmov     d12, #1.00000000
0x1008f425c: fmov     d13, #0.50000000
0x1008f4260: ldr      d14, [x26], #8
0x1008f4264: fsub     d0, d14, d9
0x1008f4268: fdiv     d0, d0, d10
0x1008f426c: bl       #0x100979970
0x1008f4270: fadd     d0, d0, d12
0x1008f4274: fmul     d15, d0, d13
0x1008f4278: fsub     d0, d14, d8
0x1008f427c: fdiv     d0, d0, d11
0x1008f4280: bl       #0x100979970
0x1008f4284: fsub     d0, d12, d0
0x1008f4288: fmul     d0, d0, d13
0x1008f428c: fmul     d0, d15, d0
0x1008f4290: stp      d0, d0, [x27, #-0x10]
0x1008f4294: str      d0, [x27], #0x18
0x1008f4298: subs     x25, x25, #1
0x1008f429c: b.ne     #0x1008f4260
0x1008f42a0: b        #0x1008f4398
0x1008f42a4: cmp      x26, x27
0x1008f42a8: b.eq     #0x1008f4398
0x1008f42ac: ldp      d1, d9, [x8]
0x1008f42b0: ldp      d0, d11, [x8, #0x10]
0x1008f42b4: stp      d0, d1, [sp]
0x1008f42b8: ldp      d1, d0, [x8, #0x20]
0x1008f42bc: stp      d0, d1, [sp, #0x10]
0x1008f42c0: ldp      d14, d15, [x8, #0x30]
0x1008f42c4: ldr      x26, [x23]
0x1008f42c8: ldr      x8, [sp, #0x38]
0x1008f42cc: add      x27, x8, #0x10
0x1008f42d0: ldr      d12, [x26]
0x1008f42d4: mov      v0.16b, v12.16b
0x1008f42d8: ldr      d10, [sp, #8]
0x1008f42dc: mov      v1.16b, v10.16b
0x1008f42e0: mov      v2.16b, v9.16b
0x1008f42e4: mov      v3.16b, v14.16b
0x1008f42e8: bl       #0x1008f5754
0x1008f42ec: mov      v13.16b, v0.16b
0x1008f42f0: mov      v0.16b, v12.16b
0x1008f42f4: ldr      d1, [sp, #0x10]
0x1008f42f8: mov      v2.16b, v11.16b
0x1008f42fc: mov      v3.16b, v15.16b
0x1008f4300: bl       #0x1008f5754
0x1008f4304: fmov     d8, #1.00000000
0x1008f4308: fsub     d0, d8, d0
0x1008f430c: fmul     d0, d13, d0
0x1008f4310: stur     d0, [x27, #-0x10]
0x1008f4314: ldr      d12, [x26]
0x1008f4318: mov      v0.16b, v12.16b
0x1008f431c: mov      v1.16b, v10.16b
0x1008f4320: mov      v2.16b, v9.16b
0x1008f4324: mov      v3.16b, v14.16b
0x1008f4328: bl       #0x1008f5754
0x1008f432c: mov      v13.16b, v0.16b
0x1008f4330: mov      v0.16b, v12.16b
0x1008f4334: ldr      d10, [sp]
0x1008f4338: mov      v1.16b, v10.16b
0x1008f433c: mov      v2.16b, v11.16b
0x1008f4340: mov      v3.16b, v15.16b
0x1008f4344: bl       #0x1008f5754
0x1008f4348: fsub     d0, d8, d0
0x1008f434c: fmul     d0, d13, d0
0x1008f4350: stur     d0, [x27, #-8]
0x1008f4354: ldr      d12, [x26], #8
0x1008f4358: mov      v0.16b, v12.16b
0x1008f435c: ldr      d1, [sp, #0x18]
0x1008f4360: mov      v2.16b, v9.16b
0x1008f4364: mov      v3.16b, v14.16b
0x1008f4368: bl       #0x1008f5754
0x1008f436c: mov      v13.16b, v0.16b
0x1008f4370: mov      v0.16b, v12.16b
0x1008f4374: mov      v1.16b, v10.16b
0x1008f4378: mov      v2.16b, v11.16b
0x1008f437c: mov      v3.16b, v15.16b
0x1008f4380: bl       #0x1008f5754
0x1008f4384: fsub     d0, d8, d0
0x1008f4388: fmul     d0, d13, d0
0x1008f438c: str      d0, [x27], #0x18
0x1008f4390: subs     x25, x25, #1
0x1008f4394: b.ne     #0x1008f42d0
0x1008f4398: stp      xzr, xzr, [sp, #0x20]
0x1008f439c: str      xzr, [sp, #0x30]
0x1008f43a0: add      x2, x24, #0xf8
0x1008f43a4: add      x3, sp, #0x20
0x1008f43a8: mov      x0, x23
0x1008f43ac: mov      x1, x22
0x1008f43b0: mov      x4, x21
0x1008f43b4: bl       #0x10090f148
0x1008f43b8: mov      x8, x0
0x1008f43bc: tbz      w0, #0, #0x1008f4554
0x1008f43c0: mov      x11, #0
0x1008f43c4: ldr      x9, [x20]
0x1008f43c8: ldr      x0, [sp, #0x20]
0x1008f43cc: fmov     d0, xzr
0x1008f43d0: mov      w12, #8
0x1008f43d4: fmov     d1, xzr
0x1008f43d8: fmov     d2, xzr
0x1008f43dc: ldr      x10, [sp, #0x38]
0x1008f43e0: fmov     d4, xzr
0x1008f43e4: fmov     d5, xzr
0x1008f43e8: fmov     d3, xzr
0x1008f43ec: ldr      d6, [x0, x11]
0x1008f43f0: add      x13, x9, x12
0x1008f43f4: ldp      d7, d16, [x13, #-8]
0x1008f43f8: fmul     d17, d7, d6
0x1008f43fc: add      x14, x10, x12
0x1008f4400: ldp      d18, d19, [x14, #-8]
0x1008f4404: fmadd    d0, d17, d18, d0
0x1008f4408: fmadd    d4, d7, d6, d4
0x1008f440c: fmul     d7, d16, d6
0x1008f4410: fmadd    d1, d7, d19, d1
0x1008f4414: fmadd    d5, d16, d6, d5
0x1008f4418: ldr      d7, [x13, #8]
0x1008f441c: fmul     d16, d7, d6
0x1008f4420: ldr      d17, [x14, #8]
0x1008f4424: fmadd    d2, d16, d17, d2
0x1008f4428: fmadd    d3, d7, d6, d3
0x1008f442c: add      x11, x11, #8
0x1008f4430: add      x12, x12, #0x18
0x1008f4434: cmp      x11, #0x288
0x1008f4438: b.ne     #0x1008f43ec
0x1008f443c: mov      x12, #0
0x1008f4440: ldr      x11, [x19]
0x1008f4444: fdiv     d0, d0, d4
0x1008f4448: fdiv     d1, d1, d5
0x1008f444c: add      x14, x11, #0x798
0x1008f4450: add      x15, x9, #0x798
0x1008f4454: add      x13, x10, #0x798
0x1008f4458: cmp      x11, x13
0x1008f445c: ccmp     x10, x14, #2, lo
0x1008f4460: cset     w13, lo
0x1008f4464: cmp      x9, x14
0x1008f4468: ccmp     x11, x15, #2, lo
0x1008f446c: fdiv     d2, d2, d3
0x1008f4470: b.lo     #0x1008f44d8
0x1008f4474: tbnz     w13, #0, #0x1008f44d8
0x1008f4478: mov      x13, #0
0x1008f447c: dup      v3.2d, v0.d[0]
0x1008f4480: dup      v4.2d, v1.d[0]
0x1008f4484: mov      w12, #0x50
0x1008f4488: dup      v5.2d, v2.d[0]
0x1008f448c: add      x14, x9, x13
0x1008f4490: ldp      q7, q6, [x14, #0x10]
0x1008f4494: ldr      q16, [x14]
0x1008f4498: add      x14, x10, x13
0x1008f449c: ld3      {v17.2d, v18.2d, v19.2d}, [x14]
0x1008f44a0: ext      v20.16b, v16.16b, v6.16b, #8
0x1008f44a4: mov      v16.d[1], v7.d[1]
0x1008f44a8: fdiv     v21.2d, v17.2d, v3.2d
0x1008f44ac: fmul     v21.2d, v16.2d, v21.2d
0x1008f44b0: fdiv     v16.2d, v18.2d, v4.2d
0x1008f44b4: fmul     v22.2d, v20.2d, v16.2d
0x1008f44b8: fdiv     v16.2d, v19.2d, v5.2d
0x1008f44bc: mov      v7.d[1], v6.d[1]
0x1008f44c0: fmul     v23.2d, v7.2d, v16.2d
0x1008f44c4: add      x14, x11, x13
0x1008f44c8: st3      {v21.2d, v22.2d, v23.2d}, [x14]
0x1008f44cc: add      x13, x13, #0x30
0x1008f44d0: cmp      x13, #0x780
0x1008f44d4: b.ne     #0x1008f448c
0x1008f44d8: mov      x19, x8
0x1008f44dc: sub      x8, x12, #0x51
0x1008f44e0: mov      w13, #0x18
0x1008f44e4: umull    x12, w12, w13
0x1008f44e8: add      x12, x12, #0x10
0x1008f44ec: add      x9, x9, x12
0x1008f44f0: add      x10, x10, x12
0x1008f44f4: add      x11, x11, x12
0x1008f44f8: ldur     d3, [x9, #-0x10]
0x1008f44fc: ldur     d4, [x10, #-0x10]
0x1008f4500: fdiv     d4, d4, d0
0x1008f4504: fmul     d3, d3, d4
0x1008f4508: stur     d3, [x11, #-0x10]
0x1008f450c: ldur     d3, [x9, #-8]
0x1008f4510: ldur     d4, [x10, #-8]
0x1008f4514: fdiv     d4, d4, d1
0x1008f4518: fmul     d3, d3, d4
0x1008f451c: stur     d3, [x11, #-8]
0x1008f4520: ldr      d3, [x9], #0x18
0x1008f4524: ldr      d4, [x10], #0x18
0x1008f4528: fdiv     d4, d4, d2
0x1008f452c: fmul     d3, d3, d4
0x1008f4530: str      d3, [x11], #0x18
0x1008f4534: adds     x8, x8, #1
0x1008f4538: b.lo     #0x1008f44f8
0x1008f453c: str      x0, [sp, #0x28]
0x1008f4540: bl       #0x100979700
0x1008f4544: ldr      x0, [sp, #0x38]
0x1008f4548: cbnz     x0, #0x1008f4570
0x1008f454c: mov      w0, #1
0x1008f4550: b        #0x1008f457c
0x1008f4554: mov      x19, x8
0x1008f4558: ldr      x0, [sp, #0x20]
0x1008f455c: cbz      x0, #0x1008f4568
0x1008f4560: str      x0, [sp, #0x28]
0x1008f4564: bl       #0x100979700
0x1008f4568: ldr      x0, [sp, #0x38]
0x1008f456c: cbz      x0, #0x1008f457c
0x1008f4570: str      x0, [sp, #0x40]
0x1008f4574: bl       #0x100979700
0x1008f4578: mov      x0, x19
0x1008f457c: ldp      x29, x30, [sp, #0xe0]
0x1008f4580: ldp      x20, x19, [sp, #0xd0]
0x1008f4584: ldp      x22, x21, [sp, #0xc0]
0x1008f4588: ldp      x24, x23, [sp, #0xb0]
0x1008f458c: ldp      x26, x25, [sp, #0xa0]
0x1008f4590: ldp      x28, x27, [sp, #0x90]
0x1008f4594: ldp      d9, d8, [sp, #0x80]
0x1008f4598: ldp      d11, d10, [sp, #0x70]
0x1008f459c: ldp      d13, d12, [sp, #0x60]
0x1008f45a0: ldp      d15, d14, [sp, #0x50]
0x1008f45a4: add      sp, sp, #0xf0
0x1008f45a8: ret      
0x1008f45ac: mov      x19, x0
0x1008f45b0: ldr      x0, [sp, #0x20]
0x1008f45b4: cbnz     x0, #0x1008f45c8
0x1008f45b8: ldr      x0, [sp, #0x38]
0x1008f45bc: cbnz     x0, #0x1008f45e8
0x1008f45c0: mov      x0, x19
0x1008f45c4: bl       #0x10097958c
0x1008f45c8: str      x0, [sp, #0x28]
0x1008f45cc: bl       #0x100979700
0x1008f45d0: ldr      x0, [sp, #0x38]
0x1008f45d4: cbz      x0, #0x1008f45c0
0x1008f45d8: b        #0x1008f45e8
0x1008f45dc: mov      x19, x0
0x1008f45e0: ldr      x0, [sp, #0x38]
0x1008f45e4: cbz      x0, #0x1008f45c0
0x1008f45e8: str      x0, [sp, #0x40]
0x1008f45ec: bl       #0x100979700
0x1008f45f0: mov      x0, x19
0x1008f45f4: bl       #0x10097958c
