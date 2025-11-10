# Sonic Ferrocrete

Open, reproducible experiments in **magneto-acoustic forming** of gypsum/cement slurries (aka “sonic ferrocrete”).

## What is this?

We embed magnetic particles (black iron oxide) in a fresh slurry and use **sound (standing waves)** and/or **magnetic fields** to organize surface topology and internal veining **before** the mix sets.

## Quick start

1. Print or fabricate the tray in `hardware/`.
2. Follow `experiments/modeA_acoustic_patterning.md` (sound) and `modeB_magnetic_veining.md` (magnets).
3. Log your runs in `data/run_log_template.csv` + photos per `experiments/photography_guide.md`.

## Repo layout

- `hardware/` — OpenSCAD tray, magnet-sled notes, BOM
- `experiments/` — lab guides (Mode A/B), photo tips
- `data/` — CSV templates for frequency/depth/viscosity vs. pattern results
- `simulation/` — thin-film heightfield notebook for rapid concept tests
- `scripts/` — utilities (e.g., pixel-measurement to wavelength)

## Licensing

- Code & CAD: MIT (see LICENSE)
- Media (photos/figures): CC BY 4.0 (attribute “Sonic Ferrocrete / Sam Hill”)

## Safety

Hearing protection, dust mask, magnet pinch safety. See experiment docs.
