"""Rebuild the eleven reference PNGs using the pinned spektrafilm checkout."""
import json
from pathlib import Path
import numpy as np
from PIL import Image
from spektrafilm import init_params, simulate

reference = Path(__file__).resolve().parent
rows = json.loads((reference.parent / "records/comparison.json").read_text())
source = np.asarray(Image.open(reference / "input.png").convert("RGB")) / 255
for row in rows:
    params = init_params(row["film_id"], row["paper_id"])
    params.camera.auto_exposure = False
    params.io.input_color_space = params.io.output_color_space = "sRGB"
    params.io.input_cctf_decoding = params.io.output_cctf_encoding = True
    params.debug.deactivate_stochastic_effects = True
    result = simulate(source.copy(), params)
    pixels = np.rint(np.clip(result, 0, 1) * 255).astype(np.uint8)
    Image.fromarray(pixels).save(reference / (row["film_id"] + ".png"))
