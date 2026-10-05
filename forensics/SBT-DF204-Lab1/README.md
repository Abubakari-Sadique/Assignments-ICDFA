# SBT-DF204-Lab1: Nitroba PCAP Network Analysis

## Overview
This repository contains the forensic analysis and evidence log for **SBT-DF204 Lab 1 (Nitroba PCAP Analysis)**. The investigation focused on identifying the source of an anonymous harassment note sent via `www.willselfdestruct.com`[cite: 1].

## Key Findings
* **Target:** `lily.schmitty@gmail.com`[cite: 1]
* **Suspect Physical Device:** MAC Address `00:17:f2:e2:c0:ce` (IP: `192.168.15.4`)[cite: 1]
* **Authenticated Identity:** `jcoachj@gmail.com`[cite: 1]
* **Identified Suspect:** **J. Coach** (enrolled in Chemistry 109)[cite: 1]

## Repository Contents
* `nitroba_working_copy.pcap` - Primary packet capture file[cite: 1]
* `screenshots/` - Supporting screenshot evidence (E01–E06)[cite: 1]
  * `evidence integrity.png`[cite: 1]
  * `payload discovery.png`[cite: 1]
  * `evidence to harrasment report.png`[cite: 1]
  * `cookie, or login session evidence originating from physical device.png`[cite: 1]
  * `UTC Timestamp.png`[cite: 1]

## Investigation Tools
* `tshark` / `Wireshark`[cite: 1]
* Kali Linux Environment[cite: 1]
