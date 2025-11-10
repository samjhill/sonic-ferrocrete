# Sonic Ferrocrete
[![Build OpenSCAD](https://github.com/samjhill/sonic-ferrocrete/actions/workflows/openscad.yml/badge.svg)](../../actions/workflows/openscad.yml)

![Sonic ferrocrete tray and magnet sled assembly](images/tray-cutaway.png)

> **Quick start (5 min):** Print the tray in `hardware/`, then run **Mode A**: pour 5–8 mm Ultracal + Fe3O4 mix, sweep 70–200 Hz until steady cells appear, hold 6–10 min, cure, demold.

**Docs:** See `experiments/modeA_acoustic_patterning.md` and `experiments/modeB_magnetic_veining.md`  
**Contributing:** See `CONTRIBUTING.md` • **Citation:** `CITATION.cff`

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

## First Milestone

- [ ] Print 120×120 tray; seal corners.
- [ ] Water resonance dry-run (Hz vs. visible cell count).
- [ ] Mode A: 3 freqs × 2 depths → photos + CSV.
- [ ] Mode B: straight-line + spiral sled → photos.
- [ ] Short video; share repo link.

## Potential Applications

### Cymatic Architectural Facade
Frozen ripples create a sound-shaped facade module for large-scale installations.
![Cymatic architectural facade concept](images/acoustic-panel.png)

### Magnetically Veined Plaster Panel
Magnetite veining suggests marble-like surfaces guided by field lines.
![Magnetically veined plaster concept](images/false-marble.png)

### Sound-formed Sculpture
Mid-resonance waves solidify into sculptural geometry—dynamic motion caught in time.
![Sound-formed sculpture concept](images/in-progress.png)

### Bio-reactive Concrete Facade
Porous, patterned surfaces encourage moss and lichen colonization while managing moisture.
![Bio-reactive concrete facade concept](images/porous-lichen.png)

### Pavilion Formed by Sound
Large-scale intervention shaped by resonance patterns for immersive environments.
![Sound-shaped pavilion concept](images/sound-formed-sculpture.png)

## Bench Snapshot

![Experiment in progress](images/experiment-in-progress.png)
*Silicone mold riding on a tactile transducer during a live tone sweep.*
