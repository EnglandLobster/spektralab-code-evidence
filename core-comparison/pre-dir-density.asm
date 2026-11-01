FUNCTION 0x1008ed6f8 0x1008edf64
0x1008ed6f8: sub      sp, sp, #0xa0
0x1008ed6fc: stp      d9, d8, [sp, #0x30]
0x1008ed700: stp      x28, x27, [sp, #0x40]
0x1008ed704: stp      x26, x25, [sp, #0x50]
0x1008ed708: stp      x24, x23, [sp, #0x60]
0x1008ed70c: stp      x22, x21, [sp, #0x70]
0x1008ed710: stp      x20, x19, [sp, #0x80]
0x1008ed714: stp      x29, x30, [sp, #0x90]
0x1008ed718: add      x29, sp, #0x90
0x1008ed71c: mov      x20, x4
0x1008ed720: mov      x21, x3
0x1008ed724: mov      x28, x2
0x1008ed728: mov      x22, x1
0x1008ed72c: ldp      x26, x27, [x1]
0x1008ed730: subs     x25, x27, x26
0x1008ed734: asr      x23, x25, #3
0x1008ed738: add      x8, x23, x25, asr #2
0x1008ed73c: str      x8, [sp, #0x10]
0x1008ed740: lsr      x24, x8, #0x3d
0x1008ed744: add      x8, x23, x23, lsl #1
0x1008ed748: str      x0, [sp, #0x20]
0x1008ed74c: str      x8, [sp, #8]
0x1008ed750: b.eq     #0x1008ed778
0x1008ed754: cbnz     x24, #0x1008eded0
0x1008ed758: lsl      x19, x8, #3
0x1008ed75c: mov      x0, x19
0x1008ed760: bl       #0x10097970c
0x1008ed764: str      x0, [sp, #0x18]
0x1008ed768: mov      x1, x19
0x1008ed76c: bl       #0x10097982c
0x1008ed770: ldr      x19, [sp, #0x20]
0x1008ed774: b        #0x1008ed780
0x1008ed778: mov      x19, x0
0x1008ed77c: str      xzr, [sp, #0x18]
0x1008ed780: ldr      x0, [x19]
0x1008ed784: mov      x1, x23
0x1008ed788: mov      w2, #3
0x1008ed78c: bl       #0x1008fbc40
0x1008ed790: mov      v8.16b, v0.16b
0x1008ed794: ldr      x8, [x19]
0x1008ed798: add      x0, x8, #8
0x1008ed79c: mov      x1, x23
0x1008ed7a0: mov      w2, #3
0x1008ed7a4: bl       #0x1008fbc40
0x1008ed7a8: mov      v9.16b, v0.16b
0x1008ed7ac: ldr      x8, [x19]
0x1008ed7b0: add      x0, x8, #0x10
0x1008ed7b4: mov      x1, x23
0x1008ed7b8: mov      w2, #3
0x1008ed7bc: bl       #0x1008fbc40
0x1008ed7c0: cmp      x27, x26
0x1008ed7c4: b.eq     #0x1008ed8fc
0x1008ed7c8: ldr      x8, [x19]
0x1008ed7cc: add      x8, x8, #0x10
0x1008ed7d0: ldr      x9, [sp, #0x18]
0x1008ed7d4: add      x9, x9, #8
0x1008ed7d8: mov      x10, x23
0x1008ed7dc: b        #0x1008ed810
0x1008ed7e0: fsub     d1, d8, d1
0x1008ed7e4: stur     d1, [x9, #-8]
0x1008ed7e8: ldur     d1, [x8, #-8]
0x1008ed7ec: fsub     d1, d9, d1
0x1008ed7f0: str      d1, [x9]
0x1008ed7f4: ldr      d1, [x8]
0x1008ed7f8: fsub     d1, d0, d1
0x1008ed7fc: str      d1, [x9, #8]
0x1008ed800: add      x8, x8, #0x18
0x1008ed804: add      x9, x9, #0x18
0x1008ed808: subs     x10, x10, #1
0x1008ed80c: b.eq     #0x1008ed82c
0x1008ed810: ldur     d1, [x8, #-0x10]
0x1008ed814: tbnz     w21, #0, #0x1008ed7e0
0x1008ed818: stur     d1, [x9, #-8]
0x1008ed81c: ldur     d1, [x8, #-8]
0x1008ed820: str      d1, [x9]
0x1008ed824: ldr      d1, [x8]
0x1008ed828: b        #0x1008ed7fc
0x1008ed82c: cbnz     x24, #0x1008eded4
0x1008ed830: ldr      x8, [sp, #8]
0x1008ed834: lsl      x19, x8, #3
0x1008ed838: mov      x0, x19
0x1008ed83c: bl       #0x10097970c
0x1008ed840: mov      x24, x0
0x1008ed844: mov      x1, x19
0x1008ed848: bl       #0x10097982c
0x1008ed84c: ldr      x8, [x22]
0x1008ed850: ldp      d0, d1, [x28]
0x1008ed854: ldp      d2, d3, [x28, #0x30]
0x1008ed858: ldp      d5, d4, [x28, #0x10]
0x1008ed85c: ldp      d6, d7, [x28, #0x20]
0x1008ed860: ldr      d16, [x28, #0x40]
0x1008ed864: cmp      x23, #0x10
0x1008ed868: b.hs     #0x1008ed964
0x1008ed86c: mov      x9, #0
0x1008ed870: ldr      x28, [sp, #0x18]
0x1008ed874: sub      x10, x23, x9
0x1008ed878: add      x8, x8, x9, lsl #3
0x1008ed87c: add      x9, x9, x9, lsl #1
0x1008ed880: lsl      x11, x9, #3
0x1008ed884: add      x9, x11, x28
0x1008ed888: add      x9, x9, #0x10
0x1008ed88c: add      x11, x11, x24
0x1008ed890: add      x11, x11, #8
0x1008ed894: fmov     d17, xzr
0x1008ed898: ldp      d18, d19, [x9, #-0x10]
0x1008ed89c: fmadd    d20, d18, d0, d17
0x1008ed8a0: fmadd    d20, d19, d4, d20
0x1008ed8a4: ldr      d21, [x9], #0x18
0x1008ed8a8: fmadd    d20, d21, d2, d20
0x1008ed8ac: ldr      d22, [x8]
0x1008ed8b0: fsub     d20, d22, d20
0x1008ed8b4: stur     d20, [x11, #-8]
0x1008ed8b8: fmadd    d20, d18, d1, d17
0x1008ed8bc: fmadd    d20, d19, d6, d20
0x1008ed8c0: fmadd    d20, d21, d3, d20
0x1008ed8c4: ldr      d22, [x8]
0x1008ed8c8: fsub     d20, d22, d20
0x1008ed8cc: str      d20, [x11]
0x1008ed8d0: fmadd    d18, d18, d5, d17
0x1008ed8d4: fmadd    d18, d19, d7, d18
0x1008ed8d8: ldr      d19, [x8], #8
0x1008ed8dc: fmadd    d18, d21, d16, d18
0x1008ed8e0: fsub     d18, d19, d18
0x1008ed8e4: str      d18, [x11, #8]
0x1008ed8e8: add      x11, x11, #0x18
0x1008ed8ec: subs     x10, x10, #1
0x1008ed8f0: b.ne     #0x1008ed898
0x1008ed8f4: ldr      x19, [sp, #0x20]
0x1008ed8f8: b        #0x1008ed904
0x1008ed8fc: mov      x24, #0
0x1008ed900: ldr      x28, [sp, #0x18]
0x1008ed904: str      xzr, [sp, #0x28]
0x1008ed908: add      x2, sp, #0x28
0x1008ed90c: mov      x0, x20
0x1008ed910: ldr      x1, [sp, #0x10]
0x1008ed914: bl       #0x1008e7774
0x1008ed918: cmp      x27, x26
0x1008ed91c: b.eq     #0x1008ede94
0x1008ed920: lsr      x8, x23, #0x3d
0x1008ed924: cbnz     x8, #0x1008ededc
0x1008ed928: mov      x0, x25
0x1008ed92c: bl       #0x10097970c
0x1008ed930: mov      x27, x0
0x1008ed934: mov      x1, x25
0x1008ed938: bl       #0x10097982c
0x1008ed93c: mov      x0, x25
0x1008ed940: bl       #0x10097970c
0x1008ed944: mov      x28, x0
0x1008ed948: mov      x1, x25
0x1008ed94c: bl       #0x10097982c
0x1008ed950: ldr      x9, [x19]
0x1008ed954: cmp      x23, #0x12
0x1008ed958: b.hi     #0x1008eda94
0x1008ed95c: mov      x8, #0
0x1008ed960: b        #0x1008edb50
0x1008ed964: mov      x9, #0
0x1008ed968: sub      x11, x23, #1
0x1008ed96c: mov      w10, #0x18
0x1008ed970: umulh    x10, x11, x10
0x1008ed974: cmp      xzr, x10
0x1008ed978: cset     w10, ne
0x1008ed97c: add      x11, x11, x11, lsl #1
0x1008ed980: lsl      x11, x11, #3
0x1008ed984: add      x12, x24, x11
0x1008ed988: cmp      x12, x24
0x1008ed98c: ldr      x28, [sp, #0x18]
0x1008ed990: b.lo     #0x1008ed874
0x1008ed994: tbnz     w10, #0, #0x1008ed874
0x1008ed998: add      x12, x24, #8
0x1008ed99c: add      x13, x12, x11
0x1008ed9a0: cmp      x13, x12
0x1008ed9a4: b.lo     #0x1008ed874
0x1008ed9a8: tbnz     w10, #0, #0x1008ed874
0x1008ed9ac: add      x12, x24, #0x10
0x1008ed9b0: add      x13, x12, x11
0x1008ed9b4: cmp      x13, x12
0x1008ed9b8: b.lo     #0x1008ed874
0x1008ed9bc: tbnz     w10, #0, #0x1008ed874
0x1008ed9c0: add      x12, x28, x11
0x1008ed9c4: cmp      x12, x28
0x1008ed9c8: b.lo     #0x1008ed874
0x1008ed9cc: tbnz     w10, #0, #0x1008ed874
0x1008ed9d0: add      x12, x28, #8
0x1008ed9d4: add      x13, x12, x11
0x1008ed9d8: cmp      x13, x12
0x1008ed9dc: b.lo     #0x1008ed874
0x1008ed9e0: tbnz     w10, #0, #0x1008ed874
0x1008ed9e4: add      x12, x28, #0x10
0x1008ed9e8: add      x11, x12, x11
0x1008ed9ec: cmp      x11, x12
0x1008ed9f0: b.lo     #0x1008ed874
0x1008ed9f4: tbnz     w10, #0, #0x1008ed874
0x1008ed9f8: mov      x9, #0
0x1008ed9fc: add      x11, x8, x25
0x1008eda00: add      x12, x24, x19
0x1008eda04: add      x10, x28, x19
0x1008eda08: cmp      x24, x10
0x1008eda0c: ccmp     x28, x12, #2, lo
0x1008eda10: cset     w10, lo
0x1008eda14: cmp      x24, x11
0x1008eda18: ccmp     x8, x12, #2, lo
0x1008eda1c: b.lo     #0x1008ed874
0x1008eda20: tbnz     w10, #0, #0x1008ed874
0x1008eda24: and      x9, x23, #0xfffffffffffffffe
0x1008eda28: mov      x10, x28
0x1008eda2c: mov      x11, x24
0x1008eda30: mov      x12, x8
0x1008eda34: mov      x13, x9
0x1008eda38: ld3      {v17.2d, v18.2d, v19.2d}, [x10], #48
0x1008eda3c: movi     v20.16b, #0
0x1008eda40: fmla     v20.2d, v17.2d, v0.d[0]
0x1008eda44: fmla     v20.2d, v18.2d, v4.d[0]
0x1008eda48: fmla     v20.2d, v19.2d, v2.d[0]
0x1008eda4c: ldr      q21, [x12], #0x10
0x1008eda50: fsub     v22.2d, v21.2d, v20.2d
0x1008eda54: movi     v20.16b, #0
0x1008eda58: fmla     v20.2d, v17.2d, v1.d[0]
0x1008eda5c: fmla     v20.2d, v18.2d, v6.d[0]
0x1008eda60: fmla     v20.2d, v19.2d, v3.d[0]
0x1008eda64: fsub     v23.2d, v21.2d, v20.2d
0x1008eda68: movi     v20.16b, #0
0x1008eda6c: fmla     v20.2d, v17.2d, v5.d[0]
0x1008eda70: fmla     v20.2d, v18.2d, v7.d[0]
0x1008eda74: fmla     v20.2d, v19.2d, v16.d[0]
0x1008eda78: fsub     v24.2d, v21.2d, v20.2d
0x1008eda7c: st3      {v22.2d, v23.2d, v24.2d}, [x11], #48
0x1008eda80: subs     x13, x13, #2
0x1008eda84: b.ne     #0x1008eda38
0x1008eda88: cmp      x23, x9
0x1008eda8c: b.ne     #0x1008ed874
0x1008eda90: b        #0x1008ed8f4
0x1008eda94: mov      x8, #0
0x1008eda98: add      x14, x27, x25
0x1008eda9c: add      x15, x28, x25
0x1008edaa0: mov      w10, #0x18
0x1008edaa4: mov      x11, #-0x10
0x1008edaa8: madd     x10, x23, x10, x11
0x1008edaac: add      x12, x24, x10
0x1008edab0: add      x13, x9, x10
0x1008edab4: cmp      x27, x12
0x1008edab8: ccmp     x24, x14, #2, lo
0x1008edabc: cset     w10, lo
0x1008edac0: cmp      x27, x13
0x1008edac4: ccmp     x9, x14, #2, lo
0x1008edac8: cset     w11, lo
0x1008edacc: cmp      x28, x12
0x1008edad0: ccmp     x24, x15, #2, lo
0x1008edad4: cset     w12, lo
0x1008edad8: cmp      x28, x13
0x1008edadc: ccmp     x9, x15, #2, lo
0x1008edae0: cset     w13, lo
0x1008edae4: cmp      x28, x14
0x1008edae8: ccmp     x27, x15, #2, lo
0x1008edaec: b.lo     #0x1008edb50
0x1008edaf0: tbnz     w10, #0, #0x1008edb50
0x1008edaf4: tbnz     w11, #0, #0x1008edb50
0x1008edaf8: tbnz     w12, #0, #0x1008edb50
0x1008edafc: tbnz     w13, #0, #0x1008edb50
0x1008edb00: tst      x25, #8
0x1008edb04: mov      x8, #-2
0x1008edb08: cinc     x8, x8, ne
0x1008edb0c: add      x8, x8, x23
0x1008edb10: mov      x10, x24
0x1008edb14: mov      x11, x9
0x1008edb18: mov      x12, x27
0x1008edb1c: mov      x13, x28
0x1008edb20: mov      x14, x8
0x1008edb24: ld3      {v0.2d, v1.2d, v2.2d}, [x10], #48
0x1008edb28: str      q0, [x12], #0x10
0x1008edb2c: ld3      {v0.2d, v1.2d, v2.2d}, [x11], #48
0x1008edb30: fneg     v3.2d, v0.2d
0x1008edb34: cmp      w21, #0
0x1008edb38: csetm    x15, ne
0x1008edb3c: dup      v4.2d, x15
0x1008edb40: bit      v0.16b, v3.16b, v4.16b
0x1008edb44: str      q0, [x13], #0x10
0x1008edb48: subs     x14, x14, #2
0x1008edb4c: b.ne     #0x1008edb24
0x1008edb50: add      x10, x8, x8, lsl #1
0x1008edb54: lsl      x11, x10, #3
0x1008edb58: add      x10, x24, x11
0x1008edb5c: add      x9, x9, x11
0x1008edb60: ldr      d0, [x10], #0x18
0x1008edb64: str      d0, [x27, x8, lsl #3]
0x1008edb68: ldr      d0, [x9], #0x18
0x1008edb6c: fneg     d1, d0
0x1008edb70: cmp      w21, #0
0x1008edb74: fcsel    d0, d1, d0, ne
0x1008edb78: str      d0, [x28, x8, lsl #3]
0x1008edb7c: add      x8, x8, #1
0x1008edb80: cmp      x23, x8
0x1008edb84: b.ne     #0x1008edb60
0x1008edb88: mov      x19, #0
0x1008edb8c: mov      x26, #0
0x1008edb90: ldr      x8, [x22]
0x1008edb94: ldr      d0, [x8, x26, lsl #3]
0x1008edb98: mov      x0, x27
0x1008edb9c: mov      x1, x28
0x1008edba0: mov      x2, x23
0x1008edba4: bl       #0x1008fbcd0
0x1008edba8: fneg     d1, d0
0x1008edbac: cmp      w21, #0
0x1008edbb0: fcsel    d0, d1, d0, ne
0x1008edbb4: ldr      x8, [x20]
0x1008edbb8: str      d0, [x8, x19]
0x1008edbbc: add      x26, x26, #1
0x1008edbc0: add      x19, x19, #0x18
0x1008edbc4: cmp      x23, x26
0x1008edbc8: b.ne     #0x1008edb90
0x1008edbcc: ldr      x8, [sp, #0x20]
0x1008edbd0: ldr      x9, [x8]
0x1008edbd4: cmp      x23, #0x11
0x1008edbd8: b.hs     #0x1008edbe4
0x1008edbdc: mov      x8, #0
0x1008edbe0: b        #0x1008edca8
0x1008edbe4: mov      x8, #0
0x1008edbe8: add      x14, x27, x25
0x1008edbec: add      x12, x24, #8
0x1008edbf0: mov      w10, #0x18
0x1008edbf4: mov      x11, #-8
0x1008edbf8: madd     x10, x23, x10, x11
0x1008edbfc: add      x13, x24, x10
0x1008edc00: add      x15, x9, #8
0x1008edc04: add      x16, x9, x10
0x1008edc08: cmp      x27, x13
0x1008edc0c: ccmp     x12, x14, #2, lo
0x1008edc10: cset     w10, lo
0x1008edc14: cmp      x27, x16
0x1008edc18: ccmp     x15, x14, #2, lo
0x1008edc1c: cset     w11, lo
0x1008edc20: cmp      x28, x13
0x1008edc24: add      x17, x28, x25
0x1008edc28: ccmp     x12, x17, #2, lo
0x1008edc2c: cset     w12, lo
0x1008edc30: cmp      x28, x16
0x1008edc34: ccmp     x15, x17, #2, lo
0x1008edc38: cset     w13, lo
0x1008edc3c: cmp      x28, x14
0x1008edc40: ccmp     x27, x17, #2, lo
0x1008edc44: b.lo     #0x1008edca8
0x1008edc48: tbnz     w10, #0, #0x1008edca8
0x1008edc4c: tbnz     w11, #0, #0x1008edca8
0x1008edc50: tbnz     w12, #0, #0x1008edca8
0x1008edc54: tbnz     w13, #0, #0x1008edca8
0x1008edc58: tst      x25, #8
0x1008edc5c: mov      x8, #-2
0x1008edc60: cinc     x8, x8, ne
0x1008edc64: add      x8, x8, x23
0x1008edc68: add      x10, x24, #8
0x1008edc6c: add      x11, x9, #8
0x1008edc70: mov      x12, x27
0x1008edc74: mov      x13, x28
0x1008edc78: mov      x14, x8
0x1008edc7c: ld3      {v0.2d, v1.2d, v2.2d}, [x10], #48
0x1008edc80: str      q0, [x12], #0x10
0x1008edc84: ld3      {v0.2d, v1.2d, v2.2d}, [x11], #48
0x1008edc88: fneg     v3.2d, v0.2d
0x1008edc8c: cmp      w21, #0
0x1008edc90: csetm    x15, ne
0x1008edc94: dup      v4.2d, x15
0x1008edc98: bit      v0.16b, v3.16b, v4.16b
0x1008edc9c: str      q0, [x13], #0x10
0x1008edca0: subs     x14, x14, #2
0x1008edca4: b.ne     #0x1008edc7c
0x1008edca8: mov      w10, #0x18
0x1008edcac: mov      x11, #8
0x1008edcb0: madd     x10, x8, x10, x11
0x1008edcb4: add      x9, x9, x10
0x1008edcb8: add      x10, x24, x10
0x1008edcbc: ldr      d0, [x10], #0x18
0x1008edcc0: str      d0, [x27, x8, lsl #3]
0x1008edcc4: ldr      d0, [x9], #0x18
0x1008edcc8: fneg     d1, d0
0x1008edccc: cmp      w21, #0
0x1008edcd0: fcsel    d0, d1, d0, ne
0x1008edcd4: str      d0, [x28, x8, lsl #3]
0x1008edcd8: add      x8, x8, #1
0x1008edcdc: cmp      x23, x8
0x1008edce0: b.ne     #0x1008edcbc
0x1008edce4: mov      x19, #0
0x1008edce8: mov      w26, #8
0x1008edcec: ldr      x8, [x22]
0x1008edcf0: ldr      d0, [x8, x19, lsl #3]
0x1008edcf4: mov      x0, x27
0x1008edcf8: mov      x1, x28
0x1008edcfc: mov      x2, x23
0x1008edd00: bl       #0x1008fbcd0
0x1008edd04: fneg     d1, d0
0x1008edd08: cmp      w21, #0
0x1008edd0c: fcsel    d0, d1, d0, ne
0x1008edd10: ldr      x8, [x20]
0x1008edd14: str      d0, [x8, x26]
0x1008edd18: add      x19, x19, #1
0x1008edd1c: add      x26, x26, #0x18
0x1008edd20: cmp      x23, x19
0x1008edd24: b.ne     #0x1008edcec
0x1008edd28: ldr      x8, [sp, #0x20]
0x1008edd2c: ldr      x9, [x8]
0x1008edd30: cmp      x23, #0x11
0x1008edd34: b.hs     #0x1008edd40
0x1008edd38: mov      x8, #0
0x1008edd3c: b        #0x1008ede00
0x1008edd40: mov      x8, #0
0x1008edd44: add      x14, x27, x25
0x1008edd48: add      x12, x24, #0x10
0x1008edd4c: ldr      x10, [sp, #8]
0x1008edd50: lsl      x10, x10, #3
0x1008edd54: add      x13, x24, x10
0x1008edd58: add      x15, x9, #0x10
0x1008edd5c: add      x16, x9, x10
0x1008edd60: cmp      x27, x13
0x1008edd64: ccmp     x12, x14, #2, lo
0x1008edd68: cset     w10, lo
0x1008edd6c: cmp      x27, x16
0x1008edd70: ccmp     x15, x14, #2, lo
0x1008edd74: cset     w11, lo
0x1008edd78: cmp      x28, x13
0x1008edd7c: add      x17, x28, x25
0x1008edd80: ccmp     x12, x17, #2, lo
0x1008edd84: cset     w12, lo
0x1008edd88: cmp      x28, x16
0x1008edd8c: ccmp     x15, x17, #2, lo
0x1008edd90: cset     w13, lo
0x1008edd94: cmp      x28, x14
0x1008edd98: ccmp     x27, x17, #2, lo
0x1008edd9c: b.lo     #0x1008ede00
0x1008edda0: tbnz     w10, #0, #0x1008ede00
0x1008edda4: tbnz     w11, #0, #0x1008ede00
0x1008edda8: tbnz     w12, #0, #0x1008ede00
0x1008eddac: tbnz     w13, #0, #0x1008ede00
0x1008eddb0: tst      x25, #8
0x1008eddb4: mov      x8, #-2
0x1008eddb8: cinc     x8, x8, ne
0x1008eddbc: add      x8, x8, x23
0x1008eddc0: add      x10, x9, #0x10
0x1008eddc4: add      x11, x24, #0x10
0x1008eddc8: mov      x12, x27
0x1008eddcc: mov      x13, x28
0x1008eddd0: mov      x14, x8
0x1008eddd4: ld3      {v0.2d, v1.2d, v2.2d}, [x11], #48
0x1008eddd8: str      q0, [x12], #0x10
0x1008edddc: ld3      {v0.2d, v1.2d, v2.2d}, [x10], #48
0x1008edde0: fneg     v3.2d, v0.2d
0x1008edde4: cmp      w21, #0
0x1008edde8: csetm    x15, ne
0x1008eddec: dup      v4.2d, x15
0x1008eddf0: bit      v0.16b, v3.16b, v4.16b
0x1008eddf4: str      q0, [x13], #0x10
0x1008eddf8: subs     x14, x14, #2
0x1008eddfc: b.ne     #0x1008eddd4
0x1008ede00: mov      w10, #0x18
0x1008ede04: mov      x11, #0x10
0x1008ede08: madd     x10, x8, x10, x11
0x1008ede0c: add      x9, x9, x10
0x1008ede10: add      x10, x24, x10
0x1008ede14: ldr      d0, [x10], #0x18
0x1008ede18: str      d0, [x27, x8, lsl #3]
0x1008ede1c: ldr      d0, [x9], #0x18
0x1008ede20: fneg     d1, d0
0x1008ede24: cmp      w21, #0
0x1008ede28: fcsel    d0, d1, d0, ne
0x1008ede2c: str      d0, [x28, x8, lsl #3]
0x1008ede30: add      x8, x8, #1
0x1008ede34: cmp      x23, x8
0x1008ede38: b.ne     #0x1008ede14
0x1008ede3c: mov      x19, #0
0x1008ede40: mov      w25, #0x10
0x1008ede44: ldr      x8, [x22]
0x1008ede48: ldr      d0, [x8, x19, lsl #3]
0x1008ede4c: mov      x0, x27
0x1008ede50: mov      x1, x28
0x1008ede54: mov      x2, x23
0x1008ede58: bl       #0x1008fbcd0
0x1008ede5c: fneg     d1, d0
0x1008ede60: cmp      w21, #0
0x1008ede64: fcsel    d0, d1, d0, ne
0x1008ede68: ldr      x8, [x20]
0x1008ede6c: str      d0, [x8, x25]
0x1008ede70: add      x19, x19, #1
0x1008ede74: add      x25, x25, #0x18
0x1008ede78: cmp      x23, x19
0x1008ede7c: b.ne     #0x1008ede44
0x1008ede80: mov      x0, x28
0x1008ede84: bl       #0x100979700
0x1008ede88: mov      x0, x27
0x1008ede8c: bl       #0x100979700
0x1008ede90: ldr      x28, [sp, #0x18]
0x1008ede94: cbz      x24, #0x1008edea0
0x1008ede98: mov      x0, x24
0x1008ede9c: bl       #0x100979700
0x1008edea0: cbz      x28, #0x1008edeac
0x1008edea4: mov      x0, x28
0x1008edea8: bl       #0x100979700
0x1008edeac: ldp      x29, x30, [sp, #0x90]
0x1008edeb0: ldp      x20, x19, [sp, #0x80]
0x1008edeb4: ldp      x22, x21, [sp, #0x70]
0x1008edeb8: ldp      x24, x23, [sp, #0x60]
0x1008edebc: ldp      x26, x25, [sp, #0x50]
0x1008edec0: ldp      x28, x27, [sp, #0x40]
0x1008edec4: ldp      d9, d8, [sp, #0x30]
0x1008edec8: add      sp, sp, #0xa0
0x1008edecc: ret      
0x1008eded0: bl       #0x1008e6248
0x1008eded4: bl       #0x1008e6248
0x1008eded8: b        #0x1008edee0
0x1008ededc: bl       #0x1008e6248
0x1008edee0: brk      #1
0x1008edee4: mov      x19, x0
0x1008edee8: b        #0x1008edf28
0x1008edeec: mov      x19, x0
0x1008edef0: b        #0x1008edf30
0x1008edef4: mov      x19, x0
0x1008edef8: b        #0x1008edf30
0x1008edefc: mov      x19, x0
0x1008edf00: b        #0x1008edf54
0x1008edf04: mov      x19, x0
0x1008edf08: ldr      x8, [sp, #0x18]
0x1008edf0c: cbz      x8, #0x1008edf3c
0x1008edf10: b        #0x1008edf54
0x1008edf14: b        #0x1008edf1c
0x1008edf18: b        #0x1008edf1c
0x1008edf1c: mov      x19, x0
0x1008edf20: mov      x0, x28
0x1008edf24: bl       #0x100979700
0x1008edf28: mov      x0, x27
0x1008edf2c: bl       #0x100979700
0x1008edf30: cbnz     x24, #0x1008edf44
0x1008edf34: ldr      x8, [sp, #0x18]
0x1008edf38: cbnz     x8, #0x1008edf54
0x1008edf3c: mov      x0, x19
0x1008edf40: bl       #0x10097958c
0x1008edf44: mov      x0, x24
0x1008edf48: bl       #0x100979700
0x1008edf4c: ldr      x8, [sp, #0x18]
0x1008edf50: cbz      x8, #0x1008edf3c
0x1008edf54: ldr      x0, [sp, #0x18]
0x1008edf58: bl       #0x100979700
0x1008edf5c: mov      x0, x19
0x1008edf60: bl       #0x10097958c
