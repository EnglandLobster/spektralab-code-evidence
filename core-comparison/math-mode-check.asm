FUNCTION 0x100911ba0 0x10091223c
0x100911ba0: stp      x28, x27, [sp, #-0x60]!
0x100911ba4: stp      x26, x25, [sp, #0x10]
0x100911ba8: stp      x24, x23, [sp, #0x20]
0x100911bac: stp      x22, x21, [sp, #0x30]
0x100911bb0: stp      x20, x19, [sp, #0x40]
0x100911bb4: stp      x29, x30, [sp, #0x50]
0x100911bb8: add      x29, sp, #0x50
0x100911bbc: sub      sp, sp, #0x290
0x100911bc0: mov      x19, x1
0x100911bc4: mov      x20, x0
0x100911bc8: mov      x8, #0
0x100911bcc: adrp     x9, #0x100ba9000
0x100911bd0: ldr      x9, [x9, #0xe48]
0x100911bd4: ldr      x9, [x9]
0x100911bd8: stur     x9, [x29, #-0x58]
0x100911bdc: adrp     x9, #0x1009c1000
0x100911be0: ldr      q0, [x9, #0xec0]
0x100911be4: adrp     x9, #0x100994000
0x100911be8: ldr      q1, [x9, #0x2d0]
0x100911bec: mov      w9, #0x70a4
0x100911bf0: movk     w9, #0x3ebd, lsl #16
0x100911bf4: dup      v2.4s, w9
0x100911bf8: mov      w9, #0xcccd
0x100911bfc: movk     w9, #0x3dcc, lsl #16
0x100911c00: dup      v3.4s, w9
0x100911c04: movi     v4.4s, #0x3f, lsl #24
0x100911c08: fmov     v5.4s, #1.00000000
0x100911c0c: mov      w9, #4
0x100911c10: dup      v6.2d, x9
0x100911c14: add      x9, sp, #0x88
0x100911c18: fmov     x10, d1
0x100911c1c: ucvtf    s7, x10
0x100911c20: mov      x10, v1.d[1]
0x100911c24: ucvtf    s16, x10
0x100911c28: fmov     x10, d0
0x100911c2c: ucvtf    s17, x10
0x100911c30: mov      v7.s[1], v16.s[0]
0x100911c34: mov      x10, v0.d[1]
0x100911c38: ucvtf    s16, x10
0x100911c3c: mov      v7.s[2], v17.s[0]
0x100911c40: mov      v7.s[3], v16.s[0]
0x100911c44: mov      v16.16b, v3.16b
0x100911c48: fmla     v16.4s, v2.4s, v7.4s
0x100911c4c: mov      v17.16b, v5.16b
0x100911c50: fmla     v17.4s, v4.4s, v16.4s
0x100911c54: add      x10, x9, x8
0x100911c58: st2      {v16.4s, v17.4s}, [x10]
0x100911c5c: add      v0.2d, v0.2d, v6.2d
0x100911c60: add      v1.2d, v1.2d, v6.2d
0x100911c64: add      x8, x8, #0x20
0x100911c68: cmp      x8, #0x200
0x100911c6c: b.ne     #0x100911c18
0x100911c70: add      x23, x20, #0x148
0x100911c74: ldxr     w8, [x23]
0x100911c78: add      w8, w8, #1
0x100911c7c: stxr     w9, w8, [x23]
0x100911c80: cbnz     w9, #0x100911c74
0x100911c84: bl       #0x100979664
0x100911c88: str      x0, [x20, #0x150]
0x100911c8c: ldr      x8, [x20, #0x140]
0x100911c90: cbz      x8, #0x100911cac
0x100911c94: ldr      x0, [x20, #0x130]
0x100911c98: cbz      x0, #0x100911cac
0x100911c9c: adrp     x2, #0x100916000
0x100911ca0: add      x2, x2, #0x24c
0x100911ca4: mov      x1, x20
0x100911ca8: bl       #0x10097994c
0x100911cac: add      x0, x20, #0x60
0x100911cb0: bl       #0x100979634
0x100911cb4: ldr      x8, [x20, #0xe8]
0x100911cb8: str      x8, [x20, #0xf0]
0x100911cbc: add      x0, x20, #0x60
0x100911cc0: bl       #0x100979640
0x100911cc4: stp      xzr, xzr, [sp, #0x70]
0x100911cc8: str      xzr, [sp, #0x80]
0x100911ccc: add      x8, sp, #0x60
0x100911cd0: add      x2, sp, #0x70
0x100911cd4: mov      x0, x20
0x100911cd8: mov      w1, #0x200
0x100911cdc: bl       #0x100912308
0x100911ce0: ldr      x8, [sp, #0x68]
0x100911ce4: cbz      x8, #0x100911d08
0x100911ce8: ldr      x0, [x8]
0x100911cec: adrp     x8, #0x100c2f000
0x100911cf0: add      x8, x8, #0x648
0x100911cf4: ldr      x1, [x8]
0x100911cf8: bl       #0x100979b80
0x100911cfc: add      x1, sp, #0x88
0x100911d00: mov      w2, #0x200
0x100911d04: bl       #0x100979ad8
0x100911d08: add      x8, sp, #0x50
0x100911d0c: add      x2, sp, #0x70
0x100911d10: mov      x0, x20
0x100911d14: mov      w1, #0x100
0x100911d18: bl       #0x100912308
0x100911d1c: ldr      x22, [sp, #0x68]
0x100911d20: cbz      x22, #0x100911df4
0x100911d24: ldr      x24, [sp, #0x58]
0x100911d28: cbz      x24, #0x100911df4
0x100911d2c: mov      w0, #0x30
0x100911d30: bl       #0x10097970c
0x100911d34: mov      x21, x0
0x100911d38: add      x8, x0, #0x30
0x100911d3c: stp      x8, x8, [sp, #0x40]
0x100911d40: stp      x22, xzr, [x0]
0x100911d44: stp      xzr, x24, [x0, #0x10]
0x100911d48: stp      xzr, xzr, [x0, #0x20]
0x100911d4c: str      x0, [sp, #0x38]
0x100911d50: adrp     x1, #0x100b24000
0x100911d54: add      x1, x1, #0x893
0x100911d58: add      x2, sp, #0x38
0x100911d5c: add      x4, sp, #0x70
0x100911d60: mov      x0, x20
0x100911d64: mov      w3, #0x40
0x100911d68: bl       #0x100914568
0x100911d6c: cbz      w0, #0x100911ee8
0x100911d70: add      x1, sp, #0x70
0x100911d74: mov      x0, x20
0x100911d78: bl       #0x1009154ec
0x100911d7c: mov      x22, x0
0x100911d80: mov      x0, x21
0x100911d84: bl       #0x100979700
0x100911d88: tbz      w22, #0, #0x100911ef0
0x100911d8c: ldr      x0, [x24]
0x100911d90: adrp     x8, #0x100c2f000
0x100911d94: add      x8, x8, #0x648
0x100911d98: ldr      x1, [x8]
0x100911d9c: bl       #0x100979b80
0x100911da0: mov      x8, #0
0x100911da4: mov      x21, #0
0x100911da8: mov      x22, #0
0x100911dac: add      x9, sp, #0x88
0x100911db0: add      x9, x9, #4
0x100911db4: b        #0x100911dcc
0x100911db8: add      x22, x22, #1
0x100911dbc: add      x8, x8, #4
0x100911dc0: add      x9, x9, #8
0x100911dc4: cmp      x8, #0x100
0x100911dc8: b.eq     #0x100912078
0x100911dcc: ldr      s0, [x0, x8]
0x100911dd0: fcmp     s0, #0.0
0x100911dd4: b.eq     #0x100911db8
0x100911dd8: ldp      s1, s2, [x9, #-4]
0x100911ddc: fnmul    s3, s2, s1
0x100911de0: fmadd    s1, s1, s2, s3
0x100911de4: fcmp     s0, s1
0x100911de8: b.eq     #0x100911dbc
0x100911dec: add      x21, x21, #1
0x100911df0: b        #0x100911dbc
0x100911df4: ldrb     w8, [sp, #0x87]
0x100911df8: sxtb     w24, w8
0x100911dfc: ldr      x9, [sp, #0x78]
0x100911e00: cmp      w24, #0
0x100911e04: csel     x21, x9, x8, lt
0x100911e08: add      x26, x21, #0x1f
0x100911e0c: mov      x8, #-0xa
0x100911e10: movk     x8, #0x7fff, lsl #48
0x100911e14: cmp      x26, x8
0x100911e18: b.hi     #0x10091217c
0x100911e1c: ldr      x25, [sp, #0x70]
0x100911e20: cmp      x26, #0x16
0x100911e24: b.ls     #0x100911e54
0x100911e28: and      x8, x26, #0x7ffffffffffffff8
0x100911e2c: add      x8, x8, #8
0x100911e30: cmp      x8, #0x18
0x100911e34: mov      w9, #0x19
0x100911e38: csel     x22, x9, x8, eq
0x100911e3c: mov      x0, x22
0x100911e40: bl       #0x10097970c
0x100911e44: orr      x8, x22, #0x8000000000000000
0x100911e48: stp      x0, x26, [sp, #0x38]
0x100911e4c: str      x8, [sp, #0x48]
0x100911e50: b        #0x100911e5c
0x100911e54: strb     w26, [sp, #0x4f]
0x100911e58: add      x0, sp, #0x38
0x100911e5c: cmp      w24, #0
0x100911e60: add      x8, sp, #0x70
0x100911e64: adrp     x9, #0x100b24000
0x100911e68: add      x9, x9, #0x873
0x100911e6c: csel     x1, x25, x8, lt
0x100911e70: ldr      q0, [x9]
0x100911e74: str      q0, [x0]
0x100911e78: ldur     q0, [x9, #0xf]
0x100911e7c: stur     q0, [x0, #0xf]
0x100911e80: add      x22, x0, #0x1f
0x100911e84: mov      x0, x22
0x100911e88: mov      x2, x21
0x100911e8c: bl       #0x100979ae4
0x100911e90: strb     wzr, [x22, x21]
0x100911e94: ldrsb    w8, [x19, #0x17]
0x100911e98: tbz      w8, #0x1f, #0x100911eac
0x100911e9c: ldr      x0, [x19]
0x100911ea0: bl       #0x100979700
0x100911ea4: stp      xzr, xzr, [x19]
0x100911ea8: str      xzr, [x19, #0x10]
0x100911eac: ldur     q0, [sp, #0x38]
0x100911eb0: str      q0, [x19]
0x100911eb4: ldr      x8, [sp, #0x48]
0x100911eb8: str      x8, [x19, #0x10]
0x100911ebc: bl       #0x100979664
0x100911ec0: str      x0, [x20, #0x150]
0x100911ec4: ldxr     w8, [x23]
0x100911ec8: sub      w8, w8, #1
0x100911ecc: stxr     w9, w8, [x23]
0x100911ed0: cbnz     w9, #0x100911ec4
0x100911ed4: ldr      x8, [x20, #0x140]
0x100911ed8: cbz      x8, #0x100911ff0
0x100911edc: ldr      x0, [x20, #0x130]
0x100911ee0: cbnz     x0, #0x100911fe0
0x100911ee4: b        #0x100911ff0
0x100911ee8: mov      x0, x21
0x100911eec: bl       #0x100979700
0x100911ef0: ldrb     w8, [sp, #0x87]
0x100911ef4: sxtb     w24, w8
0x100911ef8: ldr      x9, [sp, #0x78]
0x100911efc: cmp      w24, #0
0x100911f00: csel     x21, x9, x8, lt
0x100911f04: add      x26, x21, #0x1a
0x100911f08: mov      x8, #-0xa
0x100911f0c: movk     x8, #0x7fff, lsl #48
0x100911f10: cmp      x26, x8
0x100911f14: b.hi     #0x100912184
0x100911f18: ldr      x25, [sp, #0x70]
0x100911f1c: cmp      x26, #0x16
0x100911f20: b.ls     #0x100911f50
0x100911f24: and      x8, x26, #0x7ffffffffffffff8
0x100911f28: add      x8, x8, #8
0x100911f2c: cmp      x8, #0x18
0x100911f30: mov      w9, #0x19
0x100911f34: csel     x22, x9, x8, eq
0x100911f38: mov      x0, x22
0x100911f3c: bl       #0x10097970c
0x100911f40: orr      x8, x22, #0x8000000000000000
0x100911f44: stp      x0, x26, [sp, #0x38]
0x100911f48: str      x8, [sp, #0x48]
0x100911f4c: b        #0x100911f58
0x100911f50: strb     w26, [sp, #0x4f]
0x100911f54: add      x0, sp, #0x38
0x100911f58: cmp      w24, #0
0x100911f5c: add      x8, sp, #0x70
0x100911f60: adrp     x9, #0x100b24000
0x100911f64: add      x9, x9, #0x8a2
0x100911f68: csel     x1, x25, x8, lt
0x100911f6c: ldr      q0, [x9]
0x100911f70: str      q0, [x0]
0x100911f74: ldur     q0, [x9, #0xa]
0x100911f78: stur     q0, [x0, #0xa]
0x100911f7c: add      x22, x0, #0x1a
0x100911f80: mov      x0, x22
0x100911f84: mov      x2, x21
0x100911f88: bl       #0x100979ae4
0x100911f8c: strb     wzr, [x22, x21]
0x100911f90: ldrsb    w8, [x19, #0x17]
0x100911f94: tbz      w8, #0x1f, #0x100911fa8
0x100911f98: ldr      x0, [x19]
0x100911f9c: bl       #0x100979700
0x100911fa0: stp      xzr, xzr, [x19]
0x100911fa4: str      xzr, [x19, #0x10]
0x100911fa8: ldur     q0, [sp, #0x38]
0x100911fac: str      q0, [x19]
0x100911fb0: ldr      x8, [sp, #0x48]
0x100911fb4: str      x8, [x19, #0x10]
0x100911fb8: bl       #0x100979664
0x100911fbc: str      x0, [x20, #0x150]
0x100911fc0: ldxr     w8, [x23]
0x100911fc4: sub      w8, w8, #1
0x100911fc8: stxr     w9, w8, [x23]
0x100911fcc: cbnz     w9, #0x100911fc0
0x100911fd0: ldr      x8, [x20, #0x140]
0x100911fd4: cbz      x8, #0x100911ff0
0x100911fd8: ldr      x0, [x20, #0x130]
0x100911fdc: cbz      x0, #0x100911ff0
0x100911fe0: adrp     x2, #0x100916000
0x100911fe4: add      x2, x2, #0x24c
0x100911fe8: mov      x1, x20
0x100911fec: bl       #0x10097994c
0x100911ff0: mov      w19, #0
0x100911ff4: ldr      x0, [sp, #0x50]
0x100911ff8: cbz      x0, #0x100912010
0x100911ffc: ldr      x1, [sp, #0x58]
0x100912000: cbz      x1, #0x100912010
0x100912004: ldr      x8, [x0]
0x100912008: ldr      x8, [x8, #0x50]
0x10091200c: blr      x8
0x100912010: ldr      x0, [sp, #0x60]
0x100912014: cbz      x0, #0x10091202c
0x100912018: ldr      x1, [sp, #0x68]
0x10091201c: cbz      x1, #0x10091202c
0x100912020: ldr      x8, [x0]
0x100912024: ldr      x8, [x8, #0x50]
0x100912028: blr      x8
0x10091202c: ldrsb    w8, [sp, #0x87]
0x100912030: tbz      w8, #0x1f, #0x10091203c
0x100912034: ldr      x0, [sp, #0x70]
0x100912038: bl       #0x100979700
0x10091203c: ldur     x8, [x29, #-0x58]
0x100912040: adrp     x9, #0x100ba9000
0x100912044: ldr      x9, [x9, #0xe48]
0x100912048: ldr      x9, [x9]
0x10091204c: cmp      x9, x8
0x100912050: b.ne     #0x100912178
0x100912054: mov      x0, x19
0x100912058: add      sp, sp, #0x290
0x10091205c: ldp      x29, x30, [sp, #0x50]
0x100912060: ldp      x20, x19, [sp, #0x40]
0x100912064: ldp      x22, x21, [sp, #0x30]
0x100912068: ldp      x24, x23, [sp, #0x20]
0x10091206c: ldp      x26, x25, [sp, #0x10]
0x100912070: ldp      x28, x27, [sp], #0x60
0x100912074: ret      
0x100912078: bl       #0x100979664
0x10091207c: str      x0, [x20, #0x150]
0x100912080: ldxr     w8, [x23]
0x100912084: sub      w8, w8, #1
0x100912088: stxr     w9, w8, [x23]
0x10091208c: cbnz     w9, #0x100912080
0x100912090: ldr      x8, [x20, #0x140]
0x100912094: cbz      x8, #0x1009120b0
0x100912098: ldr      x0, [x20, #0x130]
0x10091209c: cbz      x0, #0x1009120b0
0x1009120a0: adrp     x2, #0x100916000
0x1009120a4: add      x2, x2, #0x24c
0x1009120a8: mov      x1, x20
0x1009120ac: bl       #0x10097994c
0x1009120b0: cmp      x22, #0x40
0x1009120b4: b.ne     #0x1009120cc
0x1009120b8: adrp     x1, #0x100b24000
0x1009120bc: add      x1, x1, #0x8bd
0x1009120c0: mov      x0, x19
0x1009120c4: bl       #0x1008e625c
0x1009120c8: b        #0x100911ff0
0x1009120cc: cbz      x21, #0x100912158
0x1009120d0: add      x8, sp, #8
0x1009120d4: mov      x0, x21
0x1009120d8: bl       #0x1009796d0
0x1009120dc: adrp     x0, #0x100b24000
0x1009120e0: add      x0, x0, #0x9e6
0x1009120e4: add      x8, sp, #0x20
0x1009120e8: add      x1, sp, #8
0x1009120ec: bl       #0x1009161f0
0x1009120f0: adrp     x1, #0x100b24000
0x1009120f4: add      x1, x1, #0xa04
0x1009120f8: add      x8, sp, #0x38
0x1009120fc: add      x0, sp, #0x20
0x100912100: bl       #0x100904754
0x100912104: ldrsb    w8, [x19, #0x17]
0x100912108: tbz      w8, #0x1f, #0x10091211c
0x10091210c: ldr      x0, [x19]
0x100912110: bl       #0x100979700
0x100912114: stp      xzr, xzr, [x19]
0x100912118: str      xzr, [x19, #0x10]
0x10091211c: ldur     q0, [sp, #0x38]
0x100912120: str      q0, [x19]
0x100912124: ldr      x8, [sp, #0x48]
0x100912128: str      x8, [x19, #0x10]
0x10091212c: strb     wzr, [sp, #0x4f]
0x100912130: strb     wzr, [sp, #0x38]
0x100912134: ldrsb    w8, [sp, #0x37]
0x100912138: tbz      w8, #0x1f, #0x100912144
0x10091213c: ldr      x0, [sp, #0x20]
0x100912140: bl       #0x100979700
0x100912144: ldrsb    w8, [sp, #0x1f]
0x100912148: tbz      w8, #0x1f, #0x100911ff0
0x10091214c: ldr      x0, [sp, #8]
0x100912150: bl       #0x100979700
0x100912154: b        #0x100911ff0
0x100912158: adrp     x1, #0x100b24000
0x10091215c: add      x1, x1, #0xabe
0x100912160: mov      x0, x19
0x100912164: bl       #0x1008e625c
0x100912168: mov      w19, #1
0x10091216c: ldr      x0, [sp, #0x50]
0x100912170: cbnz     x0, #0x100911ffc
0x100912174: b        #0x100912010
0x100912178: bl       #0x1009797b4
0x10091217c: bl       #0x1008e6198
0x100912180: b        #0x100912188
0x100912184: bl       #0x1008e6198
0x100912188: brk      #1
0x10091218c: mov      x19, x0
0x100912190: ldrsb    w8, [sp, #0x37]
0x100912194: tbz      w8, #0x1f, #0x1009121a8
0x100912198: ldr      x0, [sp, #0x20]
0x10091219c: bl       #0x100979700
0x1009121a0: b        #0x1009121a8
0x1009121a4: mov      x19, x0
0x1009121a8: ldrsb    w8, [sp, #0x1f]
0x1009121ac: tbz      w8, #0x1f, #0x1009121fc
0x1009121b0: ldr      x0, [sp, #8]
0x1009121b4: bl       #0x100979700
0x1009121b8: b        #0x1009121fc
0x1009121bc: b        #0x1009121f8
0x1009121c0: b        #0x1009121f8
0x1009121c4: b        #0x1009121f8
0x1009121c8: b        #0x1009121cc
0x1009121cc: mov      x19, x0
0x1009121d0: cbz      w1, #0x100912224
0x1009121d4: mov      x0, x19
0x1009121d8: bl       #0x1008e41d8
0x1009121dc: b        #0x1009121f8
0x1009121e0: b        #0x1009121f8
0x1009121e4: mov      x19, x0
0x1009121e8: mov      x0, x21
0x1009121ec: bl       #0x100979700
0x1009121f0: b        #0x1009121fc
0x1009121f4: b        #0x100912208
0x1009121f8: mov      x19, x0
0x1009121fc: add      x0, sp, #0x50
0x100912200: bl       #0x1009161a8
0x100912204: b        #0x10091220c
0x100912208: mov      x19, x0
0x10091220c: add      x0, sp, #0x60
0x100912210: bl       #0x1009161a8
0x100912214: ldrsb    w8, [sp, #0x87]
0x100912218: tbz      w8, #0x1f, #0x100912224
0x10091221c: ldr      x0, [sp, #0x70]
0x100912220: bl       #0x100979700
0x100912224: mov      x0, x19
0x100912228: bl       #0x10097958c
0x10091222c: mov      x19, x0
0x100912230: ldrsb    w8, [sp, #0x87]
0x100912234: tbnz     w8, #0x1f, #0x10091221c
0x100912238: b        #0x100912224
