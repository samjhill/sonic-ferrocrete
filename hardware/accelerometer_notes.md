# Plate Accelerometer Notes

Measuring tray acceleration lets you correlate ripple quality with actual drive levels instead of relying only on amplifier gain. A small MEMS breakout mounted to the aluminum plate gives you 3-axis data suitable for FFT analysis.

## Recommended sensor options

- **Adafruit LIS3DH breakout** (I²C/SPI, ±16 g range, 100–400 Hz output). Stable, easy to integrate with CircuitPython or Arduino.
- **Analog Devices ADXL335 module** (analog outputs, ±3 g). Simple to read with a microcontroller ADC if you prefer analog processing.
- **Upgrade path:** Analog Devices ADXL355 or TE 4030 for lower noise when you scale up; requires more advanced data acquisition.

## Companion microcontroller/data logger

- ESP32 DevKitC or Feather (built-in USB, Wi-Fi for streaming).
- Teensy 4.0 or Arduino Nano Every if you want higher sample rates with wired logging.
- MicroSD breakout (optional) if you want stand-alone logging to card.

## Mounting approach

1. Cut a 25 mm square of thin VHB or reusable poster putty.
2. Clean a corner of the aluminum plate with IPA.
3. Bond the accelerometer board flat to the plate surface—ideally near an antinode but away from the slurry tray footprint.
4. Strain-relief the wires using Kapton or cloth tape so they don’t tug during sweeps.
5. Note the sensor orientation (X/Y/Z axes) directly on the plate with a marker for repeatability.

## Data capture workflow

- Configure the LIS3DH at 200 Hz ODR, ±8 g range. Stream XYZ via USB serial to a laptop running a Python logger (e.g., `examples/accelerometer_logger.py` to be added). Convert to RMS acceleration and frequency spectrum in post-processing.
- For ADXL335, sample at ≥1 kHz on three ADC pins, apply a simple moving-average filter, and compute FFT in Python or on-board if using a Teensy.
- Sync data with audio sweeps by printing timestamps/frequency steps to the same log.

## Calibration

- Perform a 6-point calibration (±1 g on each axis) or use a simple one-axis static calibration by orienting the sensor along gravity and recording offset.
- Run a baseline measurement with the shaker off to capture noise floor.
- Map plate acceleration vs. amplifier gain at a handful of frequencies (e.g., 80, 120, 160 Hz) and store the curves in `data/` for future reference.

## Safety & durability

- Secure all wiring so nothing can whip into the wet tray.
- Keep the microcontroller and laptop elevated or shielded from splashes.
- If you switch to the BST-1, revisit mounting: use a thin aluminum bar to triangulate the accelerometer mount and reduce local strain on the plate.

Add derived datasets (`*.csv`) under `data/plate_characterization/` once you capture the first sweeps.
