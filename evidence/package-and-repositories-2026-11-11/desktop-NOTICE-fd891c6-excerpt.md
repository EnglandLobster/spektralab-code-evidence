Excerpt of `engine/resources_product/NOTICE.md` in JamesQiu2005/SpektraLab at commit
`fd891c6bc5eb350387602deb5c1ef9b6dcdab948`: the paragraph that the iOS file replaces.

---

**In the macOS app, every build since 1.3.3** (2026-10-09; Debug only before that). The engine loads a profile from
`<resources>/profiles/<stock>.json`, so `engine/build.sh bundle` copies these profiles and this
notice into the app's `Resources/engine/`; the app lists them only where
`FeatureFlags.blackAndWhite` is on. `engine/tests/bw_checks.py` renders them from a scratch
resources directory that overlays this one on `engine/resources/`. The engine does not read `paper_grades.json` or this
directory's `neutral_print_filters.json`; a caller sends the pack on the wire.
