# SBT-DF203 Lab 9: WEP40 Wireless Packet Decryption and Aircrack Forensics

* **Student:** Abubakari-Sadique Hamidu (2025-FWSD-11392)
* **Course:** SBT-DF203 — Basic Networking Skills for Digital Forensics
* **Date:** 26 September 2026

## Overview
Offline analysis and evidence repository for Lab 9 covering 802.11 frame dissection, WEP40 key recovery, decryption, and object carving from the CodeGate CTF dataset.

## Evidence Hashes

| File | SHA-256 Checksum |
| :--- | :--- |
| `file.xz` | `dd54144caef34f228bfb4b87a9101ca7173969376f7ed357bd068061d4f4b8d6` |
| `file_working` | `c17a3f9b955e84f5befd476dbd55c67286d1e3eea9ab402d5359cac0874ebb2d` |
| `file_working-dec` | `167c91994c269777f9048227deb89882caf3cf3c763977f2059604f9a6a40b04` |

## Directory Layout
* `evidence/` — Original compressed capture (`file.xz`).
* `exported/` — HTTP exported objects and Foremost carved files.
* `reports/` — Command logs, TSV field dumps, and SHA-256 checksums.
* `screenshots/` — Numbered forensic evidence screenshots.
* `working/` — Working decompressed capture and decrypted output (`file_working-dec`).

## Key Findings
* **BSSID / ESSID:** `00:26:66:55:97:D6` / `cgnetwork`
* **Protected Frames:** 15,713 WEP data packets
* **Recovered Key:** `A4:3D:F6:F3:74`
* **Decryption Result:** 15,477 packets decrypted successfully (100% success rate)
