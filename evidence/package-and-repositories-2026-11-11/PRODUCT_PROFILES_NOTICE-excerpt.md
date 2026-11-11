Excerpt of `Payload/SpektraLab.app/EngineResources/PRODUCT_PROFILES_NOTICE.md` in the SpektraLab iOS 1.0.1 package: the two paragraphs
that replace the "In the macOS app" paragraph of the desktop file. The complete file is 5402 bytes,
SHA-256 `8fd2e065323948eddddaa5750b394a31baca995de599e64cea798d41a9078d18`.

---

**On the desktop** (SpektraLab, where these files are made): `engine/build.sh bundle` copies the
profiles and this notice into the macOS app's `Resources/engine/`, and the app lists them only
where its `FeatureFlags.blackAndWhite` is on.

**In this repository (the phone)**, synced from the desktop's `0bca29da` on 2026-10-09: the engine
loads a profile from `<resources>/profiles/<stock>.json`, so `app/SpektraLab/tools/build_engine.sh`
(and the bench's) copies these profiles into the app's `EngineResources/profiles/` beside
spektrafilm's and this notice in as `PRODUCT_PROFILES_NOTICE.md`. **The app lists them** since
2026-10-09, each under its display name in `STOCK-NAMES.md` -- the phone never shows a maker's
name -- and sends what a black-and-white film on its paper needs (`app/SpektraLab/ENGINE-WIRING.md`
§4.7; `app/SpektraLab/Sources/Model/Stock.swift`). `engine/tests/bw_checks.py` renders them from a
scratch resources directory that overlays this one on `engine/resources/`, and
`engine/tests/mobile_checks.py` takes them through a phone engine the same way. The engine does
not read `paper_grades.json` or this directory's `neutral_print_filters.json`; a caller sends the
pack on the wire, and the app's catalogue carries filter 2's from `paper_grades.json`.
