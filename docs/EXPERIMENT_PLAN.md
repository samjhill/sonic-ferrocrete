# Sonic Ferrocrete Experiment Protocol

## Overview

This document outlines the experimental procedure, material recipes, and development roadmap for manipulating cement-based composites using sound, magnetism, and electromagnetism. The goal is to explore patterned and magnetically veined castings for architectural, artistic, and structural applications.

---

## Phase 1 – Acoustic Patterning (Mode A)

### Objective

Generate and freeze cymatic standing-wave patterns in a cement or Ultracal 30 slurry using vibration.

### Setup

- Aluminum plate (150×150×6 mm) with tactile transducer (Dayton TT25-8) bonded to its underside.
- Silicone tray (7×5 in or 120×120 mm) seated on top of plate.
- Plate mounted on four rubber isolation pads.
- Fosi Audio TB10D amplifier connected to a tone generator.

### Mix

| Ingredient | Amount | Notes |
|-------------|---------|-------|
| Ultracal 30 | 100 g | Base gypsum cement |
| Fe₃O₄ (magnetite) | 10–20 g | Adds magnetic contrast |
| Water | 70–75 g | Water-to-binder ratio 0.7–0.75 |
| Alpha Pro superplasticizer | 0.2–0.3 g | Reduces water need |
| Xanthan gum | 0.08–0.12 g | Adds thixotropy |

Depth: 4–8 mm per pour.

### Procedure

1. Mix slurry until smooth and lump-free.  
2. Pour into tray (depth 6 mm).  
3. Start a sine sweep from 40–400 Hz.  
4. Watch for stationary node patterns; hold at resonant frequency.  
5. Capture top/side photos and videos.  
6. Record frequency, amplitude, and mix ratios.

---

## Phase 2 – Magnetic Veining (Mode B)

### Objective

Introduce veined patterns by migrating magnetite particles along magnetic field lines.

### Setup

- Add a **magnet sled** (neodymium bars, 60×10×3 mm) sliding under plate.  
- Maintain ≥25 mm gap from transducer.  
- Use the same tray and mix, slightly thicker (higher xanthan).

### Procedure

1. Start vibration at previously determined resonant frequency.  
2. Move magnet sled slowly (1–5 mm/s).  
3. Pause sled under tray for 10–30 s to form visible veins.  
4. Stop vibration, allow to set.  
5. Document position and shape of magnetite veining.

---

## Phase 3 – Electromagnetic Control

### Objective

Add an adjustable DC magnetic field to bias magnetite migration.

### Recommended Coil

- Pancake coil: 100–200 turns of 20 AWG magnet wire, 120–150 mm diameter.  
- Drive: 0–2 A constant current, 12–24 V supply.  
- Mounted below the aluminum plate (or under acrylic window).  
- Use **DC only** to avoid eddy losses in aluminum.

### Procedure

1. Run acoustic patterning as before.  
2. Slowly ramp coil current (0.1–1.0 A).  
3. Record pattern shape changes vs. current.  
4. Repeat trials for reproducibility.

---

## Measurements & Data Logging

| Parameter | How to Measure | Purpose |
|------------|----------------|----------|
| Frequency & amplitude | Oscilloscope or software | Acoustic tuning |
| Plate acceleration | IMU or accelerometer | Quantify vibration |
| Pattern geometry | Photo/video | Qualitative comparison |
| Magnetic field strength | Hall sensor | Field mapping |
| Mix parameters | Weight scale | Repeatability |

Save all photos and data under `/experiments/run_###/`.

---

## Troubleshooting

| Issue | Likely Cause | Fix |
|-------|---------------|-----|
| No visible pattern | Poor coupling or too deep pour | Reduce depth or retighten plate |
| Pattern blurs | Slurry too thin | Increase xanthan or wait partial set |
| Magnetite clumps | Too viscous | Reduce xanthan slightly |
| Amp clips | Volume too high | Lower gain or add subsonic filter |
| Weak veining | Magnet distance too large | Move closer or use stronger bars |

---

## Roadmap

| Phase | Goal | Estimated Duration |
|-------|------|--------------------|
| 1 | Stable cymatic patterns | 1 week |
| 2 | Controlled magnetic veining | 1–2 weeks |
| 3 | Active electromagnetic control | 2–4 weeks |
| 4 | Scaled molds & composite testing | 1–2 months |

---

## Safety

- Wear eye & hearing protection.
- Avoid placing magnets near amplifier or transducer.
- Use PPE when handling cement and iron oxide.
- Maintain ventilation during mixing and casting.

---

## Next Steps

- Automate frequency sweeps and logging (Python script).  
- Design printable tray master (STL) for making silicone liners.  
- Experiment with lightweight “aircrete” backfill.  
- Publish open-source datasets and results under `/data/`.

---

© 2025 Hillside Innovations – Open Hardware & Material Research  
