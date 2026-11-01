FUNCTION 0x1008f45f8 0x1008f5678
0x1008f45f8: stp      d15, d14, [sp, #-0xa0]!
0x1008f45fc: stp      d13, d12, [sp, #0x10]
0x1008f4600: stp      d11, d10, [sp, #0x20]
0x1008f4604: stp      d9, d8, [sp, #0x30]
0x1008f4608: stp      x28, x27, [sp, #0x40]
0x1008f460c: stp      x26, x25, [sp, #0x50]
0x1008f4610: stp      x24, x23, [sp, #0x60]
0x1008f4614: stp      x22, x21, [sp, #0x70]
0x1008f4618: stp      x20, x19, [sp, #0x80]
0x1008f461c: stp      x29, x30, [sp, #0x90]
0x1008f4620: add      x29, sp, #0x90
0x1008f4624: sub      sp, sp, #0x600
0x1008f4628: mov      x20, x7
0x1008f462c: mov      x19, x6
0x1008f4630: mov      x27, x5
0x1008f4634: mov      x21, x4
0x1008f4638: mov      x26, x3
0x1008f463c: mov      x28, x2
0x1008f4640: mov      x25, x1
0x1008f4644: mov      x24, x0
0x1008f4648: ldr      x23, [x29, #0x10]
0x1008f464c: adrp     x8, #0x100ba9000
0x1008f4650: ldr      x8, [x8, #0xe48]
0x1008f4654: ldr      x8, [x8]
0x1008f4658: stur     x8, [x29, #-0xa0]
0x1008f465c: str      xzr, [sp, #0x588]
0x1008f4660: str      xzr, [sp, #0x580]
0x1008f4664: str      xzr, [sp, #0x590]
0x1008f4668: stp      xzr, xzr, [x29, #-0xb0]
0x1008f466c: str      wzr, [sp, #0x57c]
0x1008f4670: mov      w8, #0x13
0x1008f4674: strb     w8, [sp, #0x577]
0x1008f4678: mov      w8, #0x6c5f
0x1008f467c: movk     w8, #0x7475, lsl #16
0x1008f4680: add      x9, sp, #0x470
0x1008f4684: stur     w8, [x9, #0xff]
0x1008f4688: adrp     x8, #0x100b22000
0x1008f468c: add      x8, x8, #0xc17
0x1008f4690: ldr      q0, [x8]
0x1008f4694: str      q0, [sp, #0x560]
0x1008f4698: strb     wzr, [sp, #0x573]
0x1008f469c: add      x1, sp, #0x560
0x1008f46a0: add      x2, sp, #0x580
0x1008f46a4: sub      x3, x29, #0xb0
0x1008f46a8: add      x4, sp, #0x57c
0x1008f46ac: mov      x0, x25
0x1008f46b0: mov      x5, x23
0x1008f46b4: bl       #0x1008e550c
0x1008f46b8: ldrsb    w8, [sp, #0x577]
0x1008f46bc: tbnz     w8, #0x1f, #0x1008f46c8
0x1008f46c0: tbnz     w0, #0, #0x1008f46e0
0x1008f46c4: b        #0x1008f4788
0x1008f46c8: ldr      x8, [sp, #0x560]
0x1008f46cc: mov      x22, x0
0x1008f46d0: mov      x0, x8
0x1008f46d4: bl       #0x100979700
0x1008f46d8: mov      x0, x22
0x1008f46dc: tbz      w0, #0, #0x1008f4788
0x1008f46e0: ldr      w8, [sp, #0x57c]
0x1008f46e4: cmp      w8, #3
0x1008f46e8: b.ne     #0x1008f4778
0x1008f46ec: ldp      w8, w9, [x29, #-0xb0]
0x1008f46f0: cmp      w8, w9
0x1008f46f4: b.ne     #0x1008f4778
0x1008f46f8: ldur     w9, [x29, #-0xa8]
0x1008f46fc: cmp      w9, #0x51
0x1008f4700: b.ne     #0x1008f4778
0x1008f4704: str      x8, [x20]
0x1008f4708: ldr      d0, [x26, #0x20]
0x1008f470c: fcmp     d0, #0.0
0x1008f4710: b.le     #0x1008f48e4
0x1008f4714: str      x28, [sp, #0x50]
0x1008f4718: stp      x25, x23, [sp, #0x10]
0x1008f471c: mov      x23, x24
0x1008f4720: str      xzr, [sp, #0x568]
0x1008f4724: str      xzr, [sp, #0x560]
0x1008f4728: str      xzr, [sp, #0x570]
0x1008f472c: fmov     d1, #4.00000000
0x1008f4730: add      x0, sp, #0x560
0x1008f4734: bl       #0x1008fbd6c
0x1008f4738: mov      x28, x0
0x1008f473c: cbz      x0, #0x1008f48c8
0x1008f4740: ldr      x8, [sp, #0x588]
0x1008f4744: ldr      x22, [sp, #0x580]
0x1008f4748: subs     x24, x8, x22
0x1008f474c: b.eq     #0x1008f47e8
0x1008f4750: tbnz     x24, #0x3f, #0x1008f55a0
0x1008f4754: mov      x0, x24
0x1008f4758: bl       #0x10097970c
0x1008f475c: mov      x25, x0
0x1008f4760: sub      x8, x24, #8
0x1008f4764: and      x8, x8, #0xfffffffffffffff8
0x1008f4768: add      x1, x8, #8
0x1008f476c: bl       #0x10097982c
0x1008f4770: add      x8, x25, x24
0x1008f4774: b        #0x1008f47f0
0x1008f4778: adrp     x1, #0x100b22000
0x1008f477c: add      x1, x1, #0xc6c
0x1008f4780: mov      x0, x23
0x1008f4784: bl       #0x1008e625c
0x1008f4788: mov      w23, #0
0x1008f478c: ldr      x0, [sp, #0x580]
0x1008f4790: cbz      x0, #0x1008f479c
0x1008f4794: str      x0, [sp, #0x588]
0x1008f4798: bl       #0x100979700
0x1008f479c: ldur     x8, [x29, #-0xa0]
0x1008f47a0: adrp     x9, #0x100ba9000
0x1008f47a4: ldr      x9, [x9, #0xe48]
0x1008f47a8: ldr      x9, [x9]
0x1008f47ac: cmp      x9, x8
0x1008f47b0: b.ne     #0x1008f559c
0x1008f47b4: mov      x0, x23
0x1008f47b8: add      sp, sp, #0x600
0x1008f47bc: ldp      x29, x30, [sp, #0x90]
0x1008f47c0: ldp      x20, x19, [sp, #0x80]
0x1008f47c4: ldp      x22, x21, [sp, #0x70]
0x1008f47c8: ldp      x24, x23, [sp, #0x60]
0x1008f47cc: ldp      x26, x25, [sp, #0x50]
0x1008f47d0: ldp      x28, x27, [sp, #0x40]
0x1008f47d4: ldp      d9, d8, [sp, #0x30]
0x1008f47d8: ldp      d11, d10, [sp, #0x20]
0x1008f47dc: ldp      d13, d12, [sp, #0x10]
0x1008f47e0: ldp      d15, d14, [sp], #0xa0
0x1008f47e4: ret      
0x1008f47e8: mov      x8, #0
0x1008f47ec: mov      x25, #0
0x1008f47f0: ldr      x9, [x20]
0x1008f47f4: mul      x9, x9, x9
0x1008f47f8: cbz      x9, #0x1008f48b0
0x1008f47fc: mov      x10, #0
0x1008f4800: ldr      x12, [sp, #0x560]
0x1008f4804: neg      x13, x28, lsl #32
0x1008f4808: lsr      x11, x13, #0x20
0x1008f480c: cmp      w28, #0
0x1008f4810: cneg     w14, w28, mi
0x1008f4814: ubfiz    x15, x28, #3, #0x1f
0x1008f4818: add      x13, x15, x13, asr #29
0x1008f481c: add      x12, x12, x13
0x1008f4820: sub      w13, w14, w11
0x1008f4824: add      w13, w13, #1
0x1008f4828: mov      w14, #0x288
0x1008f482c: mov      w15, #0xa1
0x1008f4830: b        #0x1008f4840
0x1008f4834: add      x10, x10, #1
0x1008f4838: cmp      x10, x9
0x1008f483c: b.eq     #0x1008f48b0
0x1008f4840: mov      x16, #0
0x1008f4844: mul      x0, x10, x14
0x1008f4848: add      x17, x22, x0
0x1008f484c: add      x0, x25, x0
0x1008f4850: mov      x1, x11
0x1008f4854: b        #0x1008f486c
0x1008f4858: str      d0, [x0, x16, lsl #3]
0x1008f485c: add      x16, x16, #1
0x1008f4860: add      w1, w1, #1
0x1008f4864: cmp      x16, #0x51
0x1008f4868: b.eq     #0x1008f4834
0x1008f486c: fmov     d0, xzr
0x1008f4870: tbnz     w28, #0x1f, #0x1008f4858
0x1008f4874: mov      x2, x13
0x1008f4878: mov      x3, x1
0x1008f487c: mov      x4, x12
0x1008f4880: eor      w5, w3, w3, asr #31
0x1008f4884: sub      w6, w15, w5
0x1008f4888: cmp      w5, #0x50
0x1008f488c: csel     w5, w6, w5, gt
0x1008f4890: bic      w5, w5, w5, asr #31
0x1008f4894: ldr      d1, [x17, w5, uxtw #3]
0x1008f4898: ldr      d2, [x4], #8
0x1008f489c: fmadd    d0, d1, d2, d0
0x1008f48a0: add      w3, w3, #1
0x1008f48a4: subs     w2, w2, #1
0x1008f48a8: b.ne     #0x1008f4880
0x1008f48ac: b        #0x1008f4858
0x1008f48b0: str      x25, [sp, #0x580]
0x1008f48b4: str      x8, [sp, #0x588]
0x1008f48b8: str      x8, [sp, #0x590]
0x1008f48bc: cbz      x22, #0x1008f48c8
0x1008f48c0: mov      x0, x22
0x1008f48c4: bl       #0x100979700
0x1008f48c8: ldr      x0, [sp, #0x560]
0x1008f48cc: cbz      x0, #0x1008f48d8
0x1008f48d0: str      x0, [sp, #0x568]
0x1008f48d4: bl       #0x100979700
0x1008f48d8: mov      x24, x23
0x1008f48dc: ldp      x25, x23, [sp, #0x10]
0x1008f48e0: ldr      x28, [sp, #0x50]
0x1008f48e4: str      xzr, [sp, #0x568]
0x1008f48e8: str      xzr, [sp, #0x560]
0x1008f48ec: str      xzr, [sp, #0x570]
0x1008f48f0: add      x5, sp, #0x560
0x1008f48f4: mov      x0, x24
0x1008f48f8: mov      x1, x25
0x1008f48fc: mov      x2, x28
0x1008f4900: mov      x3, x26
0x1008f4904: mov      x4, x27
0x1008f4908: mov      x6, x23
0x1008f490c: bl       #0x1008f4164
0x1008f4910: tbz      w0, #0, #0x1008f529c
0x1008f4914: ldr      x8, [x20]
0x1008f4918: mul      x8, x8, x8
0x1008f491c: add      x1, x8, x8, lsl #1
0x1008f4920: str      xzr, [sp, #0x548]
0x1008f4924: add      x2, sp, #0x548
0x1008f4928: mov      x0, x19
0x1008f492c: bl       #0x1008e7774
0x1008f4930: ldr      x8, [x20]
0x1008f4934: mul      x8, x8, x8
0x1008f4938: cbz      x8, #0x1008f49a0
0x1008f493c: mov      x9, #0
0x1008f4940: ldr      x10, [sp, #0x580]
0x1008f4944: ldr      x12, [sp, #0x560]
0x1008f4948: ldr      x11, [x19]
0x1008f494c: add      x12, x12, #0x10
0x1008f4950: mov      w13, #0x18
0x1008f4954: mov      x14, #0
0x1008f4958: madd     x15, x9, x13, x11
0x1008f495c: movi     v1.16b, #0
0x1008f4960: fmov     d0, xzr
0x1008f4964: mov      x16, x12
0x1008f4968: ldr      d2, [x10, x14]
0x1008f496c: ldur     q3, [x16, #-0x10]
0x1008f4970: fmla     v1.2d, v3.2d, v2.d[0]
0x1008f4974: ldr      d3, [x16], #0x18
0x1008f4978: fmadd    d0, d2, d3, d0
0x1008f497c: add      x14, x14, #8
0x1008f4980: cmp      x14, #0x288
0x1008f4984: b.ne     #0x1008f4968
0x1008f4988: str      q1, [x15]
0x1008f498c: str      d0, [x15, #0x10]
0x1008f4990: add      x9, x9, #1
0x1008f4994: add      x10, x10, #0x288
0x1008f4998: cmp      x9, x8
0x1008f499c: b.ne     #0x1008f4954
0x1008f49a0: ldrb     w8, [x26, #0x19]
0x1008f49a4: ldr      x9, [x28, #0x188]
0x1008f49a8: cmp      w8, #1
0x1008f49ac: ccmp     x9, #3, #0, eq
0x1008f49b0: b.ne     #0x1008f52c0
0x1008f49b4: str      xzr, [sp, #0x550]
0x1008f49b8: str      xzr, [sp, #0x548]
0x1008f49bc: str      xzr, [sp, #0x558]
0x1008f49c0: add      x2, x28, #0xf8
0x1008f49c4: add      x3, sp, #0x548
0x1008f49c8: mov      x0, x24
0x1008f49cc: mov      x1, x25
0x1008f49d0: mov      x4, x23
0x1008f49d4: bl       #0x10090f148
0x1008f49d8: tbz      w0, #0, #0x1008f528c
0x1008f49dc: str      x28, [sp, #0x50]
0x1008f49e0: stp      x25, x23, [sp, #0x10]
0x1008f49e4: add      x1, sp, #0x548
0x1008f49e8: sub      x2, x29, #0xd8
0x1008f49ec: str      x24, [sp]
0x1008f49f0: mov      x0, x24
0x1008f49f4: bl       #0x10090fa68
0x1008f49f8: fmov     d3, #1.00000000
0x1008f49fc: ldp      d0, d1, [x29, #-0xd8]
0x1008f4a00: fsub     d0, d3, d0
0x1008f4a04: adrp     x8, #0x1009c1000
0x1008f4a08: ldr      d2, [x8, #0x5c8]
0x1008f4a0c: fcmp     d0, d2
0x1008f4a10: fcsel    d2, d2, d0, mi
0x1008f4a14: fdiv     d1, d1, d2
0x1008f4a18: fcmp     d1, d3
0x1008f4a1c: fcsel    d2, d3, d1, gt
0x1008f4a20: fcmp     d1, #0.0
0x1008f4a24: fmov     d1, xzr
0x1008f4a28: fcsel    d2, d1, d2, mi
0x1008f4a2c: fmov     d1, #1.00000000
0x1008f4a30: fmul     d0, d0, d0
0x1008f4a34: fcmp     d0, d1
0x1008f4a38: fcsel    d0, d1, d0, gt
0x1008f4a3c: str      d0, [sp, #0x58]
0x1008f4a40: ldr      x22, [x20]
0x1008f4a44: cbz      x22, #0x1008f52a4
0x1008f4a48: str      xzr, [sp, #0x78]
0x1008f4a4c: mov      x25, #0
0x1008f4a50: ldr      x10, [sp, #0x50]
0x1008f4a54: ldr      x8, [x10, #0x190]
0x1008f4a58: sub      x9, x22, #1
0x1008f4a5c: ucvtf    d3, x9
0x1008f4a60: ldr      x26, [x10, #0x170]
0x1008f4a64: ldr      x23, [x19]
0x1008f4a68: add      x10, x26, #8
0x1008f4a6c: add      x28, x26, x8, lsl #3
0x1008f4a70: add      x11, x28, #8
0x1008f4a74: add      x27, x26, x8, lsl #4
0x1008f4a78: add      x8, x27, #8
0x1008f4a7c: add      x12, x22, x22, lsl #1
0x1008f4a80: lsl      x17, x12, #3
0x1008f4a84: add      x12, x27, #0x78
0x1008f4a88: madd     x13, x17, x22, x23
0x1008f4a8c: add      x14, x28, #0x78
0x1008f4a90: add      x15, x26, #0x78
0x1008f4a94: add      x0, x23, #0x10
0x1008f4a98: stp      x0, x17, [sp, #0x60]
0x1008f4a9c: mov      w0, #0x18
0x1008f4aa0: umulh    x9, x9, x0
0x1008f4aa4: cmp      xzr, x9
0x1008f4aa8: cset     w9, ne
0x1008f4aac: str      w9, [sp, #0x3c]
0x1008f4ab0: cmp      x8, x13
0x1008f4ab4: add      x8, x23, #8
0x1008f4ab8: str      x8, [sp, #0x30]
0x1008f4abc: ccmp     x23, x12, #2, lo
0x1008f4ac0: cset     w8, lo
0x1008f4ac4: cmp      x11, x13
0x1008f4ac8: sub      x9, x17, #0x18
0x1008f4acc: str      x9, [sp, #0x28]
0x1008f4ad0: ccmp     x23, x14, #2, lo
0x1008f4ad4: ccmp     x17, #0, #8, hs
0x1008f4ad8: csinc    w8, w8, wzr, ge
0x1008f4adc: cmp      x10, x13
0x1008f4ae0: ccmp     x23, x15, #2, lo
0x1008f4ae4: csinc    w8, w8, wzr, hs
0x1008f4ae8: str      w8, [sp, #0x24]
0x1008f4aec: and      x8, x22, #0xfffffffffffffffe
0x1008f4af0: stp      x23, x8, [sp, #0x40]
0x1008f4af4: dup      v4.2d, v3.d[0]
0x1008f4af8: dup      v5.2d, v2.d[0]
0x1008f4afc: str      q2, [sp, #0x480]
0x1008f4b00: str      q3, [sp, #0x470]
0x1008f4b04: stp      q5, q4, [sp, #0x80]
0x1008f4b08: b        #0x1008f4b2c
0x1008f4b0c: add      x25, x25, #1
0x1008f4b10: ldp      x8, x23, [sp, #0x68]
0x1008f4b14: add      x23, x23, x8
0x1008f4b18: ldr      x8, [sp, #0x78]
0x1008f4b1c: add      x8, x8, x22
0x1008f4b20: str      x8, [sp, #0x78]
0x1008f4b24: cmp      x25, x22
0x1008f4b28: b.eq     #0x1008f52a4
0x1008f4b2c: ucvtf    d0, x25
0x1008f4b30: fdiv     d0, d0, d3
0x1008f4b34: ldr      d1, [sp, #0x58]
0x1008f4b38: fsub     d0, d0, d1
0x1008f4b3c: fmul     d1, d0, d0
0x1008f4b40: fmul     d6, d0, d1
0x1008f4b44: fmul     d7, d1, d1
0x1008f4b48: cmp      x22, #1
0x1008f4b4c: str      x23, [sp, #0x70]
0x1008f4b50: str      q7, [sp, #0x4f0]
0x1008f4b54: str      q0, [sp, #0x510]
0x1008f4b58: str      q1, [sp, #0x520]
0x1008f4b5c: str      q6, [sp, #0x500]
0x1008f4b60: b.eq     #0x1008f4bbc
0x1008f4b64: ldp      x9, x8, [sp, #0x60]
0x1008f4b68: mul      x8, x8, x25
0x1008f4b6c: add      x9, x9, x8
0x1008f4b70: ldp      x13, x10, [sp, #0x28]
0x1008f4b74: add      x10, x10, x8
0x1008f4b78: ldr      x11, [sp, #0x40]
0x1008f4b7c: add      x8, x11, x8
0x1008f4b80: add      x11, x8, x13
0x1008f4b84: cmp      x11, x8
0x1008f4b88: ldr      w12, [sp, #0x3c]
0x1008f4b8c: csinc    w8, w12, wzr, hs
0x1008f4b90: add      x11, x10, x13
0x1008f4b94: cmp      x11, x10
0x1008f4b98: csinc    w10, w12, wzr, hs
0x1008f4b9c: add      x11, x9, x13
0x1008f4ba0: cmp      x11, x9
0x1008f4ba4: csinc    w9, w12, wzr, hs
0x1008f4ba8: orr      w8, w8, w10
0x1008f4bac: ldr      w10, [sp, #0x24]
0x1008f4bb0: orr      w9, w9, w10
0x1008f4bb4: orr      w8, w8, w9
0x1008f4bb8: tbz      w8, #0, #0x1008f4df0
0x1008f4bbc: mov      x23, #0
0x1008f4bc0: fmov     d5, #1.00000000
0x1008f4bc4: mov      v4.16b, v0.16b
0x1008f4bc8: ldr      x8, [sp, #0x78]
0x1008f4bcc: add      x8, x23, x8
0x1008f4bd0: ldr      x9, [sp, #0x60]
0x1008f4bd4: mov      w10, #0x18
0x1008f4bd8: madd     x24, x8, x10, x9
0x1008f4bdc: ucvtf    d0, x23
0x1008f4be0: fdiv     d0, d0, d3
0x1008f4be4: fsub     d11, d0, d2
0x1008f4be8: fmul     d10, d11, d11
0x1008f4bec: fmul     d12, d4, d11
0x1008f4bf0: fmul     d15, d11, d10
0x1008f4bf4: fmul     d8, d1, d11
0x1008f4bf8: fmul     d9, d4, d10
0x1008f4bfc: fmul     d14, d10, d10
0x1008f4c00: fmul     d18, d6, d11
0x1008f4c04: str      d18, [sp, #0x4c0]
0x1008f4c08: fmul     d13, d1, d10
0x1008f4c0c: ldp      d0, d1, [x26, #8]
0x1008f4c10: fmul     d1, d11, d1
0x1008f4c14: fmadd    d0, d0, d4, d1
0x1008f4c18: ldp      d1, d2, [x26, #0x18]
0x1008f4c1c: ldr      q3, [sp, #0x520]
0x1008f4c20: fmadd    d0, d1, d3, d0
0x1008f4c24: fmadd    d0, d2, d10, d0
0x1008f4c28: ldp      d1, d2, [x26, #0x28]
0x1008f4c2c: fmadd    d0, d1, d12, d0
0x1008f4c30: str      d12, [sp, #0x4a0]
0x1008f4c34: fmadd    d0, d2, d6, d0
0x1008f4c38: ldp      d1, d2, [x26, #0x38]
0x1008f4c3c: fmadd    d0, d1, d15, d0
0x1008f4c40: fmadd    d0, d2, d8, d0
0x1008f4c44: ldp      d1, d2, [x26, #0x48]
0x1008f4c48: fmadd    d0, d1, d9, d0
0x1008f4c4c: str      d9, [sp, #0x4b0]
0x1008f4c50: fmadd    d0, d2, d7, d0
0x1008f4c54: ldp      d1, d2, [x26, #0x58]
0x1008f4c58: fmadd    d0, d1, d14, d0
0x1008f4c5c: fmadd    d0, d2, d18, d0
0x1008f4c60: ldp      d1, d2, [x26, #0x68]
0x1008f4c64: fmadd    d0, d1, d13, d0
0x1008f4c68: fmul     d1, d4, d15
0x1008f4c6c: str      d1, [sp, #0x490]
0x1008f4c70: fmadd    d0, d2, d1, d0
0x1008f4c74: fmov     d1, #0.50000000
0x1008f4c78: fmul     d1, d0, d1
0x1008f4c7c: fmadd    d1, d1, d1, d5
0x1008f4c80: fsqrt    d1, d1
0x1008f4c84: fdiv     d0, d0, d1
0x1008f4c88: bl       #0x1009799a0
0x1008f4c8c: ldur     d1, [x24, #-0x10]
0x1008f4c90: fmul     d0, d1, d0
0x1008f4c94: stur     d0, [x24, #-0x10]
0x1008f4c98: ldp      d0, d1, [x28, #8]
0x1008f4c9c: fmul     d1, d11, d1
0x1008f4ca0: ldr      q2, [sp, #0x510]
0x1008f4ca4: fmadd    d0, d0, d2, d1
0x1008f4ca8: ldp      d1, d2, [x28, #0x18]
0x1008f4cac: ldr      q3, [sp, #0x520]
0x1008f4cb0: fmadd    d0, d1, d3, d0
0x1008f4cb4: fmadd    d0, d2, d10, d0
0x1008f4cb8: ldp      d1, d2, [x28, #0x28]
0x1008f4cbc: fmadd    d0, d1, d12, d0
0x1008f4cc0: ldr      q1, [sp, #0x500]
0x1008f4cc4: fmadd    d0, d2, d1, d0
0x1008f4cc8: ldp      d1, d2, [x28, #0x38]
0x1008f4ccc: fmadd    d0, d1, d15, d0
0x1008f4cd0: mov      v12.16b, v15.16b
0x1008f4cd4: fmadd    d0, d2, d8, d0
0x1008f4cd8: ldp      d1, d2, [x28, #0x48]
0x1008f4cdc: fmadd    d0, d1, d9, d0
0x1008f4ce0: ldr      q1, [sp, #0x4f0]
0x1008f4ce4: fmadd    d0, d2, d1, d0
0x1008f4ce8: ldp      d1, d2, [x28, #0x58]
0x1008f4cec: fmadd    d0, d1, d14, d0
0x1008f4cf0: ldr      d9, [sp, #0x4c0]
0x1008f4cf4: fmadd    d0, d2, d9, d0
0x1008f4cf8: ldp      d1, d2, [x28, #0x68]
0x1008f4cfc: fmadd    d0, d1, d13, d0
0x1008f4d00: ldr      d15, [sp, #0x490]
0x1008f4d04: fmadd    d0, d2, d15, d0
0x1008f4d08: fmov     d1, #0.50000000
0x1008f4d0c: fmul     d1, d0, d1
0x1008f4d10: fmov     d2, #1.00000000
0x1008f4d14: fmadd    d1, d1, d1, d2
0x1008f4d18: fsqrt    d1, d1
0x1008f4d1c: fdiv     d0, d0, d1
0x1008f4d20: bl       #0x1009799a0
0x1008f4d24: ldur     d1, [x24, #-8]
0x1008f4d28: fmul     d0, d1, d0
0x1008f4d2c: stur     d0, [x24, #-8]
0x1008f4d30: ldp      d0, d1, [x27, #8]
0x1008f4d34: fmul     d1, d11, d1
0x1008f4d38: ldr      q2, [sp, #0x510]
0x1008f4d3c: fmadd    d0, d0, d2, d1
0x1008f4d40: ldp      d1, d2, [x27, #0x18]
0x1008f4d44: ldr      q3, [sp, #0x520]
0x1008f4d48: fmadd    d0, d1, d3, d0
0x1008f4d4c: fmadd    d0, d2, d10, d0
0x1008f4d50: ldp      d1, d2, [x27, #0x28]
0x1008f4d54: ldr      d3, [sp, #0x4a0]
0x1008f4d58: fmadd    d0, d1, d3, d0
0x1008f4d5c: fmov     d3, #0.50000000
0x1008f4d60: ldr      q1, [sp, #0x500]
0x1008f4d64: fmadd    d0, d2, d1, d0
0x1008f4d68: ldp      d1, d2, [x27, #0x38]
0x1008f4d6c: fmadd    d0, d1, d12, d0
0x1008f4d70: fmadd    d0, d2, d8, d0
0x1008f4d74: ldp      d1, d2, [x27, #0x48]
0x1008f4d78: ldr      d4, [sp, #0x4b0]
0x1008f4d7c: fmadd    d0, d1, d4, d0
0x1008f4d80: ldr      q1, [sp, #0x4f0]
0x1008f4d84: fmadd    d0, d2, d1, d0
0x1008f4d88: ldp      d1, d2, [x27, #0x58]
0x1008f4d8c: fmadd    d0, d1, d14, d0
0x1008f4d90: fmadd    d0, d2, d9, d0
0x1008f4d94: ldp      d1, d2, [x27, #0x68]
0x1008f4d98: fmadd    d0, d1, d13, d0
0x1008f4d9c: fmadd    d0, d2, d15, d0
0x1008f4da0: fmul     d1, d0, d3
0x1008f4da4: fmov     d2, #1.00000000
0x1008f4da8: fmadd    d1, d1, d1, d2
0x1008f4dac: fsqrt    d1, d1
0x1008f4db0: fdiv     d0, d0, d1
0x1008f4db4: bl       #0x1009799a0
0x1008f4db8: ldr      q7, [sp, #0x4f0]
0x1008f4dbc: fmov     d5, #1.00000000
0x1008f4dc0: ldr      q6, [sp, #0x500]
0x1008f4dc4: ldr      q4, [sp, #0x510]
0x1008f4dc8: ldr      q3, [sp, #0x470]
0x1008f4dcc: ldr      q2, [sp, #0x480]
0x1008f4dd0: ldr      d1, [x24]
0x1008f4dd4: fmul     d0, d1, d0
0x1008f4dd8: ldr      q1, [sp, #0x520]
0x1008f4ddc: str      d0, [x24], #0x18
0x1008f4de0: add      x23, x23, #1
0x1008f4de4: cmp      x22, x23
0x1008f4de8: b.ne     #0x1008f4bdc
0x1008f4dec: b        #0x1008f4b0c
0x1008f4df0: str      x25, [sp, #8]
0x1008f4df4: ldr      d2, [x26, #8]
0x1008f4df8: str      q2, [sp, #0x330]
0x1008f4dfc: ldr      d2, [x26, #0x10]
0x1008f4e00: str      q2, [sp, #0x320]
0x1008f4e04: ldr      d2, [x26, #0x18]
0x1008f4e08: str      q2, [sp, #0x310]
0x1008f4e0c: ldr      d2, [x26, #0x20]
0x1008f4e10: str      q2, [sp, #0x300]
0x1008f4e14: ldr      d2, [x26, #0x28]
0x1008f4e18: str      q2, [sp, #0x2f0]
0x1008f4e1c: ldr      d2, [x26, #0x30]
0x1008f4e20: str      q2, [sp, #0x2e0]
0x1008f4e24: ldr      d2, [x26, #0x38]
0x1008f4e28: str      q2, [sp, #0x2d0]
0x1008f4e2c: ldr      d2, [x26, #0x40]
0x1008f4e30: str      q2, [sp, #0x2c0]
0x1008f4e34: ldr      d2, [x26, #0x48]
0x1008f4e38: str      q2, [sp, #0x2b0]
0x1008f4e3c: ldr      d2, [x26, #0x50]
0x1008f4e40: str      q2, [sp, #0x2a0]
0x1008f4e44: ldr      d2, [x26, #0x58]
0x1008f4e48: str      q2, [sp, #0x290]
0x1008f4e4c: ldr      d2, [x26, #0x60]
0x1008f4e50: str      q2, [sp, #0x280]
0x1008f4e54: ldr      d2, [x26, #0x68]
0x1008f4e58: str      q2, [sp, #0x270]
0x1008f4e5c: ldr      d2, [x26, #0x70]
0x1008f4e60: str      q2, [sp, #0x260]
0x1008f4e64: ldr      d2, [x28, #8]
0x1008f4e68: str      q2, [sp, #0x250]
0x1008f4e6c: ldr      d2, [x28, #0x10]
0x1008f4e70: str      q2, [sp, #0x240]
0x1008f4e74: ldr      d2, [x28, #0x18]
0x1008f4e78: str      q2, [sp, #0x230]
0x1008f4e7c: ldr      d2, [x28, #0x20]
0x1008f4e80: str      q2, [sp, #0x220]
0x1008f4e84: ldr      d2, [x28, #0x28]
0x1008f4e88: str      q2, [sp, #0x210]
0x1008f4e8c: ldr      d2, [x28, #0x30]
0x1008f4e90: str      q2, [sp, #0x200]
0x1008f4e94: ldr      d2, [x28, #0x38]
0x1008f4e98: str      q2, [sp, #0x1f0]
0x1008f4e9c: ldr      d2, [x28, #0x40]
0x1008f4ea0: str      q2, [sp, #0x1e0]
0x1008f4ea4: ldr      d2, [x28, #0x48]
0x1008f4ea8: str      q2, [sp, #0x1d0]
0x1008f4eac: ldr      d2, [x28, #0x50]
0x1008f4eb0: str      q2, [sp, #0x1c0]
0x1008f4eb4: ldr      d2, [x28, #0x58]
0x1008f4eb8: str      q2, [sp, #0x1b0]
0x1008f4ebc: ldr      d2, [x28, #0x60]
0x1008f4ec0: str      q2, [sp, #0x1a0]
0x1008f4ec4: ldr      d2, [x28, #0x68]
0x1008f4ec8: str      q2, [sp, #0x190]
0x1008f4ecc: ldr      d2, [x28, #0x70]
0x1008f4ed0: str      q2, [sp, #0x180]
0x1008f4ed4: ldr      d2, [x27, #8]
0x1008f4ed8: str      q2, [sp, #0x170]
0x1008f4edc: ldr      d2, [x27, #0x10]
0x1008f4ee0: str      q2, [sp, #0x160]
0x1008f4ee4: ldr      d2, [x27, #0x18]
0x1008f4ee8: str      q2, [sp, #0x150]
0x1008f4eec: ldr      d2, [x27, #0x20]
0x1008f4ef0: str      q2, [sp, #0x140]
0x1008f4ef4: ldr      x24, [sp, #0x48]
0x1008f4ef8: ldr      d2, [x27, #0x28]
0x1008f4efc: str      q2, [sp, #0x130]
0x1008f4f00: ldr      d2, [x27, #0x30]
0x1008f4f04: str      q2, [sp, #0x120]
0x1008f4f08: ldr      d2, [x27, #0x38]
0x1008f4f0c: str      q2, [sp, #0x110]
0x1008f4f10: ldr      d2, [x27, #0x40]
0x1008f4f14: str      q2, [sp, #0x100]
0x1008f4f18: ldr      d2, [x27, #0x48]
0x1008f4f1c: str      q2, [sp, #0xf0]
0x1008f4f20: ldr      d2, [x27, #0x50]
0x1008f4f24: str      q2, [sp, #0xe0]
0x1008f4f28: ldr      d2, [x27, #0x58]
0x1008f4f2c: str      q2, [sp, #0xd0]
0x1008f4f30: ldp      d2, d4, [x27, #0x60]
0x1008f4f34: str      q2, [sp, #0xc0]
0x1008f4f38: adrp     x8, #0x100994000
0x1008f4f3c: ldr      q2, [x8, #0x2d0]
0x1008f4f40: ldr      d3, [x27, #0x70]
0x1008f4f44: stp      q3, q4, [sp, #0xa0]
0x1008f4f48: dup      v3.2d, v7.d[0]
0x1008f4f4c: str      q3, [sp, #0x4b0]
0x1008f4f50: mov      w25, #2
0x1008f4f54: mov      v4.16b, v0.16b
0x1008f4f58: str      q2, [sp, #0x390]
0x1008f4f5c: ucvtf    v0.2d, v2.2d
0x1008f4f60: ldp      q2, q3, [sp, #0x80]
0x1008f4f64: fdiv     v0.2d, v0.2d, v3.2d
0x1008f4f68: fsub     v19.2d, v0.2d, v2.2d
0x1008f4f6c: str      q19, [sp, #0x410]
0x1008f4f70: fmul     v22.2d, v19.2d, v19.2d
0x1008f4f74: dup      v20.2d, v4.d[0]
0x1008f4f78: str      q20, [sp, #0x400]
0x1008f4f7c: fmul     v17.2d, v19.2d, v4.d[0]
0x1008f4f80: str      q17, [sp, #0x430]
0x1008f4f84: fmul     v0.2d, v19.2d, v22.2d
0x1008f4f88: dup      v21.2d, v1.d[0]
0x1008f4f8c: stp      q22, q21, [sp, #0x3d0]
0x1008f4f90: fmul     v16.2d, v19.2d, v1.d[0]
0x1008f4f94: str      q16, [sp, #0x440]
0x1008f4f98: fmul     v7.2d, v22.2d, v4.d[0]
0x1008f4f9c: str      q7, [sp, #0x450]
0x1008f4fa0: fmul     v5.2d, v22.2d, v22.2d
0x1008f4fa4: str      q5, [sp, #0x490]
0x1008f4fa8: dup      v18.2d, v6.d[0]
0x1008f4fac: str      q18, [sp, #0x420]
0x1008f4fb0: fmul     v6.2d, v19.2d, v6.d[0]
0x1008f4fb4: str      q6, [sp, #0x460]
0x1008f4fb8: fmul     v3.2d, v22.2d, v1.d[0]
0x1008f4fbc: str      q3, [sp, #0x4a0]
0x1008f4fc0: fmul     v2.2d, v0.2d, v4.d[0]
0x1008f4fc4: str      q2, [sp, #0x3c0]
0x1008f4fc8: mov      v4.16b, v0.16b
0x1008f4fcc: str      q0, [sp, #0x3f0]
0x1008f4fd0: ldp      q0, q1, [sp, #0x320]
0x1008f4fd4: fmul     v0.2d, v19.2d, v0.d[0]
0x1008f4fd8: fmla     v0.2d, v20.2d, v1.d[0]
0x1008f4fdc: ldr      q1, [sp, #0x310]
0x1008f4fe0: fmla     v0.2d, v21.2d, v1.d[0]
0x1008f4fe4: ldr      q1, [sp, #0x300]
0x1008f4fe8: fmla     v0.2d, v22.2d, v1.d[0]
0x1008f4fec: ldr      q1, [sp, #0x2f0]
0x1008f4ff0: fmla     v0.2d, v17.2d, v1.d[0]
0x1008f4ff4: ldr      q1, [sp, #0x2e0]
0x1008f4ff8: fmla     v0.2d, v18.2d, v1.d[0]
0x1008f4ffc: ldr      q1, [sp, #0x2d0]
0x1008f5000: fmla     v0.2d, v4.2d, v1.d[0]
0x1008f5004: ldp      q1, q4, [sp, #0x2b0]
0x1008f5008: fmla     v0.2d, v16.2d, v4.d[0]
0x1008f500c: fmla     v0.2d, v7.2d, v1.d[0]
0x1008f5010: ldp      q1, q7, [sp, #0x290]
0x1008f5014: ldr      q4, [sp, #0x4b0]
0x1008f5018: fmla     v0.2d, v4.2d, v7.d[0]
0x1008f501c: fmla     v0.2d, v5.2d, v1.d[0]
0x1008f5020: ldp      q1, q4, [sp, #0x270]
0x1008f5024: fmla     v0.2d, v6.2d, v4.d[0]
0x1008f5028: fmla     v0.2d, v3.2d, v1.d[0]
0x1008f502c: ldr      q1, [sp, #0x260]
0x1008f5030: fmla     v0.2d, v2.2d, v1.d[0]
0x1008f5034: fmov     v1.2d, #0.50000000
0x1008f5038: str      q1, [sp, #0x3b0]
0x1008f503c: fmul     v1.2d, v0.2d, v1.2d
0x1008f5040: fmov     v2.2d, #1.00000000
0x1008f5044: str      q2, [sp, #0x3a0]
0x1008f5048: fmla     v2.2d, v1.2d, v1.2d
0x1008f504c: fsqrt    v1.2d, v2.2d
0x1008f5050: fdiv     v0.2d, v0.2d, v1.2d
0x1008f5054: str      q0, [sp, #0x380]
0x1008f5058: mov      d0, v0.d[1]
0x1008f505c: bl       #0x1009799a0
0x1008f5060: str      q0, [sp, #0x4c0]
0x1008f5064: ldr      q0, [sp, #0x380]
0x1008f5068: bl       #0x1009799a0
0x1008f506c: ldr      q1, [sp, #0x4c0]
0x1008f5070: mov      v0.d[1], v1.d[0]
0x1008f5074: ldp      q3, q2, [x23, #0x10]
0x1008f5078: stp      q3, q2, [sp, #0x370]
0x1008f507c: ldr      q1, [x23]
0x1008f5080: ext      v2.16b, v1.16b, v2.16b, #8
0x1008f5084: str      q2, [sp, #0x360]
0x1008f5088: mov      v1.d[1], v3.d[1]
0x1008f508c: ldr      q2, [sp, #0x240]
0x1008f5090: ldr      q3, [sp, #0x410]
0x1008f5094: fmul     v2.2d, v3.2d, v2.d[0]
0x1008f5098: ldr      q3, [sp, #0x250]
0x1008f509c: ldr      q4, [sp, #0x400]
0x1008f50a0: fmla     v2.2d, v4.2d, v3.d[0]
0x1008f50a4: ldp      q3, q5, [sp, #0x220]
0x1008f50a8: ldp      q4, q6, [sp, #0x3d0]
0x1008f50ac: fmla     v2.2d, v6.2d, v5.d[0]
0x1008f50b0: fmla     v2.2d, v4.2d, v3.d[0]
0x1008f50b4: ldp      q3, q5, [sp, #0x200]
0x1008f50b8: ldr      q4, [sp, #0x430]
0x1008f50bc: fmla     v2.2d, v4.2d, v5.d[0]
0x1008f50c0: ldr      q4, [sp, #0x420]
0x1008f50c4: fmla     v2.2d, v4.2d, v3.d[0]
0x1008f50c8: ldp      q3, q5, [sp, #0x1e0]
0x1008f50cc: ldr      q4, [sp, #0x3f0]
0x1008f50d0: fmla     v2.2d, v4.2d, v5.d[0]
0x1008f50d4: ldr      q4, [sp, #0x440]
0x1008f50d8: fmla     v2.2d, v4.2d, v3.d[0]
0x1008f50dc: ldp      q3, q5, [sp, #0x1c0]
0x1008f50e0: ldr      q4, [sp, #0x450]
0x1008f50e4: fmla     v2.2d, v4.2d, v5.d[0]
0x1008f50e8: ldr      q4, [sp, #0x4b0]
0x1008f50ec: fmla     v2.2d, v4.2d, v3.d[0]
0x1008f50f0: ldp      q3, q5, [sp, #0x1a0]
0x1008f50f4: ldr      q4, [sp, #0x490]
0x1008f50f8: fmla     v2.2d, v4.2d, v5.d[0]
0x1008f50fc: ldr      q4, [sp, #0x460]
0x1008f5100: fmla     v2.2d, v4.2d, v3.d[0]
0x1008f5104: ldp      q3, q5, [sp, #0x180]
0x1008f5108: ldr      q4, [sp, #0x4a0]
0x1008f510c: fmla     v2.2d, v4.2d, v5.d[0]
0x1008f5110: ldr      q4, [sp, #0x3c0]
0x1008f5114: fmla     v2.2d, v4.2d, v3.d[0]
0x1008f5118: ldp      q4, q3, [sp, #0x3a0]
0x1008f511c: fmul     v3.2d, v2.2d, v3.2d
0x1008f5120: fmla     v4.2d, v3.2d, v3.2d
0x1008f5124: fmul     v5.2d, v1.2d, v0.2d
0x1008f5128: add      x8, sp, #0x4c0
0x1008f512c: st1      {v5.2d, v6.2d, v7.2d}, [x8]
0x1008f5130: fsqrt    v0.2d, v4.2d
0x1008f5134: fdiv     v0.2d, v2.2d, v0.2d
0x1008f5138: str      q0, [sp, #0x340]
0x1008f513c: mov      d0, v0.d[1]
0x1008f5140: bl       #0x1009799a0
0x1008f5144: str      q0, [sp, #0x350]
0x1008f5148: ldr      q0, [sp, #0x340]
0x1008f514c: bl       #0x1009799a0
0x1008f5150: ldp      q1, q4, [sp, #0x350]
0x1008f5154: mov      v0.d[1], v1.d[0]
0x1008f5158: add      x8, sp, #0x4c0
0x1008f515c: ld1      {v1.2d, v2.2d, v3.2d}, [x8]
0x1008f5160: fmul     v2.2d, v4.2d, v0.2d
0x1008f5164: add      x8, sp, #0x4c0
0x1008f5168: st1      {v1.2d, v2.2d, v3.2d}, [x8]
0x1008f516c: ldr      q0, [sp, #0x160]
0x1008f5170: ldr      q1, [sp, #0x410]
0x1008f5174: fmul     v0.2d, v1.2d, v0.d[0]
0x1008f5178: ldr      q1, [sp, #0x170]
0x1008f517c: ldr      q2, [sp, #0x400]
0x1008f5180: fmla     v0.2d, v2.2d, v1.d[0]
0x1008f5184: ldp      q1, q3, [sp, #0x140]
0x1008f5188: ldp      q2, q4, [sp, #0x3d0]
0x1008f518c: fmla     v0.2d, v4.2d, v3.d[0]
0x1008f5190: fmla     v0.2d, v2.2d, v1.d[0]
0x1008f5194: ldp      q1, q3, [sp, #0x120]
0x1008f5198: ldr      q2, [sp, #0x430]
0x1008f519c: fmla     v0.2d, v2.2d, v3.d[0]
0x1008f51a0: ldr      q2, [sp, #0x420]
0x1008f51a4: fmla     v0.2d, v2.2d, v1.d[0]
0x1008f51a8: ldp      q1, q3, [sp, #0x100]
0x1008f51ac: ldr      q2, [sp, #0x3f0]
0x1008f51b0: fmla     v0.2d, v2.2d, v3.d[0]
0x1008f51b4: ldr      q2, [sp, #0x440]
0x1008f51b8: fmla     v0.2d, v2.2d, v1.d[0]
0x1008f51bc: ldp      q1, q3, [sp, #0xe0]
0x1008f51c0: ldr      q2, [sp, #0x450]
0x1008f51c4: fmla     v0.2d, v2.2d, v3.d[0]
0x1008f51c8: ldr      q2, [sp, #0x4b0]
0x1008f51cc: fmla     v0.2d, v2.2d, v1.d[0]
0x1008f51d0: ldp      q1, q3, [sp, #0xc0]
0x1008f51d4: ldr      q2, [sp, #0x490]
0x1008f51d8: fmla     v0.2d, v2.2d, v3.d[0]
0x1008f51dc: ldr      q2, [sp, #0x460]
0x1008f51e0: fmla     v0.2d, v2.2d, v1.d[0]
0x1008f51e4: ldp      q1, q3, [sp, #0xa0]
0x1008f51e8: ldr      q2, [sp, #0x4a0]
0x1008f51ec: fmla     v0.2d, v2.2d, v3.d[0]
0x1008f51f0: ldr      q2, [sp, #0x3c0]
0x1008f51f4: fmla     v0.2d, v2.2d, v1.d[0]
0x1008f51f8: ldp      q2, q1, [sp, #0x3a0]
0x1008f51fc: fmul     v1.2d, v0.2d, v1.2d
0x1008f5200: fmla     v2.2d, v1.2d, v1.2d
0x1008f5204: fsqrt    v1.2d, v2.2d
0x1008f5208: fdiv     v0.2d, v0.2d, v1.2d
0x1008f520c: str      q0, [sp, #0x490]
0x1008f5210: mov      d0, v0.d[1]
0x1008f5214: bl       #0x1009799a0
0x1008f5218: str      q0, [sp, #0x4a0]
0x1008f521c: ldr      q0, [sp, #0x490]
0x1008f5220: bl       #0x1009799a0
0x1008f5224: ldp      q5, q2, [sp, #0x380]
0x1008f5228: ldr      q6, [sp, #0x500]
0x1008f522c: ldr      q1, [sp, #0x520]
0x1008f5230: ldr      q4, [sp, #0x510]
0x1008f5234: ldr      q3, [sp, #0x4a0]
0x1008f5238: mov      v0.d[1], v3.d[0]
0x1008f523c: ldr      q3, [sp, #0x370]
0x1008f5240: mov      v3.d[1], v5.d[1]
0x1008f5244: add      x8, sp, #0x4c0
0x1008f5248: ld1      {v16.2d, v17.2d, v18.2d}, [x8]
0x1008f524c: fmul     v18.2d, v3.2d, v0.2d
0x1008f5250: st3      {v16.2d, v17.2d, v18.2d}, [x23], #48
0x1008f5254: dup      v0.2d, x25
0x1008f5258: add      v2.2d, v2.2d, v0.2d
0x1008f525c: subs     x24, x24, #2
0x1008f5260: b.ne     #0x1008f4f58
0x1008f5264: ldr      x8, [sp, #0x48]
0x1008f5268: mov      x23, x8
0x1008f526c: cmp      x22, x8
0x1008f5270: fmov     d5, #1.00000000
0x1008f5274: ldr      q2, [sp, #0x480]
0x1008f5278: ldr      q3, [sp, #0x470]
0x1008f527c: ldr      x25, [sp, #8]
0x1008f5280: ldr      q7, [sp, #0x4f0]
0x1008f5284: b.eq     #0x1008f4b0c
0x1008f5288: b        #0x1008f4bc8
0x1008f528c: ldr      x0, [sp, #0x548]
0x1008f5290: cbz      x0, #0x1008f529c
0x1008f5294: str      x0, [sp, #0x550]
0x1008f5298: bl       #0x100979700
0x1008f529c: mov      w23, #0
0x1008f52a0: b        #0x1008f5588
0x1008f52a4: ldr      x0, [sp, #0x548]
0x1008f52a8: cbz      x0, #0x1008f52b4
0x1008f52ac: str      x0, [sp, #0x550]
0x1008f52b0: bl       #0x100979700
0x1008f52b4: ldr      x24, [sp]
0x1008f52b8: ldp      x25, x23, [sp, #0x10]
0x1008f52bc: ldr      x28, [sp, #0x50]
0x1008f52c0: ldrb     w8, [x21]
0x1008f52c4: cmp      w8, #1
0x1008f52c8: b.ne     #0x1008f5584
0x1008f52cc: str      xzr, [sp, #0x550]
0x1008f52d0: str      xzr, [sp, #0x548]
0x1008f52d4: str      xzr, [sp, #0x558]
0x1008f52d8: add      x2, x28, #0xf8
0x1008f52dc: add      x3, sp, #0x548
0x1008f52e0: mov      x0, x24
0x1008f52e4: mov      x1, x25
0x1008f52e8: mov      x4, x23
0x1008f52ec: bl       #0x10090f148
0x1008f52f0: mov      x23, x0
0x1008f52f4: tbz      w0, #0, #0x1008f5570
0x1008f52f8: add      x1, sp, #0x548
0x1008f52fc: sub      x2, x29, #0xc0
0x1008f5300: mov      x0, x24
0x1008f5304: bl       #0x10090fa68
0x1008f5308: stp      xzr, xzr, [x29, #-0xd8]
0x1008f530c: stur     xzr, [x29, #-0xc8]
0x1008f5310: sub      x1, x29, #0xd8
0x1008f5314: mov      x0, x24
0x1008f5318: bl       #0x1008f38e0
0x1008f531c: ldp      x9, x8, [x19]
0x1008f5320: sub      x8, x8, x9
0x1008f5324: asr      x1, x8, #3
0x1008f5328: stur     xzr, [x29, #-0xe8]
0x1008f532c: add      x0, sp, #0x530
0x1008f5330: sub      x2, x29, #0xe8
0x1008f5334: bl       #0x1008f5678
0x1008f5338: ldr      x8, [x20]
0x1008f533c: cbz      x8, #0x1008f5534
0x1008f5340: mov      x22, #0
0x1008f5344: fmov     d8, #1.00000000
0x1008f5348: adrp     x9, #0x1009c1000
0x1008f534c: ldr      d9, [x9, #0x5c8]
0x1008f5350: fmov     d10, xzr
0x1008f5354: mov      w24, #0x18
0x1008f5358: mov      x25, #0
0x1008f535c: ucvtf    d11, x22
0x1008f5360: sub      x8, x8, #1
0x1008f5364: ucvtf    d0, x8
0x1008f5368: fdiv     d1, d11, d0
0x1008f536c: ucvtf    d2, x25
0x1008f5370: fdiv     d0, d2, d0
0x1008f5374: fsqrt    d1, d1
0x1008f5378: fsub     d2, d8, d1
0x1008f537c: fmul     d0, d0, d1
0x1008f5380: stp      d2, d0, [x29, #-0xe8]
0x1008f5384: ldp      d0, d1, [x21, #0x20]
0x1008f5388: ldr      d2, [x21, #0x30]
0x1008f538c: sub      x0, x29, #0xe8
0x1008f5390: sub      x1, x29, #0xc0
0x1008f5394: sub      x2, x29, #0xd8
0x1008f5398: sub      x3, x29, #0xf8
0x1008f539c: bl       #0x1008f39e0
0x1008f53a0: ldp      d0, d1, [x29, #-0xf8]
0x1008f53a4: fsub     d0, d8, d0
0x1008f53a8: fcmp     d0, d9
0x1008f53ac: fcsel    d2, d9, d0, mi
0x1008f53b0: fdiv     d1, d1, d2
0x1008f53b4: fcmp     d1, d8
0x1008f53b8: fcsel    d2, d8, d1, gt
0x1008f53bc: fcmp     d1, #0.0
0x1008f53c0: fcsel    d1, d10, d2, mi
0x1008f53c4: fmul     d0, d0, d0
0x1008f53c8: fcmp     d0, d8
0x1008f53cc: ldr      x8, [x20]
0x1008f53d0: sub      x9, x8, #1
0x1008f53d4: ucvtf    d2, x9
0x1008f53d8: fcsel    d0, d8, d0, gt
0x1008f53dc: fmul     d0, d0, d2
0x1008f53e0: fmul     d1, d1, d2
0x1008f53e4: fcmp     d0, d2
0x1008f53e8: fcsel    d0, d0, d2, mi
0x1008f53ec: fmaxnm   d0, d0, d10
0x1008f53f0: fcmp     d1, d2
0x1008f53f4: fcsel    d1, d1, d2, mi
0x1008f53f8: fmaxnm   d1, d1, d10
0x1008f53fc: frintm   d2, d0
0x1008f5400: fcvtmu   x10, d0
0x1008f5404: frintm   d3, d1
0x1008f5408: fcvtmu   x11, d1
0x1008f540c: add      x12, x10, #1
0x1008f5410: cmp      x9, x12
0x1008f5414: csinc    x12, x9, x10, lo
0x1008f5418: add      x13, x11, #1
0x1008f541c: cmp      x9, x13
0x1008f5420: csinc    x9, x9, x11, lo
0x1008f5424: fcvtzu   d2, d2
0x1008f5428: ucvtf    d2, d2
0x1008f542c: fsub     d0, d0, d2
0x1008f5430: fcvtzu   d2, d3
0x1008f5434: ucvtf    d2, d2
0x1008f5438: fsub     d1, d1, d2
0x1008f543c: mul      x10, x8, x10
0x1008f5440: add      x13, x10, x11
0x1008f5444: ldr      x14, [x19]
0x1008f5448: madd     x13, x13, x24, x14
0x1008f544c: add      x10, x9, x10
0x1008f5450: madd     x10, x10, x24, x14
0x1008f5454: mul      x12, x12, x8
0x1008f5458: add      x11, x12, x11
0x1008f545c: madd     x11, x11, x24, x14
0x1008f5460: add      x9, x9, x12
0x1008f5464: madd     x9, x9, x24, x14
0x1008f5468: fsub     d2, d8, d0
0x1008f546c: fsub     d3, d8, d1
0x1008f5470: madd     x12, x22, x8, x25
0x1008f5474: ldr      x14, [sp, #0x530]
0x1008f5478: madd     x12, x12, x24, x14
0x1008f547c: ldr      d4, [x13]
0x1008f5480: ldr      d5, [x10]
0x1008f5484: ldr      d6, [x11]
0x1008f5488: ldr      d7, [x9]
0x1008f548c: fmul     d4, d2, d4
0x1008f5490: fmul     d5, d2, d5
0x1008f5494: fmul     d5, d1, d5
0x1008f5498: fmadd    d4, d4, d3, d5
0x1008f549c: fmul     d5, d0, d6
0x1008f54a0: fmadd    d4, d5, d3, d4
0x1008f54a4: fmul     d5, d0, d7
0x1008f54a8: fmadd    d4, d5, d1, d4
0x1008f54ac: str      d4, [x12]
0x1008f54b0: ldr      d4, [x13, #8]
0x1008f54b4: ldr      d5, [x10, #8]
0x1008f54b8: ldr      d6, [x11, #8]
0x1008f54bc: ldr      d7, [x9, #8]
0x1008f54c0: fmul     d4, d2, d4
0x1008f54c4: fmul     d5, d2, d5
0x1008f54c8: fmul     d5, d1, d5
0x1008f54cc: fmadd    d4, d4, d3, d5
0x1008f54d0: fmul     d5, d0, d6
0x1008f54d4: fmadd    d4, d5, d3, d4
0x1008f54d8: fmul     d5, d0, d7
0x1008f54dc: fmadd    d4, d5, d1, d4
0x1008f54e0: str      d4, [x12, #8]
0x1008f54e4: ldr      d4, [x13, #0x10]
0x1008f54e8: ldr      d5, [x10, #0x10]
0x1008f54ec: ldr      d6, [x11, #0x10]
0x1008f54f0: ldr      d7, [x9, #0x10]
0x1008f54f4: fmul     d4, d2, d4
0x1008f54f8: fmul     d2, d2, d5
0x1008f54fc: fmul     d2, d1, d2
0x1008f5500: fmadd    d2, d4, d3, d2
0x1008f5504: fmul     d4, d0, d6
0x1008f5508: fmadd    d2, d4, d3, d2
0x1008f550c: fmul     d0, d0, d7
0x1008f5510: fmadd    d0, d0, d1, d2
0x1008f5514: str      d0, [x12, #0x10]
0x1008f5518: add      x25, x25, #1
0x1008f551c: cmp      x25, x8
0x1008f5520: b.lo     #0x1008f5360
0x1008f5524: ldr      x8, [x20]
0x1008f5528: add      x22, x22, #1
0x1008f552c: cmp      x22, x8
0x1008f5530: b.lo     #0x1008f5358
0x1008f5534: ldr      x0, [x19]
0x1008f5538: ldr      q0, [sp, #0x530]
0x1008f553c: str      q0, [x19]
0x1008f5540: ldr      x8, [x19, #0x10]
0x1008f5544: ldr      x9, [sp, #0x540]
0x1008f5548: str      x9, [x19, #0x10]
0x1008f554c: str      x0, [sp, #0x530]
0x1008f5550: str      x8, [sp, #0x540]
0x1008f5554: cbz      x0, #0x1008f5560
0x1008f5558: str      x0, [sp, #0x538]
0x1008f555c: bl       #0x100979700
0x1008f5560: ldur     x0, [x29, #-0xd8]
0x1008f5564: cbz      x0, #0x1008f5570
0x1008f5568: stur     x0, [x29, #-0xd0]
0x1008f556c: bl       #0x100979700
0x1008f5570: ldr      x0, [sp, #0x548]
0x1008f5574: cbz      x0, #0x1008f5588
0x1008f5578: str      x0, [sp, #0x550]
0x1008f557c: bl       #0x100979700
0x1008f5580: b        #0x1008f5588
0x1008f5584: mov      w23, #1
0x1008f5588: ldr      x0, [sp, #0x560]
0x1008f558c: cbz      x0, #0x1008f478c
0x1008f5590: str      x0, [sp, #0x568]
0x1008f5594: bl       #0x100979700
0x1008f5598: b        #0x1008f478c
0x1008f559c: bl       #0x1009797b4
0x1008f55a0: bl       #0x1008e6248
0x1008f55a4: brk      #1
0x1008f55a8: b        #0x1008f55ac
0x1008f55ac: mov      x19, x0
0x1008f55b0: ldur     x0, [x29, #-0xd8]
0x1008f55b4: cbz      x0, #0x1008f561c
0x1008f55b8: b        #0x1008f5664
0x1008f55bc: b        #0x1008f55c8
0x1008f55c0: b        #0x1008f55c8
0x1008f55c4: b        #0x1008f55c8
0x1008f55c8: mov      x19, x0
0x1008f55cc: ldr      x0, [sp, #0x548]
0x1008f55d0: cbnz     x0, #0x1008f5624
0x1008f55d4: b        #0x1008f562c
0x1008f55d8: b        #0x1008f55e4
0x1008f55dc: b        #0x1008f55e4
0x1008f55e0: b        #0x1008f55e4
0x1008f55e4: mov      x19, x0
0x1008f55e8: b        #0x1008f562c
0x1008f55ec: mov      x19, x0
0x1008f55f0: b        #0x1008f563c
0x1008f55f4: mov      x19, x0
0x1008f55f8: ldrsb    w8, [sp, #0x577]
0x1008f55fc: tbz      w8, #0x1f, #0x1008f563c
0x1008f5600: ldr      x0, [sp, #0x560]
0x1008f5604: b        #0x1008f5638
0x1008f5608: mov      x19, x0
0x1008f560c: ldr      x0, [sp, #0x530]
0x1008f5610: cbnz     x0, #0x1008f5654
0x1008f5614: ldur     x0, [x29, #-0xd8]
0x1008f5618: cbnz     x0, #0x1008f5664
0x1008f561c: ldr      x0, [sp, #0x548]
0x1008f5620: cbz      x0, #0x1008f562c
0x1008f5624: str      x0, [sp, #0x550]
0x1008f5628: bl       #0x100979700
0x1008f562c: ldr      x0, [sp, #0x560]
0x1008f5630: cbz      x0, #0x1008f563c
0x1008f5634: str      x0, [sp, #0x568]
0x1008f5638: bl       #0x100979700
0x1008f563c: ldr      x0, [sp, #0x580]
0x1008f5640: cbz      x0, #0x1008f564c
0x1008f5644: str      x0, [sp, #0x588]
0x1008f5648: bl       #0x100979700
0x1008f564c: mov      x0, x19
0x1008f5650: bl       #0x10097958c
0x1008f5654: str      x0, [sp, #0x538]
0x1008f5658: bl       #0x100979700
0x1008f565c: ldur     x0, [x29, #-0xd8]
0x1008f5660: cbz      x0, #0x1008f561c
0x1008f5664: stur     x0, [x29, #-0xd0]
0x1008f5668: bl       #0x100979700
0x1008f566c: ldr      x0, [sp, #0x548]
0x1008f5670: cbnz     x0, #0x1008f5624
0x1008f5674: b        #0x1008f562c
