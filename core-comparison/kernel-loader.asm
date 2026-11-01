FUNCTION 0x100910230 0x100911888
0x100910230: sub      sp, sp, #0x120
0x100910234: stp      d9, d8, [sp, #0xb0]
0x100910238: stp      x28, x27, [sp, #0xc0]
0x10091023c: stp      x26, x25, [sp, #0xd0]
0x100910240: stp      x24, x23, [sp, #0xe0]
0x100910244: stp      x22, x21, [sp, #0xf0]
0x100910248: stp      x20, x19, [sp, #0x100]
0x10091024c: stp      x29, x30, [sp, #0x110]
0x100910250: add      x29, sp, #0x110
0x100910254: mov      x20, x2
0x100910258: mov      x22, x1
0x10091025c: mov      x21, x0
0x100910260: adrp     x8, #0x100ba9000
0x100910264: ldr      x8, [x8, #0xe48]
0x100910268: ldr      x8, [x8]
0x10091026c: stur     x8, [x29, #-0x70]
0x100910270: cbz      x0, #0x100910290
0x100910274: adrp     x8, #0x100c31000
0x100910278: add      x8, x8, #0xd60
0x10091027c: ldr      x1, [x8]
0x100910280: mov      x0, x21
0x100910284: bl       #0x100979b80
0x100910288: mov      x19, x21
0x10091028c: b        #0x10091029c
0x100910290: bl       #0x1009178d4
0x100910294: mov      x19, x0
0x100910298: cbz      x0, #0x1009103d0
0x10091029c: str      xzr, [sp, #0x68]
0x1009102a0: ldrsb    w8, [x22, #0x17]
0x1009102a4: ldr      x9, [x22]
0x1009102a8: cmp      w8, #0
0x1009102ac: csel     x0, x9, x22, lt
0x1009102b0: adrp     x1, #0x100b24000
0x1009102b4: add      x1, x1, #0x7e3
0x1009102b8: bl       #0x1009799d0
0x1009102bc: cbz      x0, #0x100910378
0x1009102c0: bl       #0x1009799b8
0x1009102c4: ldrsb    w8, [x22, #0x17]
0x1009102c8: ldr      x9, [x22]
0x1009102cc: cmp      w8, #0
0x1009102d0: csel     x2, x9, x22, lt
0x1009102d4: adrp     x8, #0x100c31000
0x1009102d8: add      x8, x8, #0x848
0x1009102dc: ldr      x0, [x8]
0x1009102e0: adrp     x8, #0x100c31000
0x1009102e4: add      x8, x8, #0xdd0
0x1009102e8: ldr      x1, [x8]
0x1009102ec: mov      w3, #4
0x1009102f0: bl       #0x100979b80
0x1009102f4: mov      x2, x0
0x1009102f8: adrp     x8, #0x100c30000
0x1009102fc: add      x8, x8, #0x110
0x100910300: ldr      x1, [x8]
0x100910304: add      x3, sp, #0x68
0x100910308: mov      x0, x19
0x10091030c: bl       #0x100979b80
0x100910310: mov      x23, x0
0x100910314: cbnz     x0, #0x100910fe0
0x100910318: mov      x24, #-0xa
0x10091031c: movk     x24, #0x7fff, lsl #48
0x100910320: ldrb     w8, [x22, #0x17]
0x100910324: sxtb     w25, w8
0x100910328: ldr      x9, [x22, #8]
0x10091032c: cmp      w25, #0
0x100910330: csel     x21, x9, x8, lt
0x100910334: add      x27, x21, #0xc
0x100910338: cmp      x27, x24
0x10091033c: b.hi     #0x10091174c
0x100910340: ldr      x26, [x22]
0x100910344: cmp      x27, #0x16
0x100910348: b.ls     #0x1009103e4
0x10091034c: and      x8, x27, #0x7ffffffffffffff8
0x100910350: add      x8, x8, #8
0x100910354: cmp      x8, #0x18
0x100910358: mov      w9, #0x19
0x10091035c: csel     x23, x9, x8, eq
0x100910360: mov      x0, x23
0x100910364: bl       #0x10097970c
0x100910368: orr      x8, x23, #0x8000000000000000
0x10091036c: stp      x0, x27, [sp, #0x50]
0x100910370: str      x8, [sp, #0x60]
0x100910374: b        #0x1009103ec
0x100910378: ldrb     w8, [x22, #0x17]
0x10091037c: sxtb     w9, w8
0x100910380: ldp      x10, x11, [x22]
0x100910384: and      x8, x8, #0xff
0x100910388: cmp      w9, #0
0x10091038c: csel     x23, x10, x22, lt
0x100910390: csel     x8, x11, x8, lt
0x100910394: cbz      x8, #0x1009104ec
0x100910398: ands     x10, x8, #3
0x10091039c: b.eq     #0x10091049c
0x1009103a0: add      x9, x8, x23
0x1009103a4: sub      x9, x9, #1
0x1009103a8: ldrb     w11, [x9]
0x1009103ac: cmp      w11, #0x2f
0x1009103b0: b.eq     #0x1009107cc
0x1009103b4: sub      x9, x9, #1
0x1009103b8: subs     x10, x10, #1
0x1009103bc: b.ne     #0x1009103a8
0x1009103c0: add      x9, x9, #1
0x1009103c4: cmp      x8, #4
0x1009103c8: b.lo     #0x1009104ec
0x1009103cc: b        #0x1009104a8
0x1009103d0: ldrsb    w8, [x20, #0x17]
0x1009103d4: tbnz     w8, #0x1f, #0x1009104f4
0x1009103d8: mov      w8, #0xf
0x1009103dc: strb     w8, [x20, #0x17]
0x1009103e0: b        #0x100910500
0x1009103e4: strb     w27, [sp, #0x67]
0x1009103e8: add      x0, sp, #0x50
0x1009103ec: cmp      w25, #0
0x1009103f0: csel     x1, x26, x22, lt
0x1009103f4: mov      w8, #0x616f
0x1009103f8: movk     w8, #0x2064, lsl #16
0x1009103fc: str      w8, [x0, #8]
0x100910400: adrp     x8, #0x100b24000
0x100910404: add      x8, x8, #0x7e6
0x100910408: ldr      x8, [x8]
0x10091040c: str      x8, [x0]
0x100910410: add      x22, x0, #0xc
0x100910414: mov      x0, x22
0x100910418: mov      x2, x21
0x10091041c: bl       #0x100979ae4
0x100910420: strb     wzr, [x22, x21]
0x100910424: ldrb     w9, [sp, #0x67]
0x100910428: sxtb     w25, w9
0x10091042c: ldp      x10, x27, [sp, #0x58]
0x100910430: and      x8, x27, #0x7fffffffffffffff
0x100910434: sub      x8, x8, #1
0x100910438: cmp      w25, #0
0x10091043c: mov      w11, #0x16
0x100910440: csel     x11, x8, x11, lt
0x100910444: csel     x21, x10, x9, lt
0x100910448: sub      x9, x11, x21
0x10091044c: cmp      x9, #1
0x100910450: b.hi     #0x10091046c
0x100910454: add      x26, x21, #2
0x100910458: cmp      x26, x24
0x10091045c: b.hi     #0x100911764
0x100910460: tbnz     w25, #0x1f, #0x100910530
0x100910464: mov      w8, #0x16
0x100910468: b        #0x100910554
0x10091046c: ldr      x8, [sp, #0x50]
0x100910470: cmp      w25, #0
0x100910474: add      x9, sp, #0x50
0x100910478: csel     x8, x8, x9, lt
0x10091047c: mov      w9, #0x203a
0x100910480: strh     w9, [x8, x21]
0x100910484: add      x9, x21, #2
0x100910488: ldrsb    w10, [sp, #0x67]
0x10091048c: tbnz     w10, #0x1f, #0x100910524
0x100910490: and      w10, w9, #0x7f
0x100910494: strb     w10, [sp, #0x67]
0x100910498: b        #0x100910528
0x10091049c: add      x9, x23, x8
0x1009104a0: cmp      x8, #4
0x1009104a4: b.lo     #0x1009104ec
0x1009104a8: sub      x9, x9, #2
0x1009104ac: ldrb     w10, [x9, #1]
0x1009104b0: cmp      w10, #0x2f
0x1009104b4: b.eq     #0x1009107b8
0x1009104b8: ldrb     w10, [x9]
0x1009104bc: cmp      w10, #0x2f
0x1009104c0: b.eq     #0x1009107cc
0x1009104c4: ldurb    w10, [x9, #-1]
0x1009104c8: cmp      w10, #0x2f
0x1009104cc: b.eq     #0x1009107c0
0x1009104d0: ldurb    w10, [x9, #-2]
0x1009104d4: cmp      w10, #0x2f
0x1009104d8: b.eq     #0x1009107c8
0x1009104dc: sub      x10, x9, #2
0x1009104e0: sub      x9, x9, #4
0x1009104e4: cmp      x10, x23
0x1009104e8: b.ne     #0x1009104ac
0x1009104ec: mov      x9, #0
0x1009104f0: b        #0x1009107d4
0x1009104f4: mov      w8, #0xf
0x1009104f8: str      x8, [x20, #8]
0x1009104fc: ldr      x20, [x20]
0x100910500: mov      x21, #0
0x100910504: adrp     x8, #0x100b24000
0x100910508: add      x8, x8, #0x7af
0x10091050c: ldr      x9, [x8]
0x100910510: str      x9, [x20]
0x100910514: ldur     x8, [x8, #7]
0x100910518: stur     x8, [x20, #7]
0x10091051c: strb     wzr, [x20, #0xf]
0x100910520: b        #0x100911200
0x100910524: str      x9, [sp, #0x58]
0x100910528: strb     wzr, [x8, x9]
0x10091052c: b        #0x1009105bc
0x100910530: mov      x9, #-0xd
0x100910534: movk     x9, #0x3fff, lsl #48
0x100910538: cmp      x8, x9
0x10091053c: b.ls     #0x100910554
0x100910540: mov      x22, #0x7ffffffffffffff8
0x100910544: mov      x0, #0x7ffffffffffffff8
0x100910548: bl       #0x10097970c
0x10091054c: mov      x23, x0
0x100910550: b        #0x1009106a8
0x100910554: lsl      x8, x8, #1
0x100910558: cmp      x26, x8
0x10091055c: csel     x8, x26, x8, hi
0x100910560: and      x8, x8, #0x7ffffffffffffff8
0x100910564: add      x8, x8, #8
0x100910568: cmp      x8, #0x18
0x10091056c: mov      w9, #0x19
0x100910570: csel     x22, x9, x8, eq
0x100910574: mov      x0, x22
0x100910578: bl       #0x10097970c
0x10091057c: mov      x23, x0
0x100910580: tbnz     w25, #0x1f, #0x1009106a8
0x100910584: add      x1, sp, #0x50
0x100910588: cbz      x21, #0x100910598
0x10091058c: mov      x0, x23
0x100910590: mov      x2, x21
0x100910594: bl       #0x100979ae4
0x100910598: mov      w8, #0x203a
0x10091059c: strh     w8, [x23, x21]
0x1009105a0: strb     wzr, [x23, x26]
0x1009105a4: tbz      w25, #0x1f, #0x1009105b0
0x1009105a8: ldr      x0, [sp, #0x50]
0x1009105ac: bl       #0x100979700
0x1009105b0: orr      x8, x22, #0x8000000000000000
0x1009105b4: stp      x23, x26, [sp, #0x50]
0x1009105b8: str      x8, [sp, #0x60]
0x1009105bc: ldr      q0, [sp, #0x50]
0x1009105c0: str      q0, [sp, #0x80]
0x1009105c4: ldp      x8, x0, [sp, #0x60]
0x1009105c8: str      x8, [sp, #0x90]
0x1009105cc: stp      xzr, xzr, [sp, #0x58]
0x1009105d0: str      xzr, [sp, #0x50]
0x1009105d4: cbz      x0, #0x100910610
0x1009105d8: adrp     x21, #0x100c31000
0x1009105dc: add      x21, x21, #0xba8
0x1009105e0: ldr      x1, [x21]
0x1009105e4: bl       #0x100979b80
0x1009105e8: cbz      x0, #0x100910610
0x1009105ec: ldr      x0, [sp, #0x68]
0x1009105f0: ldr      x1, [x21]
0x1009105f4: bl       #0x100979b80
0x1009105f8: adrp     x8, #0x100c31000
0x1009105fc: add      x8, x8, #0xe48
0x100910600: ldr      x1, [x8]
0x100910604: bl       #0x100979b80
0x100910608: mov      x21, x0
0x10091060c: b        #0x100910618
0x100910610: adrp     x21, #0x100b24000
0x100910614: add      x21, x21, #0x7f3
0x100910618: mov      x0, x21
0x10091061c: bl       #0x100979eb0
0x100910620: mov      x22, x0
0x100910624: ldrb     w10, [sp, #0x97]
0x100910628: sxtb     w26, w10
0x10091062c: ldp      x11, x9, [sp, #0x88]
0x100910630: and      x8, x9, #0x7fffffffffffffff
0x100910634: sub      x8, x8, #1
0x100910638: cmp      w26, #0
0x10091063c: mov      w12, #0x16
0x100910640: csel     x12, x8, x12, lt
0x100910644: csel     x23, x11, x10, lt
0x100910648: sub      x10, x12, x23
0x10091064c: cmp      x10, x0
0x100910650: b.hs     #0x10091066c
0x100910654: add      x27, x23, x22
0x100910658: cmp      x27, x24
0x10091065c: b.hi     #0x10091176c
0x100910660: tbnz     w26, #0x1f, #0x1009106bc
0x100910664: mov      w8, #0x16
0x100910668: b        #0x1009106e0
0x10091066c: ldr      x24, [sp, #0x80]
0x100910670: cbz      x22, #0x1009106b4
0x100910674: cmp      w26, #0
0x100910678: add      x8, sp, #0x80
0x10091067c: csel     x24, x24, x8, lt
0x100910680: add      x0, x24, x23
0x100910684: mov      x1, x21
0x100910688: mov      x2, x22
0x10091068c: bl       #0x100979ae4
0x100910690: add      x8, x23, x22
0x100910694: ldrsb    w9, [sp, #0x97]
0x100910698: tbnz     w9, #0x1f, #0x100910760
0x10091069c: and      w9, w8, #0x7f
0x1009106a0: strb     w9, [sp, #0x97]
0x1009106a4: b        #0x100910764
0x1009106a8: ldr      x1, [sp, #0x50]
0x1009106ac: cbnz     x21, #0x10091058c
0x1009106b0: b        #0x100910598
0x1009106b4: lsr      x21, x9, #0x38
0x1009106b8: b        #0x100910770
0x1009106bc: mov      x9, #-0xd
0x1009106c0: movk     x9, #0x3fff, lsl #48
0x1009106c4: cmp      x8, x9
0x1009106c8: b.ls     #0x1009106e0
0x1009106cc: mov      x25, #0x7ffffffffffffff8
0x1009106d0: mov      x0, #0x7ffffffffffffff8
0x1009106d4: bl       #0x10097970c
0x1009106d8: mov      x24, x0
0x1009106dc: b        #0x100910754
0x1009106e0: lsl      x8, x8, #1
0x1009106e4: cmp      x27, x8
0x1009106e8: csel     x8, x27, x8, hi
0x1009106ec: and      x8, x8, #0x7ffffffffffffff8
0x1009106f0: add      x8, x8, #8
0x1009106f4: cmp      x8, #0x18
0x1009106f8: mov      w9, #0x19
0x1009106fc: csel     x25, x9, x8, eq
0x100910700: mov      x0, x25
0x100910704: bl       #0x10097970c
0x100910708: mov      x24, x0
0x10091070c: tbnz     w26, #0x1f, #0x100910754
0x100910710: add      x1, sp, #0x80
0x100910714: cbz      x23, #0x100910724
0x100910718: mov      x0, x24
0x10091071c: mov      x2, x23
0x100910720: bl       #0x100979ae4
0x100910724: add      x0, x24, x23
0x100910728: mov      x1, x21
0x10091072c: mov      x2, x22
0x100910730: bl       #0x100979ae4
0x100910734: strb     wzr, [x24, x27]
0x100910738: tbz      w26, #0x1f, #0x100910744
0x10091073c: ldr      x0, [sp, #0x80]
0x100910740: bl       #0x100979700
0x100910744: orr      x8, x25, #0x8000000000000000
0x100910748: stp      x27, x8, [sp, #0x88]
0x10091074c: lsr      x21, x8, #0x38
0x100910750: b        #0x100910770
0x100910754: ldr      x1, [sp, #0x80]
0x100910758: cbnz     x23, #0x100910718
0x10091075c: b        #0x100910724
0x100910760: str      x8, [sp, #0x88]
0x100910764: strb     wzr, [x24, x8]
0x100910768: ldr      x24, [sp, #0x80]
0x10091076c: ldrb     w21, [sp, #0x97]
0x100910770: add      x8, sp, #0x80
0x100910774: orr      x22, x8, #8
0x100910778: ldrsb    w8, [x20, #0x17]
0x10091077c: tbz      w8, #0x1f, #0x100910790
0x100910780: ldr      x0, [x20]
0x100910784: bl       #0x100979700
0x100910788: stp      xzr, xzr, [x20]
0x10091078c: str      xzr, [x20, #0x10]
0x100910790: ldr      x8, [x22]
0x100910794: stp      x24, x8, [x20]
0x100910798: ldur     x8, [x22, #7]
0x10091079c: stur     x8, [x20, #0xf]
0x1009107a0: strb     w21, [x20, #0x17]
0x1009107a4: ldrsb    w8, [sp, #0x67]
0x1009107a8: tbz      w8, #0x1f, #0x1009111e8
0x1009107ac: ldr      x0, [sp, #0x50]
0x1009107b0: bl       #0x100979700
0x1009107b4: b        #0x1009111e8
0x1009107b8: add      x9, x9, #1
0x1009107bc: b        #0x1009107cc
0x1009107c0: sub      x9, x9, #1
0x1009107c4: b        #0x1009107cc
0x1009107c8: sub      x9, x9, #2
0x1009107cc: sub      x9, x9, x23
0x1009107d0: add      x9, x9, #1
0x1009107d4: mov      x27, #-0xa
0x1009107d8: movk     x27, #0x7fff, lsl #48
0x1009107dc: cmp      x8, x9
0x1009107e0: csel     x24, x8, x9, lo
0x1009107e4: cmp      x24, x27
0x1009107e8: b.hi     #0x100911740
0x1009107ec: cmp      x24, #0x16
0x1009107f0: b.hi     #0x100910800
0x1009107f4: strb     w24, [sp, #0x67]
0x1009107f8: add      x25, sp, #0x50
0x1009107fc: b        #0x10091082c
0x100910800: and      x8, x24, #0x7ffffffffffffff8
0x100910804: add      x8, x8, #8
0x100910808: cmp      x8, #0x18
0x10091080c: mov      w9, #0x19
0x100910810: csel     x26, x9, x8, eq
0x100910814: mov      x0, x26
0x100910818: bl       #0x10097970c
0x10091081c: mov      x25, x0
0x100910820: orr      x8, x26, #0x8000000000000000
0x100910824: stp      x0, x24, [sp, #0x50]
0x100910828: str      x8, [sp, #0x60]
0x10091082c: mov      x0, x25
0x100910830: mov      x1, x23
0x100910834: mov      x2, x24
0x100910838: bl       #0x100979ae4
0x10091083c: strb     wzr, [x25, x24]
0x100910840: ldrb     w8, [sp, #0x67]
0x100910844: sxtb     w26, w8
0x100910848: ldr      x9, [sp, #0x58]
0x10091084c: cmp      w26, #0
0x100910850: csel     x23, x9, x8, lt
0x100910854: add      x28, x23, #0xb
0x100910858: cmp      x28, x27
0x10091085c: b.hi     #0x100911744
0x100910860: ldr      x27, [sp, #0x50]
0x100910864: cmp      x28, #0x16
0x100910868: b.ls     #0x10091089c
0x10091086c: and      x8, x28, #0x7ffffffffffffff8
0x100910870: add      x8, x8, #8
0x100910874: cmp      x8, #0x18
0x100910878: mov      w9, #0x19
0x10091087c: csel     x25, x9, x8, eq
0x100910880: mov      x0, x25
0x100910884: bl       #0x10097970c
0x100910888: mov      x24, x0
0x10091088c: orr      x8, x25, #0x8000000000000000
0x100910890: stp      x0, x28, [sp, #0x38]
0x100910894: str      x8, [sp, #0x48]
0x100910898: b        #0x1009108a4
0x10091089c: strb     w28, [sp, #0x4f]
0x1009108a0: add      x24, sp, #0x38
0x1009108a4: cmp      w26, #0
0x1009108a8: add      x8, sp, #0x50
0x1009108ac: csel     x1, x27, x8, lt
0x1009108b0: mov      x0, x24
0x1009108b4: mov      x2, x23
0x1009108b8: bl       #0x100979ae4
0x1009108bc: add      x8, x24, x23
0x1009108c0: mov      w9, #0x622e
0x1009108c4: movk     w9, #0x6e69, lsl #16
0x1009108c8: stur     w9, [x8, #7]
0x1009108cc: adrp     x9, #0x100b24000
0x1009108d0: add      x9, x9, #0x7fb
0x1009108d4: ldr      x9, [x9]
0x1009108d8: str      x9, [x8]
0x1009108dc: strb     wzr, [x8, #0xb]
0x1009108e0: ldrsb    w8, [sp, #0x4f]
0x1009108e4: ldr      x9, [sp, #0x38]
0x1009108e8: cmp      w8, #0
0x1009108ec: add      x8, sp, #0x38
0x1009108f0: csel     x0, x9, x8, lt
0x1009108f4: adrp     x1, #0x100b24000
0x1009108f8: add      x1, x1, #0x7e3
0x1009108fc: bl       #0x1009799d0
0x100910900: mov      x24, x0
0x100910904: cbz      x0, #0x100910bcc
0x100910908: mov      x0, x24
0x10091090c: mov      x1, #0
0x100910910: mov      w2, #2
0x100910914: bl       #0x100979a00
0x100910918: mov      x0, x24
0x10091091c: bl       #0x100979a18
0x100910920: mov      x23, x0
0x100910924: mov      x0, x24
0x100910928: mov      x1, #0
0x10091092c: mov      w2, #0
0x100910930: bl       #0x100979a00
0x100910934: cmp      x23, #0
0x100910938: b.le     #0x100910c2c
0x10091093c: mov      x0, x23
0x100910940: bl       #0x10097970c
0x100910944: mov      x22, x0
0x100910948: mov      x1, x23
0x10091094c: bl       #0x10097982c
0x100910950: mov      x0, x22
0x100910954: mov      w1, #1
0x100910958: mov      x2, x23
0x10091095c: mov      x3, x24
0x100910960: bl       #0x1009799e8
0x100910964: mov      x25, x0
0x100910968: mov      x0, x24
0x10091096c: bl       #0x1009799b8
0x100910970: cmp      x25, x23
0x100910974: b.ne     #0x100910c94
0x100910978: mov      x8, #0
0x10091097c: adrp     x9, #0x1009c1000
0x100910980: add      x9, x9, #0xee8
0x100910984: add      x10, sp, #0x80
0x100910988: adrp     x11, #0x1009c1000
0x10091098c: add      x11, x11, #0xf08
0x100910990: ldrb     w12, [x9, x8]
0x100910994: ldrb     w13, [x11, x8]
0x100910998: eor      w12, w13, w12
0x10091099c: strb     w12, [x10, x8]
0x1009109a0: add      x8, x8, #1
0x1009109a4: cmp      x8, #0x20
0x1009109a8: b.ne     #0x100910990
0x1009109ac: mov      x8, #0
0x1009109b0: mov      x9, #0
0x1009109b4: ldrb     w10, [sp, #0x80]
0x1009109b8: mov      x11, #0x2325
0x1009109bc: movk     x11, #0x8422, lsl #16
0x1009109c0: movk     x11, #0x9ce4, lsl #32
0x1009109c4: movk     x11, #0xcbf2, lsl #48
0x1009109c8: eor      x11, x10, x11
0x1009109cc: mov      x10, #0x1b3
0x1009109d0: movk     x10, #0x100, lsl #32
0x1009109d4: mul      x11, x11, x10
0x1009109d8: ldrb     w12, [sp, #0x81]
0x1009109dc: eor      x11, x11, x12
0x1009109e0: mul      x11, x11, x10
0x1009109e4: ldrb     w12, [sp, #0x82]
0x1009109e8: eor      x11, x11, x12
0x1009109ec: mul      x11, x11, x10
0x1009109f0: ldrb     w12, [sp, #0x83]
0x1009109f4: eor      x11, x11, x12
0x1009109f8: mul      x11, x11, x10
0x1009109fc: ldrb     w12, [sp, #0x84]
0x100910a00: eor      x11, x11, x12
0x100910a04: mul      x11, x11, x10
0x100910a08: ldrb     w12, [sp, #0x85]
0x100910a0c: eor      x11, x11, x12
0x100910a10: mul      x11, x11, x10
0x100910a14: ldrb     w12, [sp, #0x86]
0x100910a18: eor      x11, x11, x12
0x100910a1c: mul      x11, x11, x10
0x100910a20: ldrb     w12, [sp, #0x87]
0x100910a24: eor      x11, x11, x12
0x100910a28: mul      x11, x11, x10
0x100910a2c: ldrb     w12, [sp, #0x88]
0x100910a30: eor      x11, x11, x12
0x100910a34: mul      x11, x11, x10
0x100910a38: ldrb     w12, [sp, #0x89]
0x100910a3c: eor      x11, x11, x12
0x100910a40: mul      x11, x11, x10
0x100910a44: ldrb     w12, [sp, #0x8a]
0x100910a48: eor      x11, x11, x12
0x100910a4c: mul      x11, x11, x10
0x100910a50: ldrb     w12, [sp, #0x8b]
0x100910a54: eor      x11, x11, x12
0x100910a58: mul      x11, x11, x10
0x100910a5c: ldrb     w12, [sp, #0x8c]
0x100910a60: eor      x11, x11, x12
0x100910a64: mul      x11, x11, x10
0x100910a68: ldrb     w12, [sp, #0x8d]
0x100910a6c: eor      x11, x11, x12
0x100910a70: mul      x11, x11, x10
0x100910a74: ldrb     w12, [sp, #0x8e]
0x100910a78: eor      x11, x11, x12
0x100910a7c: mul      x11, x11, x10
0x100910a80: ldrb     w12, [sp, #0x8f]
0x100910a84: eor      x11, x11, x12
0x100910a88: mul      x11, x11, x10
0x100910a8c: ldrb     w12, [sp, #0x90]
0x100910a90: eor      x11, x11, x12
0x100910a94: mul      x11, x11, x10
0x100910a98: ldrb     w12, [sp, #0x91]
0x100910a9c: eor      x11, x11, x12
0x100910aa0: mul      x11, x11, x10
0x100910aa4: ldrb     w12, [sp, #0x92]
0x100910aa8: eor      x11, x11, x12
0x100910aac: mul      x11, x11, x10
0x100910ab0: ldrb     w12, [sp, #0x93]
0x100910ab4: eor      x11, x11, x12
0x100910ab8: mul      x11, x11, x10
0x100910abc: ldrb     w12, [sp, #0x94]
0x100910ac0: eor      x11, x11, x12
0x100910ac4: mul      x11, x11, x10
0x100910ac8: ldrb     w12, [sp, #0x95]
0x100910acc: eor      x11, x11, x12
0x100910ad0: mul      x11, x11, x10
0x100910ad4: ldrb     w12, [sp, #0x96]
0x100910ad8: eor      x11, x11, x12
0x100910adc: mul      x11, x11, x10
0x100910ae0: ldrb     w12, [sp, #0x97]
0x100910ae4: eor      x11, x11, x12
0x100910ae8: mul      x11, x11, x10
0x100910aec: ldrb     w12, [sp, #0x98]
0x100910af0: eor      x11, x11, x12
0x100910af4: mul      x11, x11, x10
0x100910af8: ldrb     w12, [sp, #0x99]
0x100910afc: eor      x11, x11, x12
0x100910b00: mul      x11, x11, x10
0x100910b04: ldrb     w12, [sp, #0x9a]
0x100910b08: eor      x11, x11, x12
0x100910b0c: mul      x11, x11, x10
0x100910b10: ldrb     w12, [sp, #0x9b]
0x100910b14: eor      x11, x11, x12
0x100910b18: mul      x11, x11, x10
0x100910b1c: ldrb     w12, [sp, #0x9c]
0x100910b20: eor      x11, x11, x12
0x100910b24: mul      x11, x11, x10
0x100910b28: ldrb     w12, [sp, #0x9d]
0x100910b2c: eor      x11, x11, x12
0x100910b30: mul      x11, x11, x10
0x100910b34: ldrb     w12, [sp, #0x9e]
0x100910b38: eor      x11, x11, x12
0x100910b3c: mul      x11, x11, x10
0x100910b40: ldrb     w12, [sp, #0x9f]
0x100910b44: eor      x11, x11, x12
0x100910b48: mul      x10, x11, x10
0x100910b4c: mov      x11, #0x7c15
0x100910b50: movk     x11, #0x7f4a, lsl #16
0x100910b54: movk     x11, #0x79b9, lsl #32
0x100910b58: movk     x11, #0x9e37, lsl #48
0x100910b5c: mov      x12, #0xe5b9
0x100910b60: movk     x12, #0x1ce4, lsl #16
0x100910b64: movk     x12, #0x476d, lsl #32
0x100910b68: movk     x12, #0xbf58, lsl #48
0x100910b6c: mov      x13, #0x11eb
0x100910b70: movk     x13, #0x1331, lsl #16
0x100910b74: movk     x13, #0x49bb, lsl #32
0x100910b78: movk     x13, #0x94d0, lsl #48
0x100910b7c: mov      x25, #-0xa
0x100910b80: movk     x25, #0x7fff, lsl #48
0x100910b84: b        #0x100910ba8
0x100910b88: lsl      x14, x14, #3
0x100910b8c: ldrb     w15, [x22, x8]
0x100910b90: lsr      x14, x9, x14
0x100910b94: eor      w14, w15, w14
0x100910b98: strb     w14, [x22, x8]
0x100910b9c: add      x8, x8, #1
0x100910ba0: cmp      x23, x8
0x100910ba4: b.eq     #0x100910cf4
0x100910ba8: ands     x14, x8, #7
0x100910bac: b.ne     #0x100910b88
0x100910bb0: add      x10, x10, x11
0x100910bb4: eor      x9, x10, x10, lsr #30
0x100910bb8: mul      x9, x9, x12
0x100910bbc: eor      x9, x9, x9, lsr #27
0x100910bc0: mul      x9, x9, x13
0x100910bc4: eor      x9, x9, x9, lsr #31
0x100910bc8: b        #0x100910b88
0x100910bcc: ldrb     w8, [x22, #0x17]
0x100910bd0: sxtb     w25, w8
0x100910bd4: ldr      x9, [x22, #8]
0x100910bd8: cmp      w25, #0
0x100910bdc: csel     x23, x9, x8, lt
0x100910be0: add      x27, x23, #0x29
0x100910be4: mov      x8, #-0xa
0x100910be8: movk     x8, #0x7fff, lsl #48
0x100910bec: cmp      x27, x8
0x100910bf0: b.hi     #0x10091175c
0x100910bf4: ldr      x26, [x22]
0x100910bf8: cmp      x27, #0x16
0x100910bfc: b.ls     #0x100910e10
0x100910c00: and      x8, x27, #0x7ffffffffffffff8
0x100910c04: add      x8, x8, #8
0x100910c08: cmp      x8, #0x18
0x100910c0c: mov      w9, #0x19
0x100910c10: csel     x24, x9, x8, eq
0x100910c14: mov      x0, x24
0x100910c18: bl       #0x10097970c
0x100910c1c: orr      x8, x24, #0x8000000000000000
0x100910c20: stp      x0, x27, [sp, #0x20]
0x100910c24: str      x8, [sp, #0x30]
0x100910c28: b        #0x100910e18
0x100910c2c: mov      x0, x24
0x100910c30: bl       #0x1009799b8
0x100910c34: ldrb     w8, [sp, #0x4f]
0x100910c38: sxtb     w24, w8
0x100910c3c: ldr      x9, [sp, #0x40]
0x100910c40: cmp      w24, #0
0x100910c44: csel     x22, x9, x8, lt
0x100910c48: add      x26, x22, #6
0x100910c4c: mov      x8, #-0xa
0x100910c50: movk     x8, #0x7fff, lsl #48
0x100910c54: cmp      x26, x8
0x100910c58: b.hi     #0x100911774
0x100910c5c: ldr      x25, [sp, #0x38]
0x100910c60: cmp      x26, #0x16
0x100910c64: b.ls     #0x100910edc
0x100910c68: and      x8, x26, #0x7ffffffffffffff8
0x100910c6c: add      x8, x8, #8
0x100910c70: cmp      x8, #0x18
0x100910c74: mov      w9, #0x19
0x100910c78: csel     x23, x9, x8, eq
0x100910c7c: mov      x0, x23
0x100910c80: bl       #0x10097970c
0x100910c84: orr      x8, x23, #0x8000000000000000
0x100910c88: stp      x0, x26, [sp, #0x80]
0x100910c8c: str      x8, [sp, #0x90]
0x100910c90: b        #0x100910ee4
0x100910c94: ldrb     w8, [sp, #0x4f]
0x100910c98: sxtb     w25, w8
0x100910c9c: ldr      x9, [sp, #0x40]
0x100910ca0: cmp      w25, #0
0x100910ca4: csel     x23, x9, x8, lt
0x100910ca8: add      x27, x23, #0xe
0x100910cac: mov      x8, #-0xa
0x100910cb0: movk     x8, #0x7fff, lsl #48
0x100910cb4: cmp      x27, x8
0x100910cb8: b.hi     #0x10091177c
0x100910cbc: ldr      x26, [sp, #0x38]
0x100910cc0: cmp      x27, #0x16
0x100910cc4: b.ls     #0x100910f50
0x100910cc8: and      x8, x27, #0x7ffffffffffffff8
0x100910ccc: add      x8, x8, #8
0x100910cd0: cmp      x8, #0x18
0x100910cd4: mov      w9, #0x19
0x100910cd8: csel     x24, x9, x8, eq
0x100910cdc: mov      x0, x24
0x100910ce0: bl       #0x10097970c
0x100910ce4: orr      x8, x24, #0x8000000000000000
0x100910ce8: stp      x0, x27, [sp, #0x80]
0x100910cec: str      x8, [sp, #0x90]
0x100910cf0: b        #0x100910f58
0x100910cf4: strb     wzr, [sp, #0x80]
0x100910cf8: strb     wzr, [sp, #0x81]
0x100910cfc: strb     wzr, [sp, #0x82]
0x100910d00: strb     wzr, [sp, #0x83]
0x100910d04: strb     wzr, [sp, #0x84]
0x100910d08: strb     wzr, [sp, #0x85]
0x100910d0c: strb     wzr, [sp, #0x86]
0x100910d10: strb     wzr, [sp, #0x87]
0x100910d14: strb     wzr, [sp, #0x88]
0x100910d18: strb     wzr, [sp, #0x89]
0x100910d1c: strb     wzr, [sp, #0x8a]
0x100910d20: strb     wzr, [sp, #0x8b]
0x100910d24: strb     wzr, [sp, #0x8c]
0x100910d28: strb     wzr, [sp, #0x8d]
0x100910d2c: strb     wzr, [sp, #0x8e]
0x100910d30: strb     wzr, [sp, #0x8f]
0x100910d34: strb     wzr, [sp, #0x90]
0x100910d38: strb     wzr, [sp, #0x91]
0x100910d3c: strb     wzr, [sp, #0x92]
0x100910d40: strb     wzr, [sp, #0x93]
0x100910d44: strb     wzr, [sp, #0x94]
0x100910d48: strb     wzr, [sp, #0x95]
0x100910d4c: strb     wzr, [sp, #0x96]
0x100910d50: strb     wzr, [sp, #0x97]
0x100910d54: strb     wzr, [sp, #0x98]
0x100910d58: strb     wzr, [sp, #0x99]
0x100910d5c: strb     wzr, [sp, #0x9a]
0x100910d60: strb     wzr, [sp, #0x9b]
0x100910d64: strb     wzr, [sp, #0x9c]
0x100910d68: strb     wzr, [sp, #0x9d]
0x100910d6c: strb     wzr, [sp, #0x9e]
0x100910d70: strb     wzr, [sp, #0x9f]
0x100910d74: mov      x0, x22
0x100910d78: mov      x1, x23
0x100910d7c: mov      x2, #0
0x100910d80: mov      x3, #0
0x100910d84: bl       #0x10097988c
0x100910d88: mov      x24, x0
0x100910d8c: adrp     x8, #0x100c30000
0x100910d90: add      x8, x8, #0x108
0x100910d94: ldr      x1, [x8]
0x100910d98: add      x3, sp, #0x68
0x100910d9c: mov      x0, x19
0x100910da0: mov      x2, x24
0x100910da4: bl       #0x100979b80
0x100910da8: mov      x23, x0
0x100910dac: mov      x0, x24
0x100910db0: bl       #0x1009798e0
0x100910db4: cbnz     x23, #0x100910fbc
0x100910db8: ldrb     w8, [sp, #0x4f]
0x100910dbc: sxtb     w26, w8
0x100910dc0: ldr      x9, [sp, #0x40]
0x100910dc4: cmp      w26, #0
0x100910dc8: csel     x24, x9, x8, lt
0x100910dcc: add      x28, x24, #0x23
0x100910dd0: cmp      x28, x25
0x100910dd4: b.hi     #0x100911794
0x100910dd8: ldr      x27, [sp, #0x38]
0x100910ddc: cmp      x28, #0x16
0x100910de0: b.ls     #0x1009114cc
0x100910de4: and      x8, x28, #0x7ffffffffffffff8
0x100910de8: add      x8, x8, #8
0x100910dec: cmp      x8, #0x18
0x100910df0: mov      w9, #0x19
0x100910df4: csel     x25, x9, x8, eq
0x100910df8: mov      x0, x25
0x100910dfc: bl       #0x10097970c
0x100910e00: orr      x8, x25, #0x8000000000000000
0x100910e04: stp      x0, x28, [sp, #8]
0x100910e08: str      x8, [sp, #0x18]
0x100910e0c: b        #0x1009114d4
0x100910e10: strb     w27, [sp, #0x37]
0x100910e14: add      x0, sp, #0x20
0x100910e18: cmp      w25, #0
0x100910e1c: csel     x1, x26, x22, lt
0x100910e20: adrp     x8, #0x100b24000
0x100910e24: add      x8, x8, #0x807
0x100910e28: ldp      q0, q1, [x8]
0x100910e2c: stp      q0, q1, [x0]
0x100910e30: ldur     q0, [x8, #0x19]
0x100910e34: stur     q0, [x0, #0x19]
0x100910e38: add      x22, x0, #0x29
0x100910e3c: mov      x0, x22
0x100910e40: mov      x2, x23
0x100910e44: bl       #0x100979ae4
0x100910e48: strb     wzr, [x22, x23]
0x100910e4c: ldrb     w9, [sp, #0x37]
0x100910e50: sxtb     w25, w9
0x100910e54: ldp      x10, x27, [sp, #0x28]
0x100910e58: and      x8, x27, #0x7fffffffffffffff
0x100910e5c: sub      x8, x8, #1
0x100910e60: cmp      w25, #0
0x100910e64: mov      w11, #0x16
0x100910e68: csel     x11, x8, x11, lt
0x100910e6c: csel     x22, x10, x9, lt
0x100910e70: sub      x9, x11, x22
0x100910e74: cmp      x9, #4
0x100910e78: b.hi     #0x100910e9c
0x100910e7c: add      x26, x22, #5
0x100910e80: mov      x9, #-0xa
0x100910e84: movk     x9, #0x7fff, lsl #48
0x100910e88: cmp      x26, x9
0x100910e8c: b.hi     #0x100911784
0x100910e90: tbnz     w25, #0x1f, #0x10091125c
0x100910e94: mov      w8, #0x16
0x100910e98: b        #0x100911280
0x100910e9c: ldr      x8, [sp, #0x20]
0x100910ea0: cmp      w25, #0
0x100910ea4: add      x9, sp, #0x20
0x100910ea8: csel     x8, x8, x9, lt
0x100910eac: add      x9, x8, x22
0x100910eb0: mov      w10, #0x20
0x100910eb4: strb     w10, [x9, #4]
0x100910eb8: mov      w10, #0x6e20
0x100910ebc: movk     w10, #0x726f, lsl #16
0x100910ec0: str      w10, [x9]
0x100910ec4: add      x9, x22, #5
0x100910ec8: ldrsb    w10, [sp, #0x37]
0x100910ecc: tbnz     w10, #0x1f, #0x100911250
0x100910ed0: and      w10, w9, #0x7f
0x100910ed4: strb     w10, [sp, #0x37]
0x100910ed8: b        #0x100911254
0x100910edc: strb     w26, [sp, #0x97]
0x100910ee0: add      x0, sp, #0x80
0x100910ee4: cmp      w24, #0
0x100910ee8: add      x8, sp, #0x38
0x100910eec: csel     x1, x25, x8, lt
0x100910ef0: mov      w8, #0x2079
0x100910ef4: strh     w8, [x0, #4]
0x100910ef8: mov      w8, #0x6d65
0x100910efc: movk     w8, #0x7470, lsl #16
0x100910f00: str      w8, [x0]
0x100910f04: add      x23, x0, #6
0x100910f08: mov      x0, x23
0x100910f0c: mov      x2, x22
0x100910f10: bl       #0x100979ae4
0x100910f14: strb     wzr, [x23, x22]
0x100910f18: ldrsb    w8, [x20, #0x17]
0x100910f1c: tbz      w8, #0x1f, #0x100910f30
0x100910f20: ldr      x0, [x20]
0x100910f24: bl       #0x100979700
0x100910f28: stp      xzr, xzr, [x20]
0x100910f2c: str      xzr, [x20, #0x10]
0x100910f30: mov      x23, #0
0x100910f34: ldr      q0, [sp, #0x80]
0x100910f38: str      q0, [x20]
0x100910f3c: ldr      x8, [sp, #0x90]
0x100910f40: str      x8, [x20, #0x10]
0x100910f44: ldrsb    w8, [sp, #0x4f]
0x100910f48: tbz      w8, #0x1f, #0x100910fd4
0x100910f4c: b        #0x100910fcc
0x100910f50: strb     w27, [sp, #0x97]
0x100910f54: add      x0, sp, #0x80
0x100910f58: cmp      w25, #0
0x100910f5c: add      x8, sp, #0x38
0x100910f60: adrp     x9, #0x100b24000
0x100910f64: add      x9, x9, #0x831
0x100910f68: csel     x1, x26, x8, lt
0x100910f6c: ldr      x8, [x9]
0x100910f70: str      x8, [x0]
0x100910f74: ldur     x8, [x9, #6]
0x100910f78: stur     x8, [x0, #6]
0x100910f7c: add      x24, x0, #0xe
0x100910f80: mov      x0, x24
0x100910f84: mov      x2, x23
0x100910f88: bl       #0x100979ae4
0x100910f8c: strb     wzr, [x24, x23]
0x100910f90: ldrsb    w8, [x20, #0x17]
0x100910f94: tbz      w8, #0x1f, #0x100910fa8
0x100910f98: ldr      x0, [x20]
0x100910f9c: bl       #0x100979700
0x100910fa0: stp      xzr, xzr, [x20]
0x100910fa4: str      xzr, [x20, #0x10]
0x100910fa8: mov      x23, #0
0x100910fac: ldr      q0, [sp, #0x80]
0x100910fb0: str      q0, [x20]
0x100910fb4: ldr      x8, [sp, #0x90]
0x100910fb8: str      x8, [x20, #0x10]
0x100910fbc: mov      x0, x22
0x100910fc0: bl       #0x100979700
0x100910fc4: ldrsb    w8, [sp, #0x4f]
0x100910fc8: tbz      w8, #0x1f, #0x100910fd4
0x100910fcc: ldr      x0, [sp, #0x38]
0x100910fd0: bl       #0x100979700
0x100910fd4: ldrsb    w8, [sp, #0x67]
0x100910fd8: tbnz     w8, #0x1f, #0x1009111dc
0x100910fdc: cbz      x23, #0x1009111e8
0x100910fe0: adrp     x8, #0x100c2f000
0x100910fe4: add      x8, x8, #0xff8
0x100910fe8: ldr      x1, [x8]
0x100910fec: mov      x0, x19
0x100910ff0: bl       #0x100979b80
0x100910ff4: mov      x22, x0
0x100910ff8: cbz      x0, #0x1009111a8
0x100910ffc: cmp      x21, #0
0x100911000: cset     w20, eq
0x100911004: mov      w0, #0x1c0
0x100911008: bl       #0x10097970c
0x10091100c: mov      x21, x0
0x100911010: adrp     x8, #0x100ba4000
0x100911014: add      x8, x8, #0xf10
0x100911018: stp      x8, x19, [x0]
0x10091101c: strb     w20, [x0, #0x10]
0x100911020: stp      x23, x22, [x0, #0x18]
0x100911024: movi     v0.16b, #0
0x100911028: stur     q0, [x0, #0x28]
0x10091102c: stur     q0, [x0, #0x38]
0x100911030: stur     q0, [x0, #0x48]
0x100911034: mov      w8, #0x3f800000
0x100911038: str      w8, [x0, #0x58]
0x10091103c: mov      w8, #0xaba7
0x100911040: movk     w8, #0x32aa, lsl #16
0x100911044: str      x8, [x0, #0x60]
0x100911048: stur     q0, [x0, #0x78]
0x10091104c: stur     q0, [x0, #0x88]
0x100911050: stur     q0, [x0, #0x98]
0x100911054: stur     q0, [x0, #0xa8]
0x100911058: stur     q0, [x0, #0xb8]
0x10091105c: stur     q0, [x0, #0xc8]
0x100911060: stur     q0, [x0, #0xd8]
0x100911064: stur     q0, [x0, #0xe8]
0x100911068: stur     q0, [x0, #0xf8]
0x10091106c: strb     wzr, [x0, #0x128]
0x100911070: mov      x8, x0
0x100911074: str      q0, [x8, #0x68]!
0x100911078: stp      q0, q0, [x8, #0xa0]
0x10091107c: stp      xzr, xzr, [x0, #0x138]
0x100911080: str      wzr, [x0, #0x148]
0x100911084: stp      q0, q0, [x0, #0x150]
0x100911088: stp      q0, q0, [x0, #0x170]
0x10091108c: stp      q0, q0, [x0, #0x190]
0x100911090: str      q0, [x0, #0x1b0]
0x100911094: adrp     x0, #0x100b24000
0x100911098: add      x0, x0, #0xd2e
0x10091109c: mov      x1, #0
0x1009110a0: bl       #0x1009798d4
0x1009110a4: str      x0, [x21, #0x130]
0x1009110a8: cbz      x0, #0x100911200
0x1009110ac: mov      x19, x0
0x1009110b0: adrp     x0, #0x100ba9000
0x1009110b4: ldr      x0, [x0, #0xe60]
0x1009110b8: mov      x1, #0
0x1009110bc: mov      w2, #6
0x1009110c0: mov      x3, x19
0x1009110c4: bl       #0x100979910
0x1009110c8: str      x0, [x21, #0x138]
0x1009110cc: cbz      x0, #0x100911240
0x1009110d0: mov      x1, x21
0x1009110d4: bl       #0x1009798f8
0x1009110d8: ldr      x0, [x21, #0x138]
0x1009110dc: adrp     x1, #0x100917000
0x1009110e0: add      x1, x1, #0x77c
0x1009110e4: bl       #0x100979928
0x1009110e8: ldr      x0, [x21, #0x138]
0x1009110ec: bl       #0x100979874
0x1009110f0: adrp     x8, #0x100c2d000
0x1009110f4: add      x8, x8, #0x700
0x1009110f8: ldarb    w8, [x8]
0x1009110fc: tbz      w8, #0, #0x100911754
0x100911100: adrp     x8, #0x100c2d000
0x100911104: ldr      d8, [x8, #0x6f8]
0x100911108: fcmp     d8, #0.0
0x10091110c: b.le     #0x100911200
0x100911110: ldr      x3, [x21, #0x130]
0x100911114: adrp     x0, #0x100ba9000
0x100911118: ldr      x0, [x0, #0xe68]
0x10091111c: mov      x1, #0
0x100911120: mov      x2, #0
0x100911124: bl       #0x100979910
0x100911128: str      x0, [x21, #0x160]
0x10091112c: cbz      x0, #0x100911200
0x100911130: mov      x19, x0
0x100911134: fmov     d0, #0.25000000
0x100911138: fmul     d1, d8, d0
0x10091113c: fmov     d2, #5.00000000
0x100911140: fcmp     d1, d2
0x100911144: fcsel    d1, d2, d1, gt
0x100911148: fmaxnm   d0, d1, d0
0x10091114c: mov      x8, #0xcd6500000000
0x100911150: movk     x8, #0x41cd, lsl #48
0x100911154: fmov     d1, x8
0x100911158: fmul     d0, d0, d1
0x10091115c: fcvtzu   x20, d0
0x100911160: mov      x0, #0
0x100911164: mov      x1, x20
0x100911168: bl       #0x100979958
0x10091116c: mov      x1, x0
0x100911170: lsr      x3, x20, #2
0x100911174: mov      x0, x19
0x100911178: mov      x2, x20
0x10091117c: bl       #0x100979934
0x100911180: ldr      x0, [x21, #0x160]
0x100911184: mov      x1, x21
0x100911188: bl       #0x1009798f8
0x10091118c: ldr      x0, [x21, #0x160]
0x100911190: adrp     x1, #0x100917000
0x100911194: add      x1, x1, #0x808
0x100911198: bl       #0x100979928
0x10091119c: ldr      x0, [x21, #0x160]
0x1009111a0: bl       #0x100979874
0x1009111a4: b        #0x100911200
0x1009111a8: adrp     x1, #0x100b24000
0x1009111ac: add      x1, x1, #0x7bf
0x1009111b0: mov      x0, x20
0x1009111b4: bl       #0x1008e625c
0x1009111b8: adrp     x20, #0x100c31000
0x1009111bc: add      x20, x20, #0xd38
0x1009111c0: ldr      x1, [x20]
0x1009111c4: mov      x0, x23
0x1009111c8: bl       #0x100979b80
0x1009111cc: ldr      x1, [x20]
0x1009111d0: mov      x0, x19
0x1009111d4: bl       #0x100979b80
0x1009111d8: b        #0x1009111fc
0x1009111dc: ldr      x0, [sp, #0x50]
0x1009111e0: bl       #0x100979700
0x1009111e4: cbnz     x23, #0x100910fe0
0x1009111e8: adrp     x8, #0x100c31000
0x1009111ec: add      x8, x8, #0xd38
0x1009111f0: ldr      x1, [x8]
0x1009111f4: mov      x0, x19
0x1009111f8: bl       #0x100979b80
0x1009111fc: mov      x21, #0
0x100911200: ldur     x8, [x29, #-0x70]
0x100911204: adrp     x9, #0x100ba9000
0x100911208: ldr      x9, [x9, #0xe48]
0x10091120c: ldr      x9, [x9]
0x100911210: cmp      x9, x8
0x100911214: b.ne     #0x10091173c
0x100911218: mov      x0, x21
0x10091121c: ldp      x29, x30, [sp, #0x110]
0x100911220: ldp      x20, x19, [sp, #0x100]
0x100911224: ldp      x22, x21, [sp, #0xf0]
0x100911228: ldp      x24, x23, [sp, #0xe0]
0x10091122c: ldp      x26, x25, [sp, #0xd0]
0x100911230: ldp      x28, x27, [sp, #0xc0]
0x100911234: ldp      d9, d8, [sp, #0xb0]
0x100911238: add      sp, sp, #0x120
0x10091123c: ret      
0x100911240: mov      x0, x19
0x100911244: bl       #0x1009798e0
0x100911248: str      xzr, [x21, #0x130]
0x10091124c: b        #0x100911200
0x100911250: str      x9, [sp, #0x28]
0x100911254: strb     wzr, [x8, x9]
0x100911258: b        #0x100911300
0x10091125c: mov      x9, #-0xd
0x100911260: movk     x9, #0x3fff, lsl #48
0x100911264: cmp      x8, x9
0x100911268: b.ls     #0x100911280
0x10091126c: mov      x23, #0x7ffffffffffffff8
0x100911270: mov      x0, #0x7ffffffffffffff8
0x100911274: bl       #0x10097970c
0x100911278: mov      x24, x0
0x10091127c: b        #0x1009112b8
0x100911280: lsl      x8, x8, #1
0x100911284: cmp      x26, x8
0x100911288: csel     x8, x26, x8, hi
0x10091128c: and      x8, x8, #0x7ffffffffffffff8
0x100911290: add      x8, x8, #8
0x100911294: cmp      x8, #0x18
0x100911298: mov      w9, #0x19
0x10091129c: csel     x23, x9, x8, eq
0x1009112a0: mov      x0, x23
0x1009112a4: bl       #0x10097970c
0x1009112a8: mov      x24, x0
0x1009112ac: tbnz     w25, #0x1f, #0x1009112b8
0x1009112b0: add      x1, sp, #0x20
0x1009112b4: b        #0x1009112bc
0x1009112b8: ldr      x1, [sp, #0x20]
0x1009112bc: cbz      x22, #0x1009112cc
0x1009112c0: mov      x0, x24
0x1009112c4: mov      x2, x22
0x1009112c8: bl       #0x100979ae4
0x1009112cc: add      x8, x24, x22
0x1009112d0: mov      w9, #0x20
0x1009112d4: strb     w9, [x8, #4]
0x1009112d8: mov      w9, #0x6e20
0x1009112dc: movk     w9, #0x726f, lsl #16
0x1009112e0: str      w9, [x8]
0x1009112e4: strb     wzr, [x24, x26]
0x1009112e8: tbz      w25, #0x1f, #0x1009112f4
0x1009112ec: ldr      x0, [sp, #0x20]
0x1009112f0: bl       #0x100979700
0x1009112f4: orr      x8, x23, #0x8000000000000000
0x1009112f8: stp      x24, x26, [sp, #0x20]
0x1009112fc: str      x8, [sp, #0x30]
0x100911300: ldp      x8, x11, [sp, #0x30]
0x100911304: str      x8, [sp, #0x90]
0x100911308: ldr      q0, [sp, #0x20]
0x10091130c: str      q0, [sp, #0x80]
0x100911310: stp      xzr, xzr, [sp, #0x28]
0x100911314: str      xzr, [sp, #0x20]
0x100911318: ldrb     w9, [sp, #0x4f]
0x10091131c: sxtb     w10, w9
0x100911320: ldr      x12, [sp, #0x40]
0x100911324: cmp      w10, #0
0x100911328: add      x10, sp, #0x38
0x10091132c: csel     x23, x11, x10, lt
0x100911330: csel     x22, x12, x9, lt
0x100911334: lsr      x10, x8, #0x38
0x100911338: sxtb     w28, w10
0x10091133c: and      x9, x8, #0x7fffffffffffffff
0x100911340: sub      x9, x9, #1
0x100911344: ldr      x11, [sp, #0x88]
0x100911348: cmp      w28, #0
0x10091134c: mov      w12, #0x16
0x100911350: csel     x12, x9, x12, lt
0x100911354: csel     x24, x11, x10, lt
0x100911358: sub      x10, x12, x24
0x10091135c: cmp      x10, x22
0x100911360: b.hs     #0x100911384
0x100911364: add      x27, x24, x22
0x100911368: mov      x8, #-0xa
0x10091136c: movk     x8, #0x7fff, lsl #48
0x100911370: cmp      x27, x8
0x100911374: b.hi     #0x10091178c
0x100911378: tbnz     w28, #0x1f, #0x1009113c8
0x10091137c: mov      w9, #0x16
0x100911380: b        #0x1009113ec
0x100911384: ldr      x25, [sp, #0x80]
0x100911388: cbz      x22, #0x1009113c0
0x10091138c: cmp      w28, #0
0x100911390: add      x8, sp, #0x80
0x100911394: csel     x25, x25, x8, lt
0x100911398: add      x0, x25, x24
0x10091139c: mov      x1, x23
0x1009113a0: mov      x2, x22
0x1009113a4: bl       #0x100979ae4
0x1009113a8: add      x8, x24, x22
0x1009113ac: ldrsb    w9, [sp, #0x97]
0x1009113b0: tbnz     w9, #0x1f, #0x100911468
0x1009113b4: and      w9, w8, #0x7f
0x1009113b8: strb     w9, [sp, #0x97]
0x1009113bc: b        #0x10091146c
0x1009113c0: lsr      x22, x8, #0x38
0x1009113c4: b        #0x100911478
0x1009113c8: mov      x8, #-0xd
0x1009113cc: movk     x8, #0x3fff, lsl #48
0x1009113d0: cmp      x9, x8
0x1009113d4: b.ls     #0x1009113ec
0x1009113d8: mov      x26, #0x7ffffffffffffff8
0x1009113dc: mov      x0, #0x7ffffffffffffff8
0x1009113e0: bl       #0x10097970c
0x1009113e4: mov      x25, x0
0x1009113e8: b        #0x100911424
0x1009113ec: lsl      x8, x9, #1
0x1009113f0: cmp      x27, x8
0x1009113f4: csel     x8, x27, x8, hi
0x1009113f8: and      x8, x8, #0x7ffffffffffffff8
0x1009113fc: add      x8, x8, #8
0x100911400: cmp      x8, #0x18
0x100911404: mov      w9, #0x19
0x100911408: csel     x26, x9, x8, eq
0x10091140c: mov      x0, x26
0x100911410: bl       #0x10097970c
0x100911414: mov      x25, x0
0x100911418: tbnz     w28, #0x1f, #0x100911424
0x10091141c: add      x1, sp, #0x80
0x100911420: b        #0x100911428
0x100911424: ldr      x1, [sp, #0x80]
0x100911428: cbz      x24, #0x100911438
0x10091142c: mov      x0, x25
0x100911430: mov      x2, x24
0x100911434: bl       #0x100979ae4
0x100911438: add      x0, x25, x24
0x10091143c: mov      x1, x23
0x100911440: mov      x2, x22
0x100911444: bl       #0x100979ae4
0x100911448: strb     wzr, [x25, x27]
0x10091144c: tbz      w28, #0x1f, #0x100911458
0x100911450: ldr      x0, [sp, #0x80]
0x100911454: bl       #0x100979700
0x100911458: orr      x8, x26, #0x8000000000000000
0x10091145c: stp      x27, x8, [sp, #0x88]
0x100911460: lsr      x22, x8, #0x38
0x100911464: b        #0x100911478
0x100911468: str      x8, [sp, #0x88]
0x10091146c: strb     wzr, [x25, x8]
0x100911470: ldr      x25, [sp, #0x80]
0x100911474: ldrb     w22, [sp, #0x97]
0x100911478: add      x8, sp, #0x80
0x10091147c: orr      x23, x8, #8
0x100911480: ldrsb    w8, [x20, #0x17]
0x100911484: tbz      w8, #0x1f, #0x100911498
0x100911488: ldr      x0, [x20]
0x10091148c: bl       #0x100979700
0x100911490: stp      xzr, xzr, [x20]
0x100911494: str      xzr, [x20, #0x10]
0x100911498: ldr      x8, [x23]
0x10091149c: stp      x25, x8, [x20]
0x1009114a0: ldur     x8, [x23, #7]
0x1009114a4: stur     x8, [x20, #0xf]
0x1009114a8: strb     w22, [x20, #0x17]
0x1009114ac: ldrsb    w8, [sp, #0x37]
0x1009114b0: tbz      w8, #0x1f, #0x1009114bc
0x1009114b4: ldr      x0, [sp, #0x20]
0x1009114b8: bl       #0x100979700
0x1009114bc: mov      x23, #0
0x1009114c0: ldrsb    w8, [sp, #0x4f]
0x1009114c4: tbz      w8, #0x1f, #0x100910fd4
0x1009114c8: b        #0x100910fcc
0x1009114cc: strb     w28, [sp, #0x1f]
0x1009114d0: add      x0, sp, #8
0x1009114d4: cmp      w26, #0
0x1009114d8: add      x8, sp, #0x38
0x1009114dc: mov      w9, #0x736c
0x1009114e0: movk     w9, #0x2820, lsl #16
0x1009114e4: stur     w9, [x0, #0x1f]
0x1009114e8: adrp     x9, #0x100b24000
0x1009114ec: add      x9, x9, #0x840
0x1009114f0: ldp      q0, q1, [x9]
0x1009114f4: csel     x1, x27, x8, lt
0x1009114f8: stp      q0, q1, [x0]
0x1009114fc: add      x25, x0, #0x23
0x100911500: mov      x0, x25
0x100911504: mov      x2, x24
0x100911508: bl       #0x100979ae4
0x10091150c: strb     wzr, [x25, x24]
0x100911510: ldrb     w9, [sp, #0x1f]
0x100911514: sxtb     w8, w9
0x100911518: ldp      x11, x10, [sp, #0x10]
0x10091151c: and      x10, x10, #0x7fffffffffffffff
0x100911520: sub      x10, x10, #1
0x100911524: cmp      w8, #0
0x100911528: mov      w12, #0x16
0x10091152c: csel     x1, x10, x12, lt
0x100911530: csel     x3, x11, x9, lt
0x100911534: sub      x9, x1, x3
0x100911538: cmp      x9, #2
0x10091153c: b.hi     #0x100911568
0x100911540: sub      x8, x3, x1
0x100911544: adrp     x7, #0x100b24000
0x100911548: add      x7, x7, #0x864
0x10091154c: add      x0, sp, #8
0x100911550: add      x2, x8, #3
0x100911554: mov      x4, x3
0x100911558: mov      x5, #0
0x10091155c: mov      w6, #3
0x100911560: bl       #0x1009795bc
0x100911564: b        #0x1009115ac
0x100911568: ldr      x9, [sp, #8]
0x10091156c: cmp      w8, #0
0x100911570: add      x8, sp, #8
0x100911574: csel     x8, x9, x8, lt
0x100911578: add      x9, x8, x3
0x10091157c: mov      w10, #0x20
0x100911580: strb     w10, [x9, #2]
0x100911584: mov      w10, #0x3a29
0x100911588: strh     w10, [x9]
0x10091158c: add      x9, x3, #3
0x100911590: ldrsb    w10, [sp, #0x1f]
0x100911594: tbnz     w10, #0x1f, #0x1009115a4
0x100911598: and      w10, w9, #0x7f
0x10091159c: strb     w10, [sp, #0x1f]
0x1009115a0: b        #0x1009115a8
0x1009115a4: str      x9, [sp, #0x10]
0x1009115a8: strb     wzr, [x8, x9]
0x1009115ac: ldur     q0, [sp, #8]
0x1009115b0: str      q0, [sp, #0x20]
0x1009115b4: ldr      x8, [sp, #0x18]
0x1009115b8: str      x8, [sp, #0x30]
0x1009115bc: stp      xzr, xzr, [sp, #0x10]
0x1009115c0: str      xzr, [sp, #8]
0x1009115c4: ldr      x0, [sp, #0x68]
0x1009115c8: cbz      x0, #0x100911604
0x1009115cc: adrp     x24, #0x100c31000
0x1009115d0: add      x24, x24, #0xba8
0x1009115d4: ldr      x1, [x24]
0x1009115d8: bl       #0x100979b80
0x1009115dc: cbz      x0, #0x100911604
0x1009115e0: ldr      x0, [sp, #0x68]
0x1009115e4: ldr      x1, [x24]
0x1009115e8: bl       #0x100979b80
0x1009115ec: adrp     x8, #0x100c31000
0x1009115f0: add      x8, x8, #0xe48
0x1009115f4: ldr      x1, [x8]
0x1009115f8: bl       #0x100979b80
0x1009115fc: mov      x24, x0
0x100911600: b        #0x10091160c
0x100911604: adrp     x24, #0x100b24000
0x100911608: add      x24, x24, #0x868
0x10091160c: mov      x0, x24
0x100911610: bl       #0x100979eb0
0x100911614: mov      x25, x0
0x100911618: ldrb     w9, [sp, #0x37]
0x10091161c: sxtb     w8, w9
0x100911620: ldp      x11, x10, [sp, #0x28]
0x100911624: and      x10, x10, #0x7fffffffffffffff
0x100911628: sub      x10, x10, #1
0x10091162c: cmp      w8, #0
0x100911630: mov      w12, #0x16
0x100911634: csel     x1, x10, x12, lt
0x100911638: csel     x26, x11, x9, lt
0x10091163c: sub      x9, x1, x26
0x100911640: cmp      x9, x0
0x100911644: b.hs     #0x100911670
0x100911648: add      x8, x26, x25
0x10091164c: sub      x2, x8, x1
0x100911650: add      x0, sp, #0x20
0x100911654: mov      x3, x26
0x100911658: mov      x4, x26
0x10091165c: mov      x5, #0
0x100911660: mov      x6, x25
0x100911664: mov      x7, x24
0x100911668: bl       #0x1009795bc
0x10091166c: b        #0x1009116b4
0x100911670: cbz      x25, #0x1009116b4
0x100911674: ldr      x9, [sp, #0x20]
0x100911678: cmp      w8, #0
0x10091167c: add      x8, sp, #0x20
0x100911680: csel     x27, x9, x8, lt
0x100911684: add      x0, x27, x26
0x100911688: mov      x1, x24
0x10091168c: mov      x2, x25
0x100911690: bl       #0x100979ae4
0x100911694: add      x8, x26, x25
0x100911698: ldrsb    w9, [sp, #0x37]
0x10091169c: tbnz     w9, #0x1f, #0x1009116ac
0x1009116a0: and      w9, w8, #0x7f
0x1009116a4: strb     w9, [sp, #0x37]
0x1009116a8: b        #0x1009116b0
0x1009116ac: str      x8, [sp, #0x28]
0x1009116b0: strb     wzr, [x27, x8]
0x1009116b4: add      x8, sp, #0x20
0x1009116b8: orr      x8, x8, #8
0x1009116bc: ldr      x25, [sp, #0x20]
0x1009116c0: ldr      x9, [x8]
0x1009116c4: str      x9, [sp, #0x70]
0x1009116c8: ldur     x8, [x8, #7]
0x1009116cc: stur     x8, [sp, #0x77]
0x1009116d0: ldrb     w24, [sp, #0x37]
0x1009116d4: stp      xzr, xzr, [sp, #0x20]
0x1009116d8: str      xzr, [sp, #0x30]
0x1009116dc: ldrsb    w8, [x20, #0x17]
0x1009116e0: tbnz     w8, #0x1f, #0x1009116fc
0x1009116e4: ldr      x8, [sp, #0x70]
0x1009116e8: stp      x25, x8, [x20]
0x1009116ec: ldur     x8, [sp, #0x77]
0x1009116f0: stur     x8, [x20, #0xf]
0x1009116f4: strb     w24, [x20, #0x17]
0x1009116f8: b        #0x100911728
0x1009116fc: ldr      x0, [x20]
0x100911700: bl       #0x100979700
0x100911704: ldrsb    w8, [sp, #0x37]
0x100911708: ldr      x9, [sp, #0x70]
0x10091170c: stp      x25, x9, [x20]
0x100911710: ldur     x9, [sp, #0x77]
0x100911714: stur     x9, [x20, #0xf]
0x100911718: strb     w24, [x20, #0x17]
0x10091171c: tbz      w8, #0x1f, #0x100911728
0x100911720: ldr      x0, [sp, #0x20]
0x100911724: bl       #0x100979700
0x100911728: ldrsb    w8, [sp, #0x1f]
0x10091172c: tbz      w8, #0x1f, #0x100910fbc
0x100911730: ldr      x0, [sp, #8]
0x100911734: bl       #0x100979700
0x100911738: b        #0x100910fbc
0x10091173c: bl       #0x1009797b4
0x100911740: bl       #0x1008e6198
0x100911744: bl       #0x1008e6198
0x100911748: b        #0x100911798
0x10091174c: bl       #0x1008e6198
0x100911750: b        #0x100911798
0x100911754: bl       #0x100974fcc
0x100911758: b        #0x100911100
0x10091175c: bl       #0x1008e6198
0x100911760: b        #0x100911798
0x100911764: bl       #0x1008e6198
0x100911768: b        #0x100911798
0x10091176c: bl       #0x1008e6198
0x100911770: b        #0x100911798
0x100911774: bl       #0x1008e6198
0x100911778: b        #0x100911798
0x10091177c: bl       #0x1008e6198
0x100911780: b        #0x100911798
0x100911784: bl       #0x1008e6198
0x100911788: b        #0x100911798
0x10091178c: bl       #0x1008e6198
0x100911790: b        #0x100911798
0x100911794: bl       #0x1008e6198
0x100911798: brk      #1
0x10091179c: mov      x19, x0
0x1009117a0: b        #0x1009117f4
0x1009117a4: mov      x19, x0
0x1009117a8: b        #0x1009117c4
0x1009117ac: b        #0x1009117dc
0x1009117b0: mov      x19, x0
0x1009117b4: ldrsb    w8, [sp, #0x37]
0x1009117b8: tbz      w8, #0x1f, #0x1009117c4
0x1009117bc: ldr      x0, [sp, #0x20]
0x1009117c0: bl       #0x100979700
0x1009117c4: ldrsb    w8, [sp, #0x1f]
0x1009117c8: tbz      w8, #0x1f, #0x1009117e0
0x1009117cc: ldr      x0, [sp, #8]
0x1009117d0: bl       #0x100979700
0x1009117d4: b        #0x1009117e0
0x1009117d8: b        #0x1009117dc
0x1009117dc: mov      x19, x0
0x1009117e0: mov      x0, x22
0x1009117e4: bl       #0x100979700
0x1009117e8: b        #0x100911834
0x1009117ec: mov      x19, x0
0x1009117f0: tbz      w28, #0x1f, #0x100911834
0x1009117f4: ldr      x0, [sp, #0x80]
0x1009117f8: bl       #0x100979700
0x1009117fc: b        #0x100911834
0x100911800: b        #0x100911830
0x100911804: mov      x19, x0
0x100911808: tbz      x27, #0x3f, #0x100911834
0x10091180c: ldr      x0, [sp, #0x20]
0x100911810: bl       #0x100979700
0x100911814: b        #0x100911834
0x100911818: b        #0x100911830
0x10091181c: b        #0x100911830
0x100911820: mov      x19, x0
0x100911824: tbz      x27, #0x3f, #0x100911880
0x100911828: add      x8, sp, #0x50
0x10091182c: b        #0x10091186c
0x100911830: mov      x19, x0
0x100911834: ldrsb    w8, [sp, #0x4f]
0x100911838: tbz      w8, #0x1f, #0x10091184c
0x10091183c: ldr      x0, [sp, #0x38]
0x100911840: bl       #0x100979700
0x100911844: b        #0x10091184c
0x100911848: mov      x19, x0
0x10091184c: ldrsb    w8, [sp, #0x67]
0x100911850: tbz      w8, #0x1f, #0x100911880
0x100911854: ldr      x0, [sp, #0x50]
0x100911858: b        #0x100911870
0x10091185c: mov      x19, x0
0x100911860: ldrsb    w8, [sp, #0x97]
0x100911864: tbz      w8, #0x1f, #0x100911880
0x100911868: add      x8, sp, #0x80
0x10091186c: ldr      x0, [x8]
0x100911870: bl       #0x100979700
0x100911874: mov      x0, x19
0x100911878: bl       #0x10097958c
0x10091187c: mov      x19, x0
0x100911880: mov      x0, x19
0x100911884: bl       #0x10097958c
