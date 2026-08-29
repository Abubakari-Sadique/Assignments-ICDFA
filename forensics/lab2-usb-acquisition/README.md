# Lab 2 — USB Image Acquisition and Hash Verification

Case/Lab ID: CIP-B102-Lab4-2026-0829
Examiner: Abubakari-Sadique Hamidu (Reg: 2025/FWSD/11392)

## Contents
- `report/` — full PDF report (acquisition method, hash verification, image validation)
- `screenshots/` — supporting screenshots (diskutil, dd execution, hash outputs, image validation)
- `evidence_record/` — hash values and evidence documentation

## Summary
USB flash drive imaged bit-for-bit using `dd` on macOS. MD5 and SHA-256 hashes of the
source device and acquired image matched exactly, confirming an unaltered forensic copy.
The image was validated by mounting it read-only and verifying all three evidence files
were present and correctly sized.
