# SBT-DF203 Lab 8: DNS Spoofing Forensics

* **Student:** Abubakari-Sadique Hamidu (2025-FWSD-11392)
* **Course:** SBT-DF203 — Basic Networking Skills for Digital Forensics
* **Date:** 25 September 2026

## Overview
Evidence and report repository for Lab 8 DNS spoofing forensic analysis conducted in an isolated Docker environment (`sbtdf203-lab`).

## Evidence Hashes

| File | SHA-256 Checksum |
| :--- | :--- |
| `index.html` | `2243b8c59984b6d78f3b292d71f7e5f1196b8b94d1ffdd268ce79ba46044f184` |
| `dns_baseline.pcapng` | `123828c4b13f4fe0f9aabfbf74eebf954c54e8f235df039dac290e325a7a18dc` |
| `dns_spoof_controlled.pcapng` | `9d77fd570c61c6aa2d5cee7fa3b19b7a6d7504c20dc4511ed5e5d09811560e89` |

## Directory Layout
* `evidence/` — Baseline and controlled PCAPNG captures.
* `reports/` — TSV and TXT outputs from `tshark`, `ip`, and `sysctl`.
* `screenshots/` — Numbered forensic evidence screenshots (01 through 09).
* `working/` — Working copies for forensic analysis.

## Key Findings
* Baseline `/etc/hosts` mapped `portal.icdfa.test` to `172.17.0.1`.
* Controlled capture showed injected response pointing `portal.icdfa.test` to `172.17.0.2`.
* Subsequent HTTP traffic connected to `172.17.0.2:80`.
* Cleanup verified: background processes killed, `net.ipv4.ip_forward=0`, ARP cache flushed.
