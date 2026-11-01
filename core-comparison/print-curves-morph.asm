FUNCTION 0x1008edf64 0x1008eec84
0x1008edf64: stp      d15, d14, [sp, #-0xa0]!
0x1008edf68: stp      d13, d12, [sp, #0x10]
0x1008edf6c: stp      d11, d10, [sp, #0x20]
0x1008edf70: stp      d9, d8, [sp, #0x30]
0x1008edf74: stp      x28, x27, [sp, #0x40]
0x1008edf78: stp      x26, x25, [sp, #0x50]
0x1008edf7c: stp      x24, x23, [sp, #0x60]
0x1008edf80: stp      x22, x21, [sp, #0x70]
0x1008edf84: stp      x20, x19, [sp, #0x80]
0x1008edf88: stp      x29, x30, [sp, #0x90]
0x1008edf8c: add      x29, sp, #0x90
0x1008edf90: sub      sp, sp, #0x1a0
0x1008edf94: mov      x23, x5
0x1008edf98: sturb    w3, [x29, #-0xa1]
0x1008edf9c: ldp      x10, x9, [x0]
0x1008edfa0: str      x0, [sp, #0x68]
0x1008edfa4: ldp      x20, x8, [x1, #0x18]
0x1008edfa8: stur     x8, [x29, #-0xb0]
0x1008edfac: cmp      x20, #0
0x1008edfb0: ccmp     x8, #0, #4, ne
0x1008edfb4: b.ne     #0x1008edfd0
0x1008edfb8: adrp     x1, #0x100b22000
0x1008edfbc: add      x1, x1, #0xafd
0x1008edfc0: mov      x0, x23
0x1008edfc4: bl       #0x1008e625c
0x1008edfc8: mov      w0, #0
0x1008edfcc: b        #0x1008eeb68
0x1008edfd0: mov      x19, x4
0x1008edfd4: mov      x27, x2
0x1008edfd8: mov      x26, x1
0x1008edfdc: stp      x10, x9, [sp, #0xc0]
0x1008edfe0: sub      x8, x9, x10
0x1008edfe4: asr      x21, x8, #3
0x1008edfe8: mul      x1, x21, x20
0x1008edfec: stur     xzr, [x29, #-0xc8]
0x1008edff0: sub      x2, x29, #0xc8
0x1008edff4: mov      x0, x4
0x1008edff8: bl       #0x1008e7774
0x1008edffc: ldrb     w8, [x27]
0x1008ee000: str      x20, [sp, #0x88]
0x1008ee004: tbz      w8, #0, #0x1008ee070
0x1008ee008: mov      x8, x27
0x1008ee00c: ldr      d0, [x8, #0x28]!
0x1008ee010: ldp      q1, q2, [x8, #-0x20]
0x1008ee014: str      x8, [sp, #0x28]
0x1008ee018: fcmgt    v2.2d, v2.2d, #0.0
0x1008ee01c: fcmgt    v1.2d, v1.2d, #0.0
0x1008ee020: uzp1     v1.4s, v1.4s, v2.4s
0x1008ee024: mvn      v1.16b, v1.16b
0x1008ee028: umaxv    s1, v1.4s
0x1008ee02c: fmov     w8, s1
0x1008ee030: tbnz     w8, #0, #0x1008ee214
0x1008ee034: fcmp     d0, #0.0
0x1008ee038: b.le     #0x1008ee214
0x1008ee03c: ldr      x8, [sp, #0x28]
0x1008ee040: ldr      d0, [x8, #8]!
0x1008ee044: str      x8, [sp, #8]
0x1008ee048: fcmp     d0, #0.0
0x1008ee04c: b.le     #0x1008ee214
0x1008ee050: ldr      d0, [x27, #0x38]
0x1008ee054: fcmp     d0, #0.0
0x1008ee058: fmov     d14, #1.00000000
0x1008ee05c: fccmp    d0, d14, #2, ge
0x1008ee060: b.ls     #0x1008ee220
0x1008ee064: adrp     x1, #0x100b22000
0x1008ee068: add      x1, x1, #0xb6f
0x1008ee06c: b        #0x1008edfc0
0x1008ee070: ldr      x8, [sp, #0x68]
0x1008ee074: ldr      x8, [x8]
0x1008ee078: stp      xzr, x8, [sp, #0x98]
0x1008ee07c: ldur     x10, [x29, #-0xb0]
0x1008ee080: ldr      x9, [x26, #0x28]
0x1008ee084: ldr      x8, [x26, #0x40]
0x1008ee088: stp      x8, x9, [sp, #0x78]
0x1008ee08c: ldr      x8, [x26, #0x58]
0x1008ee090: str      x8, [sp, #0x70]
0x1008ee094: ldurb    w25, [x29, #-0xa1]
0x1008ee098: ldr      x8, [x19]
0x1008ee09c: cmp      x21, #3
0x1008ee0a0: ccmp     x20, #1, #0, hi
0x1008ee0a4: cset     w9, eq
0x1008ee0a8: str      w9, [sp, #0x68]
0x1008ee0ac: and      x9, x21, #0xfffffffffffffffc
0x1008ee0b0: str      x9, [sp, #0x60]
0x1008ee0b4: stp      x10, x8, [sp, #0xa8]
0x1008ee0b8: add      x13, x8, #0x10
0x1008ee0bc: adrp     x8, #0x1009c1000
0x1008ee0c0: ldr      d8, [x8, #0x3f8]
0x1008ee0c4: lsl      x23, x20, #3
0x1008ee0c8: fmov     d9, #0.50000000
0x1008ee0cc: movi     v0.16b, #0
0x1008ee0d0: ldp      x11, x10, [sp, #0xc0]
0x1008ee0d4: b        #0x1008ee104
0x1008ee0d8: ldp      x13, x9, [sp, #0x90]
0x1008ee0dc: add      x9, x9, #1
0x1008ee0e0: add      x13, x13, #8
0x1008ee0e4: ldr      x8, [sp, #0xb0]
0x1008ee0e8: add      x8, x8, #8
0x1008ee0ec: str      x8, [sp, #0xb0]
0x1008ee0f0: ldr      x8, [sp, #0x88]
0x1008ee0f4: str      x9, [sp, #0x98]
0x1008ee0f8: cmp      x9, x8
0x1008ee0fc: movi     v0.16b, #0
0x1008ee100: b.eq     #0x1008eeb64
0x1008ee104: cmp      x10, x11
0x1008ee108: b.eq     #0x1008ee160
0x1008ee10c: ldr      w8, [sp, #0x68]
0x1008ee110: cbz      w8, #0x1008ee140
0x1008ee114: mov      x8, x13
0x1008ee118: ldr      x9, [sp, #0x60]
0x1008ee11c: stp      q0, q0, [x8, #-0x10]
0x1008ee120: add      x8, x8, #0x20
0x1008ee124: subs     x9, x9, #4
0x1008ee128: b.ne     #0x1008ee11c
0x1008ee12c: ldr      x8, [sp, #0x60]
0x1008ee130: mov      x9, x8
0x1008ee134: cmp      x21, x8
0x1008ee138: b.ne     #0x1008ee144
0x1008ee13c: b        #0x1008ee160
0x1008ee140: mov      x9, #0
0x1008ee144: sub      x8, x21, x9
0x1008ee148: ldr      x12, [sp, #0xb0]
0x1008ee14c: madd     x9, x23, x9, x12
0x1008ee150: str      xzr, [x9]
0x1008ee154: add      x9, x9, x23
0x1008ee158: subs     x8, x8, #1
0x1008ee15c: b.ne     #0x1008ee150
0x1008ee160: str      x13, [sp, #0x90]
0x1008ee164: ldr      x8, [sp, #0xa8]
0x1008ee168: cbz      x8, #0x1008ee0d8
0x1008ee16c: mov      x24, #0
0x1008ee170: ldr      x8, [sp, #0x98]
0x1008ee174: ldr      x9, [sp, #0xa8]
0x1008ee178: mul      x8, x9, x8
0x1008ee17c: lsl      x8, x8, #3
0x1008ee180: ldr      x9, [sp, #0x80]
0x1008ee184: add      x27, x9, x8
0x1008ee188: ldr      x9, [sp, #0x78]
0x1008ee18c: add      x28, x9, x8
0x1008ee190: ldr      x9, [sp, #0x70]
0x1008ee194: add      x22, x9, x8
0x1008ee198: b        #0x1008ee1b4
0x1008ee19c: add      x24, x24, #1
0x1008ee1a0: ldr      x8, [sp, #0xa8]
0x1008ee1a4: cmp      x24, x8
0x1008ee1a8: ldp      x11, x10, [sp, #0xc0]
0x1008ee1ac: mov      x21, x19
0x1008ee1b0: b.eq     #0x1008ee0d8
0x1008ee1b4: ldr      x20, [sp, #0xa0]
0x1008ee1b8: ldr      x26, [sp, #0xb0]
0x1008ee1bc: mov      x19, x21
0x1008ee1c0: cmp      x10, x11
0x1008ee1c4: b.eq     #0x1008ee19c
0x1008ee1c8: ldr      d0, [x20], #8
0x1008ee1cc: ldr      d1, [x27, x24, lsl #3]
0x1008ee1d0: fsub     d0, d0, d1
0x1008ee1d4: ldr      d1, [x22, x24, lsl #3]
0x1008ee1d8: fdiv     d0, d0, d1
0x1008ee1dc: ldr      d10, [x28, x24, lsl #3]
0x1008ee1e0: fneg     d1, d0
0x1008ee1e4: cmp      w25, #0
0x1008ee1e8: fcsel    d0, d1, d0, ne
0x1008ee1ec: fmul     d0, d0, d8
0x1008ee1f0: bl       #0x10097997c
0x1008ee1f4: fmul     d0, d0, d9
0x1008ee1f8: ldr      d1, [x26]
0x1008ee1fc: fmadd    d0, d10, d0, d1
0x1008ee200: str      d0, [x26]
0x1008ee204: add      x26, x26, x23
0x1008ee208: subs     x21, x21, #1
0x1008ee20c: b.ne     #0x1008ee1c8
0x1008ee210: b        #0x1008ee19c
0x1008ee214: adrp     x1, #0x100b22000
0x1008ee218: add      x1, x1, #0xb36
0x1008ee21c: b        #0x1008edfc0
0x1008ee220: str      x19, [sp, #0x40]
0x1008ee224: mov      x8, x21
0x1008ee228: mov      x21, #0
0x1008ee22c: mov      x23, #0
0x1008ee230: ldr      x9, [sp, #0x28]
0x1008ee234: sub      x9, x9, #8
0x1008ee238: str      x9, [sp, #0x50]
0x1008ee23c: cmp      x8, #3
0x1008ee240: ccmp     x20, #1, #0, hi
0x1008ee244: cset     w9, eq
0x1008ee248: str      w9, [sp, #0x1c]
0x1008ee24c: str      x8, [sp, #0x90]
0x1008ee250: and      x8, x8, #0xfffffffffffffffc
0x1008ee254: str      x8, [sp, #0x10]
0x1008ee258: lsl      x22, x20, #3
0x1008ee25c: mov      w8, #0x10
0x1008ee260: str      x8, [sp, #0x78]
0x1008ee264: adrp     x8, #0x100990000
0x1008ee268: ldr      d0, [x8, #0xbf8]
0x1008ee26c: str      d0, [sp, #0x48]
0x1008ee270: adrp     x8, #0x100991000
0x1008ee274: ldr      d0, [x8, #0xc58]
0x1008ee278: str      d0, [sp, #0x20]
0x1008ee27c: adrp     x8, #0x1009c1000
0x1008ee280: ldr      d0, [x8, #0x410]
0x1008ee284: str      d0, [sp, #0x60]
0x1008ee288: mov      x8, #0x3cc0000000000000
0x1008ee28c: str      x8, [sp, #0x58]
0x1008ee290: fmov     d15, #0.50000000
0x1008ee294: stp      x27, x26, [sp, #0x30]
0x1008ee298: b        #0x1008ee2b8
0x1008ee29c: add      x23, x23, #1
0x1008ee2a0: ldr      x8, [sp, #0x78]
0x1008ee2a4: add      x8, x8, #8
0x1008ee2a8: str      x8, [sp, #0x78]
0x1008ee2ac: add      x21, x21, #8
0x1008ee2b0: cmp      x23, x19
0x1008ee2b4: b.eq     #0x1008eeb64
0x1008ee2b8: ldur     x19, [x29, #-0xb0]
0x1008ee2bc: str      x23, [sp, #0x80]
0x1008ee2c0: mul      x20, x19, x23
0x1008ee2c4: ldr      x8, [x26, #0x28]
0x1008ee2c8: add      x25, x8, x20, lsl #3
0x1008ee2cc: stp      xzr, xzr, [x29, #-0xc0]
0x1008ee2d0: lsl      x24, x19, #3
0x1008ee2d4: stur     xzr, [x29, #-0xc8]
0x1008ee2d8: mov      x0, x24
0x1008ee2dc: bl       #0x10097970c
0x1008ee2e0: add      x23, x0, x24
0x1008ee2e4: stur     x0, [x29, #-0xc8]
0x1008ee2e8: stur     x23, [x29, #-0xb8]
0x1008ee2ec: mov      x1, x25
0x1008ee2f0: mov      x2, x24
0x1008ee2f4: bl       #0x100979ad8
0x1008ee2f8: stur     x23, [x29, #-0xc0]
0x1008ee2fc: ldr      x23, [x26, #0x40]
0x1008ee300: stur     xzr, [x29, #-0xd8]
0x1008ee304: mov      x0, x24
0x1008ee308: bl       #0x10097970c
0x1008ee30c: add      x1, x23, x20, lsl #3
0x1008ee310: add      x23, x0, x24
0x1008ee314: stur     x0, [x29, #-0xe0]
0x1008ee318: stur     x23, [x29, #-0xd0]
0x1008ee31c: mov      x2, x24
0x1008ee320: bl       #0x100979ad8
0x1008ee324: stur     x23, [x29, #-0xd8]
0x1008ee328: ldr      x23, [x26, #0x58]
0x1008ee32c: stur     xzr, [x29, #-0xf0]
0x1008ee330: mov      x0, x24
0x1008ee334: bl       #0x10097970c
0x1008ee338: add      x1, x23, x20, lsl #3
0x1008ee33c: add      x20, x0, x24
0x1008ee340: stur     x0, [x29, #-0xf8]
0x1008ee344: stur     x20, [x29, #-0xe8]
0x1008ee348: mov      x2, x24
0x1008ee34c: bl       #0x100979ad8
0x1008ee350: stur     x20, [x29, #-0xf0]
0x1008ee354: lsr      x8, x19, #0x3d
0x1008ee358: cbnz     x8, #0x1008eeb98
0x1008ee35c: mov      x0, x24
0x1008ee360: bl       #0x10097970c
0x1008ee364: ldr      x20, [sp, #0x80]
0x1008ee368: mov      x26, x0
0x1008ee36c: mov      x1, x24
0x1008ee370: bl       #0x10097982c
0x1008ee374: cmp      x19, #4
0x1008ee378: b.hs     #0x1008ee384
0x1008ee37c: mov      x8, #0
0x1008ee380: b        #0x1008ee3c4
0x1008ee384: and      x8, x19, #0x1ffffffffffffffc
0x1008ee388: adrp     x9, #0x100994000
0x1008ee38c: ldr      q0, [x9, #0x2d0]
0x1008ee390: add      x9, x26, #0x10
0x1008ee394: mov      x10, x8
0x1008ee398: mov      w11, #2
0x1008ee39c: mov      w12, #4
0x1008ee3a0: dup      v1.2d, x11
0x1008ee3a4: add      v1.2d, v0.2d, v1.2d
0x1008ee3a8: stp      q0, q1, [x9, #-0x10]
0x1008ee3ac: dup      v1.2d, x12
0x1008ee3b0: add      v0.2d, v0.2d, v1.2d
0x1008ee3b4: add      x9, x9, #0x20
0x1008ee3b8: subs     x10, x10, #4
0x1008ee3bc: b.ne     #0x1008ee3a0
0x1008ee3c0: b        #0x1008ee3cc
0x1008ee3c4: str      x8, [x26, x8, lsl #3]
0x1008ee3c8: add      x8, x8, #1
0x1008ee3cc: cmp      x19, x8
0x1008ee3d0: b.ne     #0x1008ee3c4
0x1008ee3d4: add      x19, x26, x24
0x1008ee3d8: sub      x8, x29, #0xc8
0x1008ee3dc: str      x8, [sp, #0x120]
0x1008ee3e0: asr      x8, x24, #3
0x1008ee3e4: clz      x8, x8
0x1008ee3e8: lsl      x8, x8, #1
0x1008ee3ec: add      x2, sp, #0x120
0x1008ee3f0: eor      x3, x8, #0x7e
0x1008ee3f4: mov      x0, x26
0x1008ee3f8: mov      x1, x19
0x1008ee3fc: mov      w4, #1
0x1008ee400: bl       #0x1008eeeb8
0x1008ee404: ldur     x28, [x29, #-0xb0]
0x1008ee408: ldr      x10, [x26]
0x1008ee40c: lsr      x8, x28, #1
0x1008ee410: ldr      x9, [x26, x8, lsl #3]
0x1008ee414: ldur     x8, [x19, #-8]
0x1008ee418: ldr      x11, [sp, #0x50]
0x1008ee41c: cbz      x20, #0x1008ee430
0x1008ee420: ldr      x11, [sp, #0x28]
0x1008ee424: cmp      x20, #1
0x1008ee428: b.eq     #0x1008ee430
0x1008ee42c: ldr      x11, [sp, #8]
0x1008ee430: ldr      d0, [x11]
0x1008ee434: ldp      d1, d2, [x27, #8]
0x1008ee438: fmul     d0, d0, d1
0x1008ee43c: fmul     d1, d0, d2
0x1008ee440: ldr      d2, [x27, #0x18]
0x1008ee444: fmul     d0, d0, d2
0x1008ee448: ldur     x24, [x29, #-0xf8]
0x1008ee44c: ldr      d2, [x24, x10, lsl #3]
0x1008ee450: fdiv     d2, d2, d1
0x1008ee454: ldr      d3, [sp, #0x48]
0x1008ee458: fcmp     d2, d3
0x1008ee45c: fcsel    d2, d3, d2, mi
0x1008ee460: str      d2, [x24, x10, lsl #3]
0x1008ee464: ldur     x19, [x29, #-0xc8]
0x1008ee468: ldr      d2, [x19, x10, lsl #3]
0x1008ee46c: fdiv     d1, d2, d1
0x1008ee470: str      d1, [x19, x10, lsl #3]
0x1008ee474: ldr      d1, [x24, x9, lsl #3]
0x1008ee478: fdiv     d1, d1, d0
0x1008ee47c: fcmp     d1, d3
0x1008ee480: fcsel    d1, d3, d1, mi
0x1008ee484: str      d1, [x24, x9, lsl #3]
0x1008ee488: ldr      d1, [x19, x9, lsl #3]
0x1008ee48c: fdiv     d1, d1, d0
0x1008ee490: str      d1, [x19, x9, lsl #3]
0x1008ee494: ldr      d1, [x24, x8, lsl #3]
0x1008ee498: fdiv     d1, d1, d0
0x1008ee49c: fcmp     d1, d3
0x1008ee4a0: fcsel    d1, d3, d1, mi
0x1008ee4a4: str      d1, [x24, x8, lsl #3]
0x1008ee4a8: ldr      d1, [x19, x8, lsl #3]
0x1008ee4ac: fdiv     d0, d1, d0
0x1008ee4b0: str      d0, [x19, x8, lsl #3]
0x1008ee4b4: stp      xzr, xzr, [sp, #0x120]
0x1008ee4b8: str      xzr, [sp, #0x130]
0x1008ee4bc: ldr      x11, [sp, #0xc8]
0x1008ee4c0: str      x26, [sp, #0x70]
0x1008ee4c4: cbz      x28, #0x1008ee610
0x1008ee4c8: lsr      x8, x28, #0x3d
0x1008ee4cc: cbnz     x8, #0x1008eeba0
0x1008ee4d0: lsl      x20, x28, #3
0x1008ee4d4: mov      x0, x20
0x1008ee4d8: bl       #0x10097970c
0x1008ee4dc: add      x8, x0, x28, lsl #3
0x1008ee4e0: str      x0, [sp, #0x120]
0x1008ee4e4: str      x8, [sp, #0x130]
0x1008ee4e8: add      x8, x0, x20
0x1008ee4ec: ldr      d0, [x27, #0x38]
0x1008ee4f0: sub      x10, x20, #8
0x1008ee4f4: mov      x9, x0
0x1008ee4f8: cmp      x10, #0x18
0x1008ee4fc: movi     v3.16b, #0
0x1008ee500: b.lo     #0x1008ee538
0x1008ee504: lsr      x9, x10, #3
0x1008ee508: add      x10, x9, #1
0x1008ee50c: and      x11, x10, #0x3ffffffffffffffc
0x1008ee510: add      x9, x0, x11, lsl #3
0x1008ee514: dup      v1.2d, v0.d[0]
0x1008ee518: add      x12, x0, #0x10
0x1008ee51c: mov      x13, x11
0x1008ee520: stp      q1, q1, [x12, #-0x10]
0x1008ee524: add      x12, x12, #0x20
0x1008ee528: subs     x13, x13, #4
0x1008ee52c: b.ne     #0x1008ee520
0x1008ee530: cmp      x10, x11
0x1008ee534: b.eq     #0x1008ee544
0x1008ee538: str      d0, [x9], #8
0x1008ee53c: cmp      x9, x8
0x1008ee540: b.ne     #0x1008ee538
0x1008ee544: str      x8, [sp, #0x128]
0x1008ee548: fcmp     d0, #0.0
0x1008ee54c: b.eq     #0x1008ee6e8
0x1008ee550: str      xzr, [sp, #0x118]
0x1008ee554: mov      x0, x20
0x1008ee558: bl       #0x10097970c
0x1008ee55c: mov      x27, x0
0x1008ee560: mov      x1, x20
0x1008ee564: bl       #0x10097982c
0x1008ee568: mov      x20, #0
0x1008ee56c: ldur     x23, [x29, #-0xe0]
0x1008ee570: ldurb    w25, [x29, #-0xa1]
0x1008ee574: fmov     d8, xzr
0x1008ee578: str      xzr, [sp, #0x110]
0x1008ee57c: b        #0x1008ee594
0x1008ee580: fmadd    d8, d9, d11, d8
0x1008ee584: str      d8, [sp, #0x110]
0x1008ee588: add      x20, x20, #1
0x1008ee58c: cmp      x28, x20
0x1008ee590: b.eq     #0x1008ee624
0x1008ee594: ldr      d10, [x27, x20, lsl #3]
0x1008ee598: ldr      d0, [x19, x20, lsl #3]
0x1008ee59c: fmov     d1, xzr
0x1008ee5a0: fsub     d0, d1, d0
0x1008ee5a4: ldr      d1, [x24, x20, lsl #3]
0x1008ee5a8: ldr      d9, [x23, x20, lsl #3]
0x1008ee5ac: fdiv     d0, d0, d1
0x1008ee5b0: fneg     d1, d0
0x1008ee5b4: cmp      w25, #0
0x1008ee5b8: fcsel    d12, d1, d0, ne
0x1008ee5bc: adrp     x8, #0x1009c1000
0x1008ee5c0: ldr      d0, [x8, #0x3f8]
0x1008ee5c4: fmul     d0, d12, d0
0x1008ee5c8: bl       #0x10097997c
0x1008ee5cc: fmul     d11, d0, d15
0x1008ee5d0: fcmp     d10, #0.0
0x1008ee5d4: b.le     #0x1008ee580
0x1008ee5d8: fsub     d13, d14, d10
0x1008ee5dc: adrp     x8, #0x1009c1000
0x1008ee5e0: ldr      d0, [x8, #0x400]
0x1008ee5e4: fdiv     d0, d12, d0
0x1008ee5e8: adrp     x8, #0x1009c1000
0x1008ee5ec: ldr      d1, [x8, #0x408]
0x1008ee5f0: fadd     d0, d0, d1
0x1008ee5f4: fneg     d0, d0
0x1008ee5f8: bl       #0x100979994
0x1008ee5fc: fneg     d0, d0
0x1008ee600: bl       #0x100979994
0x1008ee604: fmul     d0, d10, d0
0x1008ee608: fmadd    d11, d13, d11, d0
0x1008ee60c: b        #0x1008ee580
0x1008ee610: ldr      d0, [x27, #0x38]
0x1008ee614: fcmp     d0, #0.0
0x1008ee618: b.eq     #0x1008ee730
0x1008ee61c: mov      x27, #0
0x1008ee620: stp      xzr, xzr, [sp, #0x110]
0x1008ee624: sub      x8, x29, #0xb0
0x1008ee628: str      x8, [sp, #0xd0]
0x1008ee62c: sub      x8, x29, #0xc8
0x1008ee630: str      x8, [sp, #0xd8]
0x1008ee634: add      x8, sp, #0x118
0x1008ee638: str      x8, [sp, #0xe0]
0x1008ee63c: sub      x8, x29, #0xe0
0x1008ee640: str      x8, [sp, #0xe8]
0x1008ee644: sub      x8, x29, #0xf8
0x1008ee648: str      x8, [sp, #0xf0]
0x1008ee64c: sub      x8, x29, #0xa1
0x1008ee650: str      x8, [sp, #0xf8]
0x1008ee654: add      x8, sp, #0x120
0x1008ee658: str      x8, [sp, #0x100]
0x1008ee65c: add      x8, sp, #0x110
0x1008ee660: str      x8, [sp, #0x108]
0x1008ee664: add      x0, sp, #0xd0
0x1008ee668: fmov     d0, xzr
0x1008ee66c: bl       #0x1008eec84
0x1008ee670: fabs     d0, d0
0x1008ee674: fmov     d4, xzr
0x1008ee678: ldr      d1, [sp, #0x20]
0x1008ee67c: fcmp     d0, d1
0x1008ee680: b.le     #0x1008ee74c
0x1008ee684: fmov     d9, #-0.25000000
0x1008ee688: fmov     d8, #0.25000000
0x1008ee68c: mov      w19, #0xc
0x1008ee690: add      x0, sp, #0xd0
0x1008ee694: mov      v0.16b, v9.16b
0x1008ee698: bl       #0x1008eec84
0x1008ee69c: mov      v10.16b, v0.16b
0x1008ee6a0: add      x0, sp, #0xd0
0x1008ee6a4: mov      v0.16b, v8.16b
0x1008ee6a8: bl       #0x1008eec84
0x1008ee6ac: fcmp     d10, #0.0
0x1008ee6b0: b.eq     #0x1008ee73c
0x1008ee6b4: mov      v11.16b, v0.16b
0x1008ee6b8: fcmp     d0, #0.0
0x1008ee6bc: b.eq     #0x1008ee748
0x1008ee6c0: fmul     d0, d10, d11
0x1008ee6c4: fcmp     d0, #0.0
0x1008ee6c8: b.mi     #0x1008ee974
0x1008ee6cc: fadd     d9, d9, d9
0x1008ee6d0: fadd     d8, d8, d8
0x1008ee6d4: subs     w19, w19, #1
0x1008ee6d8: b.ne     #0x1008ee690
0x1008ee6dc: fmov     d4, xzr
0x1008ee6e0: cbnz     x27, #0x1008ee750
0x1008ee6e4: b        #0x1008ee760
0x1008ee6e8: fmov     d4, xzr
0x1008ee6ec: ldr      x11, [sp, #0xc8]
0x1008ee6f0: cmp      x28, #4
0x1008ee6f4: b.lo     #0x1008ee77c
0x1008ee6f8: and      x8, x28, #0xfffffffffffffffc
0x1008ee6fc: dup      v0.2d, v4.d[0]
0x1008ee700: add      x9, x19, #0x10
0x1008ee704: mov      x10, x8
0x1008ee708: ldp      q1, q2, [x9, #-0x10]
0x1008ee70c: fadd     v1.2d, v0.2d, v1.2d
0x1008ee710: fadd     v2.2d, v0.2d, v2.2d
0x1008ee714: stp      q1, q2, [x9, #-0x10]
0x1008ee718: add      x9, x9, #0x20
0x1008ee71c: subs     x10, x10, #4
0x1008ee720: b.ne     #0x1008ee708
0x1008ee724: cmp      x28, x8
0x1008ee728: b.ne     #0x1008ee780
0x1008ee72c: b        #0x1008ee798
0x1008ee730: mov      x28, #0
0x1008ee734: mov      w8, #1
0x1008ee738: b        #0x1008ee7a8
0x1008ee73c: mov      v4.16b, v9.16b
0x1008ee740: cbnz     x27, #0x1008ee750
0x1008ee744: b        #0x1008ee760
0x1008ee748: mov      v4.16b, v8.16b
0x1008ee74c: cbz      x27, #0x1008ee760
0x1008ee750: mov      x0, x27
0x1008ee754: str      q4, [sp, #0xb0]
0x1008ee758: bl       #0x100979700
0x1008ee75c: ldr      q4, [sp, #0xb0]
0x1008ee760: ldur     x28, [x29, #-0xb0]
0x1008ee764: ldur     x19, [x29, #-0xc8]
0x1008ee768: cbz      x28, #0x1008ee7a0
0x1008ee76c: ldr      x11, [sp, #0xc8]
0x1008ee770: movi     v3.16b, #0
0x1008ee774: cmp      x28, #4
0x1008ee778: b.hs     #0x1008ee6f8
0x1008ee77c: mov      x8, #0
0x1008ee780: ldr      d0, [x19, x8, lsl #3]
0x1008ee784: fadd     d0, d4, d0
0x1008ee788: str      d0, [x19, x8, lsl #3]
0x1008ee78c: add      x8, x8, #1
0x1008ee790: cmp      x28, x8
0x1008ee794: b.ne     #0x1008ee780
0x1008ee798: mov      w8, #0
0x1008ee79c: b        #0x1008ee7ac
0x1008ee7a0: mov      w8, #1
0x1008ee7a4: ldr      x11, [sp, #0xc8]
0x1008ee7a8: movi     v3.16b, #0
0x1008ee7ac: ldr      x9, [sp, #0x68]
0x1008ee7b0: ldr      x10, [x9]
0x1008ee7b4: ldur     x26, [x29, #-0xe0]
0x1008ee7b8: ldur     x27, [x29, #-0xf8]
0x1008ee7bc: ldurb    w20, [x29, #-0xa1]
0x1008ee7c0: ldr      x0, [sp, #0x120]
0x1008ee7c4: ldr      x9, [sp, #0x40]
0x1008ee7c8: ldr      x9, [x9]
0x1008ee7cc: stp      x10, x9, [sp, #0x98]
0x1008ee7d0: ldr      x9, [sp, #0xc0]
0x1008ee7d4: cmp      x11, x9
0x1008ee7d8: b.eq     #0x1008ee844
0x1008ee7dc: ldr      w9, [sp, #0x1c]
0x1008ee7e0: cbz      w9, #0x1008ee81c
0x1008ee7e4: ldr      x9, [sp, #0x78]
0x1008ee7e8: ldr      x10, [sp, #0xa0]
0x1008ee7ec: add      x9, x10, x9
0x1008ee7f0: ldr      x10, [sp, #0x10]
0x1008ee7f4: stp      q3, q3, [x9, #-0x10]
0x1008ee7f8: add      x9, x9, #0x20
0x1008ee7fc: subs     x10, x10, #4
0x1008ee800: b.ne     #0x1008ee7f4
0x1008ee804: ldr      x11, [sp, #0x10]
0x1008ee808: mov      x10, x11
0x1008ee80c: ldr      x9, [sp, #0x90]
0x1008ee810: cmp      x9, x11
0x1008ee814: b.ne     #0x1008ee820
0x1008ee818: b        #0x1008ee844
0x1008ee81c: mov      x10, #0
0x1008ee820: ldr      x9, [sp, #0x90]
0x1008ee824: sub      x9, x9, x10
0x1008ee828: madd     x10, x22, x10, x21
0x1008ee82c: ldr      x11, [sp, #0xa0]
0x1008ee830: add      x10, x11, x10
0x1008ee834: str      xzr, [x10]
0x1008ee838: add      x10, x10, x22
0x1008ee83c: subs     x9, x9, #1
0x1008ee840: b.ne     #0x1008ee834
0x1008ee844: tbz      w8, #0, #0x1008ee898
0x1008ee848: cbz      x0, #0x1008ee854
0x1008ee84c: str      x0, [sp, #0x128]
0x1008ee850: bl       #0x100979700
0x1008ee854: ldr      x0, [sp, #0x70]
0x1008ee858: bl       #0x100979700
0x1008ee85c: ldur     x0, [x29, #-0xf8]
0x1008ee860: ldp      x23, x19, [sp, #0x80]
0x1008ee864: ldp      x27, x26, [sp, #0x30]
0x1008ee868: cbz      x0, #0x1008ee874
0x1008ee86c: stur     x0, [x29, #-0xf0]
0x1008ee870: bl       #0x100979700
0x1008ee874: ldur     x0, [x29, #-0xe0]
0x1008ee878: cbz      x0, #0x1008ee884
0x1008ee87c: stur     x0, [x29, #-0xd8]
0x1008ee880: bl       #0x100979700
0x1008ee884: ldur     x0, [x29, #-0xc8]
0x1008ee888: cbz      x0, #0x1008ee29c
0x1008ee88c: stur     x0, [x29, #-0xc0]
0x1008ee890: bl       #0x100979700
0x1008ee894: b        #0x1008ee29c
0x1008ee898: mov      x23, #0
0x1008ee89c: stp      x0, x28, [sp, #0xa8]
0x1008ee8a0: b        #0x1008ee8b4
0x1008ee8a4: add      x23, x23, #1
0x1008ee8a8: ldp      x0, x8, [sp, #0xa8]
0x1008ee8ac: cmp      x23, x8
0x1008ee8b0: b.eq     #0x1008ee848
0x1008ee8b4: ldp      x9, x8, [sp, #0xc0]
0x1008ee8b8: cbz      x0, #0x1008ee8cc
0x1008ee8bc: ldr      d8, [x0, x23, lsl #3]
0x1008ee8c0: cmp      x8, x9
0x1008ee8c4: b.ne     #0x1008ee8d8
0x1008ee8c8: b        #0x1008ee8a4
0x1008ee8cc: fmov     d8, xzr
0x1008ee8d0: cmp      x8, x9
0x1008ee8d4: b.eq     #0x1008ee8a4
0x1008ee8d8: fsub     d9, d14, d8
0x1008ee8dc: ldp      x25, x24, [sp, #0x98]
0x1008ee8e0: ldr      x28, [sp, #0x90]
0x1008ee8e4: b        #0x1008ee900
0x1008ee8e8: ldr      d0, [x24, x21]
0x1008ee8ec: fmadd    d0, d10, d11, d0
0x1008ee8f0: str      d0, [x24, x21]
0x1008ee8f4: add      x24, x24, x22
0x1008ee8f8: subs     x28, x28, #1
0x1008ee8fc: b.eq     #0x1008ee8a4
0x1008ee900: ldr      d0, [x25], #8
0x1008ee904: ldr      d1, [x19, x23, lsl #3]
0x1008ee908: fsub     d0, d0, d1
0x1008ee90c: ldr      d1, [x27, x23, lsl #3]
0x1008ee910: ldr      d10, [x26, x23, lsl #3]
0x1008ee914: fdiv     d0, d0, d1
0x1008ee918: fneg     d1, d0
0x1008ee91c: cmp      w20, #0
0x1008ee920: fcsel    d12, d1, d0, ne
0x1008ee924: adrp     x8, #0x1009c1000
0x1008ee928: ldr      d0, [x8, #0x3f8]
0x1008ee92c: fmul     d0, d12, d0
0x1008ee930: bl       #0x10097997c
0x1008ee934: fmul     d11, d0, d15
0x1008ee938: fcmp     d8, #0.0
0x1008ee93c: b.le     #0x1008ee8e8
0x1008ee940: adrp     x8, #0x1009c1000
0x1008ee944: ldr      d0, [x8, #0x400]
0x1008ee948: fdiv     d0, d12, d0
0x1008ee94c: adrp     x8, #0x1009c1000
0x1008ee950: ldr      d1, [x8, #0x408]
0x1008ee954: fadd     d0, d0, d1
0x1008ee958: fneg     d0, d0
0x1008ee95c: bl       #0x100979994
0x1008ee960: fneg     d0, d0
0x1008ee964: bl       #0x100979994
0x1008ee968: fmul     d0, d8, d0
0x1008ee96c: fmadd    d11, d9, d11, d0
0x1008ee970: b        #0x1008ee8e8
0x1008ee974: mov      w0, #0x48
0x1008ee978: bl       #0x10097970c
0x1008ee97c: mov      x25, x0
0x1008ee980: adrp     x8, #0x100ba2000
0x1008ee984: add      x8, x8, #0x438
0x1008ee988: str      x8, [x0]
0x1008ee98c: ldp      q0, q1, [sp, #0xd0]
0x1008ee990: stur     q0, [x0, #8]
0x1008ee994: stur     q1, [x0, #0x18]
0x1008ee998: ldp      q0, q1, [sp, #0xf0]
0x1008ee99c: stur     q0, [x0, #0x28]
0x1008ee9a0: stur     q1, [x0, #0x38]
0x1008ee9a4: fsub     d12, d8, d9
0x1008ee9a8: mov      w19, #0xc8
0x1008ee9ac: mov      v14.16b, v12.16b
0x1008ee9b0: mov      v2.16b, v10.16b
0x1008ee9b4: mov      v13.16b, v9.16b
0x1008ee9b8: fmul     d0, d11, d2
0x1008ee9bc: fcmp     d0, #0.0
0x1008ee9c0: mov      v0.16b, v14.16b
0x1008ee9c4: b.le     #0x1008ee9d8
0x1008ee9c8: fsub     d0, d8, d9
0x1008ee9cc: mov      v13.16b, v9.16b
0x1008ee9d0: mov      v2.16b, v10.16b
0x1008ee9d4: mov      v12.16b, v0.16b
0x1008ee9d8: fabs     d3, d2
0x1008ee9dc: fabs     d4, d11
0x1008ee9e0: fcmp     d3, d4
0x1008ee9e4: fcsel    d3, d8, d13, pl
0x1008ee9e8: fcsel    d13, d13, d8, pl
0x1008ee9ec: fcsel    d21, d11, d2, pl
0x1008ee9f0: fcsel    d22, d2, d11, pl
0x1008ee9f4: fcsel    d6, d10, d11, pl
0x1008ee9f8: fcsel    d4, d9, d8, pl
0x1008ee9fc: mov      v9.16b, v3.16b
0x1008eea00: fabs     d2, d3
0x1008eea04: ldp      d5, d3, [sp, #0x58]
0x1008eea08: fmadd    d2, d2, d5, d3
0x1008eea0c: fsub     d3, d13, d9
0x1008eea10: fmul     d3, d3, d15
0x1008eea14: fabs     d5, d3
0x1008eea18: fcmp     d5, d2
0x1008eea1c: b.ls     #0x1008eeb40
0x1008eea20: fcmp     d21, #0.0
0x1008eea24: b.eq     #0x1008eeb40
0x1008eea28: fabs     d7, d12
0x1008eea2c: fcmp     d7, d2
0x1008eea30: fabs     d7, d6
0x1008eea34: fabs     d16, d21
0x1008eea38: fccmp    d7, d16, #0, pl
0x1008eea3c: mov      v16.16b, v3.16b
0x1008eea40: mov      v7.16b, v3.16b
0x1008eea44: b.ls     #0x1008eeaec
0x1008eea48: fdiv     d5, d21, d6
0x1008eea4c: fcmp     d4, d13
0x1008eea50: fdiv     d6, d6, d22
0x1008eea54: fdiv     d7, d21, d22
0x1008eea58: fadd     d16, d3, d3
0x1008eea5c: fmul     d17, d6, d16
0x1008eea60: fsub     d18, d6, d7
0x1008eea64: fsub     d4, d9, d4
0x1008eea68: fmov     d19, #-1.00000000
0x1008eea6c: fadd     d7, d7, d19
0x1008eea70: fnmul    d4, d7, d4
0x1008eea74: fmadd    d4, d17, d18, d4
0x1008eea78: fadd     d6, d6, d19
0x1008eea7c: fmul     d6, d7, d6
0x1008eea80: fadd     d7, d5, d19
0x1008eea84: fmul     d6, d7, d6
0x1008eea88: fmov     d7, #1.00000000
0x1008eea8c: fsub     d7, d7, d5
0x1008eea90: fcsel    d4, d4, d16, ne
0x1008eea94: fcsel    d6, d6, d7, ne
0x1008eea98: fmul     d7, d5, d4
0x1008eea9c: fneg     d16, d6
0x1008eeaa0: fnmul    d4, d5, d4
0x1008eeaa4: fcmp     d7, #0.0
0x1008eeaa8: fcsel    d4, d7, d4, gt
0x1008eeaac: fcsel    d5, d16, d6, gt
0x1008eeab0: fadd     d6, d4, d4
0x1008eeab4: fmov     d7, #3.00000000
0x1008eeab8: fmul     d7, d3, d7
0x1008eeabc: fmul     d16, d2, d5
0x1008eeac0: fabs     d16, d16
0x1008eeac4: fnmsub   d7, d7, d5, d16
0x1008eeac8: fmul     d1, d12, d5
0x1008eeacc: fabs     d1, d1
0x1008eead0: fcmp     d1, d7
0x1008eead4: fcsel    d1, d1, d7, mi
0x1008eead8: fdiv     d4, d4, d5
0x1008eeadc: fcmp     d6, d1
0x1008eeae0: fcsel    d16, d4, d3, mi
0x1008eeae4: fcsel    d7, d0, d3, mi
0x1008eeae8: fabs     d5, d16
0x1008eeaec: str      d22, [sp, #0xb0]
0x1008eeaf0: mov      v12.16b, v7.16b
0x1008eeaf4: mov      v10.16b, v21.16b
0x1008eeaf8: fneg     d0, d2
0x1008eeafc: fcmp     d3, #0.0
0x1008eeb00: fcsel    d0, d2, d0, gt
0x1008eeb04: fcmp     d5, d2
0x1008eeb08: mov      v14.16b, v16.16b
0x1008eeb0c: fcsel    d0, d16, d0, gt
0x1008eeb10: fadd     d8, d9, d0
0x1008eeb14: stur     d8, [x29, #-0xa0]
0x1008eeb18: ldr      x8, [x25]
0x1008eeb1c: ldr      x8, [x8, #0x30]
0x1008eeb20: sub      x1, x29, #0xa0
0x1008eeb24: mov      x0, x25
0x1008eeb28: blr      x8
0x1008eeb2c: mov      v11.16b, v0.16b
0x1008eeb30: subs     w19, w19, #1
0x1008eeb34: ldr      d2, [sp, #0xb0]
0x1008eeb38: b.ne     #0x1008ee9b8
0x1008eeb3c: b        #0x1008eeb44
0x1008eeb40: mov      v8.16b, v9.16b
0x1008eeb44: ldr      x8, [x25]
0x1008eeb48: ldr      x8, [x8, #0x28]
0x1008eeb4c: mov      x0, x25
0x1008eeb50: blr      x8
0x1008eeb54: mov      v4.16b, v8.16b
0x1008eeb58: fmov     d14, #1.00000000
0x1008eeb5c: cbnz     x27, #0x1008ee750
0x1008eeb60: b        #0x1008ee760
0x1008eeb64: mov      w0, #1
0x1008eeb68: add      sp, sp, #0x1a0
0x1008eeb6c: ldp      x29, x30, [sp, #0x90]
0x1008eeb70: ldp      x20, x19, [sp, #0x80]
0x1008eeb74: ldp      x22, x21, [sp, #0x70]
0x1008eeb78: ldp      x24, x23, [sp, #0x60]
0x1008eeb7c: ldp      x26, x25, [sp, #0x50]
0x1008eeb80: ldp      x28, x27, [sp, #0x40]
0x1008eeb84: ldp      d9, d8, [sp, #0x30]
0x1008eeb88: ldp      d11, d10, [sp, #0x20]
0x1008eeb8c: ldp      d13, d12, [sp, #0x10]
0x1008eeb90: ldp      d15, d14, [sp], #0xa0
0x1008eeb94: ret      
0x1008eeb98: bl       #0x1008e6248
0x1008eeb9c: b        #0x1008eeba4
0x1008eeba0: bl       #0x1008e6248
0x1008eeba4: brk      #1
0x1008eeba8: b        #0x1008eec10
0x1008eebac: mov      x19, x0
0x1008eebb0: b        #0x1008eec20
0x1008eebb4: b        #0x1008eec10
0x1008eebb8: mov      x19, x0
0x1008eebbc: b        #0x1008eec30
0x1008eebc0: mov      x19, x0
0x1008eebc4: b        #0x1008eec20
0x1008eebc8: b        #0x1008eebec
0x1008eebcc: mov      x19, x0
0x1008eebd0: ldur     x0, [x29, #-0xe0]
0x1008eebd4: cbz      x0, #0x1008eec48
0x1008eebd8: b        #0x1008eec70
0x1008eebdc: mov      x19, x0
0x1008eebe0: ldur     x0, [x29, #-0xc8]
0x1008eebe4: cbnz     x0, #0x1008eec50
0x1008eebe8: b        #0x1008eec58
0x1008eebec: mov      x19, x0
0x1008eebf0: b        #0x1008eec38
0x1008eebf4: mov      x19, x0
0x1008eebf8: ldr      x8, [x25]
0x1008eebfc: ldr      x8, [x8, #0x28]
0x1008eec00: mov      x0, x25
0x1008eec04: blr      x8
0x1008eec08: b        #0x1008eec14
0x1008eec0c: b        #0x1008eec10
0x1008eec10: mov      x19, x0
0x1008eec14: cbz      x27, #0x1008eec20
0x1008eec18: mov      x0, x27
0x1008eec1c: bl       #0x100979700
0x1008eec20: ldr      x0, [sp, #0x120]
0x1008eec24: cbz      x0, #0x1008eec30
0x1008eec28: str      x0, [sp, #0x128]
0x1008eec2c: bl       #0x100979700
0x1008eec30: mov      x0, x26
0x1008eec34: bl       #0x100979700
0x1008eec38: ldur     x0, [x29, #-0xf8]
0x1008eec3c: cbnz     x0, #0x1008eec60
0x1008eec40: ldur     x0, [x29, #-0xe0]
0x1008eec44: cbnz     x0, #0x1008eec70
0x1008eec48: ldur     x0, [x29, #-0xc8]
0x1008eec4c: cbz      x0, #0x1008eec58
0x1008eec50: stur     x0, [x29, #-0xc0]
0x1008eec54: bl       #0x100979700
0x1008eec58: mov      x0, x19
0x1008eec5c: bl       #0x10097958c
0x1008eec60: stur     x0, [x29, #-0xf0]
0x1008eec64: bl       #0x100979700
0x1008eec68: ldur     x0, [x29, #-0xe0]
0x1008eec6c: cbz      x0, #0x1008eec48
0x1008eec70: stur     x0, [x29, #-0xd8]
0x1008eec74: bl       #0x100979700
0x1008eec78: ldur     x0, [x29, #-0xc8]
0x1008eec7c: cbnz     x0, #0x1008eec50
0x1008eec80: b        #0x1008eec58
