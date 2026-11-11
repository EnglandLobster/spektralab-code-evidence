"""CIEDE2000 colour difference for the 24 chart patches, 11 iOS exports against 11 reference renders.

Reads the same files and sampling positions as patches.py. Needs NumPy and Pillow.
Writes records/delta-e2000.json and records/delta-e2000-matrix.csv.
"""
import json
from pathlib import Path

import numpy as np
from PIL import Image

d = Path(__file__).resolve().parents[1]
rows = json.loads((d / 'records/comparison.json').read_text())
CENTRES = [(y, x) for y in (135, 170, 205, 240) for x in (140, 177, 213, 249, 284, 319)]


def patches(path):
    """Mean sRGB (0-255) of the central 24x24 pixels of each patch at 960x720, as in patches.py."""
    a = np.asarray(Image.open(path).convert('RGB').resize((960, 720), Image.Resampling.LANCZOS)).astype(float)
    return np.array([a[y * 2 - 12:y * 2 + 12, x * 2 - 12:x * 2 + 12].mean((0, 1)) for y, x in CENTRES])


def srgb_to_lab(rgb):
    """8-bit sRGB to CIELAB, D65 white (IEC 61966-2-1 matrix)."""
    c = rgb / 255
    c = np.where(c <= 0.04045, c / 12.92, ((c + 0.055) / 1.055) ** 2.4)
    m = np.array([[0.4124564, 0.3575761, 0.1804375],
                  [0.2126729, 0.7151522, 0.0721750],
                  [0.0193339, 0.1191920, 0.9503041]])
    xyz = c @ m.T / np.array([0.95047, 1.0, 1.08883])
    f = np.where(xyz > (6 / 29) ** 3, np.cbrt(xyz), xyz / (3 * (6 / 29) ** 2) + 4 / 29)
    return np.stack([116 * f[..., 1] - 16, 500 * (f[..., 0] - f[..., 1]), 200 * (f[..., 1] - f[..., 2])], -1)


def delta_e2000(lab1, lab2):
    """CIEDE2000 with kL = kC = kH = 1 (Sharma, Wu and Dalal 2005)."""
    L1, a1, b1 = lab1[..., 0], lab1[..., 1], lab1[..., 2]
    L2, a2, b2 = lab2[..., 0], lab2[..., 1], lab2[..., 2]
    c_mean = (np.hypot(a1, b1) + np.hypot(a2, b2)) / 2
    g = 0.5 * (1 - np.sqrt(c_mean ** 7 / (c_mean ** 7 + 25.0 ** 7)))
    a1p, a2p = (1 + g) * a1, (1 + g) * a2
    c1p, c2p = np.hypot(a1p, b1), np.hypot(a2p, b2)
    h1 = np.degrees(np.arctan2(b1, a1p)) % 360
    h2 = np.degrees(np.arctan2(b2, a2p)) % 360
    grey = c1p * c2p == 0
    dh = h2 - h1
    dh = np.where(dh > 180, dh - 360, np.where(dh < -180, dh + 360, dh))
    dh = np.where(grey, 0.0, dh)
    dL, dC = L2 - L1, c2p - c1p
    dH = 2 * np.sqrt(c1p * c2p) * np.sin(np.radians(dh / 2))
    L_mean, cp_mean = (L1 + L2) / 2, (c1p + c2p) / 2
    h_sum = h1 + h2
    h_mean = np.where(grey, h_sum,
                      np.where(np.abs(h1 - h2) <= 180, h_sum / 2,
                               np.where(h_sum < 360, (h_sum + 360) / 2, (h_sum - 360) / 2)))
    t = (1 - 0.17 * np.cos(np.radians(h_mean - 30)) + 0.24 * np.cos(np.radians(2 * h_mean))
         + 0.32 * np.cos(np.radians(3 * h_mean + 6)) - 0.20 * np.cos(np.radians(4 * h_mean - 63)))
    s_l = 1 + 0.015 * (L_mean - 50) ** 2 / np.sqrt(20 + (L_mean - 50) ** 2)
    s_c = 1 + 0.045 * cp_mean
    s_h = 1 + 0.015 * cp_mean * t
    r_c = 2 * np.sqrt(cp_mean ** 7 / (cp_mean ** 7 + 25.0 ** 7))
    r_t = -np.sin(np.radians(60 * np.exp(-((h_mean - 275) / 25) ** 2))) * r_c
    return np.sqrt((dL / s_l) ** 2 + (dC / s_c) ** 2 + (dH / s_h) ** 2 + r_t * (dC / s_c) * (dH / s_h))


# Three pairs from the Sharma, Wu and Dalal (2005) test data, to check the formula above.
for p, q, expected in [((50.0, 2.6772, -79.7751), (50.0, 0.0, -82.7485), 2.0425),
                       ((50.0, 2.5, 0.0), (50.0, 0.0, -2.5), 4.3065),
                       ((60.2574, -34.0099, 36.2677), (60.4626, -34.1751, 39.4387), 1.2644)]:
    assert abs(delta_e2000(np.array(p), np.array(q)) - expected) < 5e-4, (p, q)

ios = np.stack([srgb_to_lab(patches(d / 'ios' / f"IMG_{r['jpg']}.JPG")) for r in rows])
ref = np.stack([srgb_to_lab(patches(d / 'reference' / (r['film_id'] + '.png'))) for r in rows])
n = len(rows)
per_patch = np.array([[delta_e2000(ios[i], ref[j]) for j in range(n)] for i in range(n)])  # n x n x 24
matrix = per_patch.mean(2)
own = np.stack([per_patch[i, i] for i in range(n)])  # n x 24

films = []
print(f"{'film':14s} {'mean':>5s} {'median':>6s} {'max':>5s} patch | {'next closest':14s} {'mean':>5s} ratio")
for i, r in enumerate(rows):
    j = min((k for k in range(n) if k != i), key=lambda k: matrix[i, k])
    films.append(dict(jpg=r['jpg'], film=r['film'], film_id=r['film_id'], paper_id=r['paper_id'],
                      mean=float(own[i].mean()), median=float(np.median(own[i])), max=float(own[i].max()),
                      max_patch=int(own[i].argmax()) + 1, closest_reference=rows[int(matrix[i].argmin())]['film'],
                      next_closest_reference=rows[j]['film'], next_closest_mean=float(matrix[i, j]),
                      ratio_next_to_own=float(matrix[i, j] / matrix[i, i]),
                      per_patch=[round(float(v), 4) for v in own[i]]))
    f = films[-1]
    print(f"{f['film']:14s} {f['mean']:5.2f} {f['median']:6.2f} {f['max']:5.2f} {f['max_patch']:5d} | "
          f"{f['next_closest_reference']:14s} {f['next_closest_mean']:5.2f} {f['ratio_next_to_own']:5.2f}")

off_diagonal = matrix[~np.eye(n, dtype=bool)]
summary = dict(
    metric='CIEDE2000, kL=kC=kH=1; sRGB patch means converted to CIELAB with D65 white',
    patches_per_film=24, films=n, comparisons=int(own.size),
    mean=float(own.mean()), median=float(np.median(own)), max=float(own.max()),
    per_film_mean_min=float(own.mean(1).min()), per_film_mean_max=float(own.mean(1).max()),
    share_below_1=float((own < 1).mean()), share_below_2=float((own < 2).mean()),
    own_recipe_is_closest=int((matrix.argmin(1) == np.arange(n)).sum()),
    cross_recipe_mean_min=float(off_diagonal.min()), cross_recipe_mean_median=float(np.median(off_diagonal)),
    ratio_next_to_own_min=min(f['ratio_next_to_own'] for f in films),
    ratio_next_to_own_max=max(f['ratio_next_to_own'] for f in films))
print(json.dumps(summary, indent=2))
(d / 'records/delta-e2000.json').write_text(json.dumps(dict(summary=summary, films=films), indent=2, ensure_ascii=False) + '\n')
np.savetxt(d / 'records/delta-e2000-matrix.csv', matrix, delimiter=',', fmt='%.6f',
           header=','.join(r['film'] for r in rows), comments='')
