# Chrome History Forensics & Cryptocurrency Analysis (SBT-DF204 Case Study 2)

## Overview
This repository documents the forensic analysis of a Google Chrome SQLite `History` database. The objective of this investigation is to reconstruct user browsing activity, trace the creation of an online advertisement, examine associated email communications, and verify cryptocurrency transaction references and downloaded artifacts.

## Evidence Verification
Forensic integrity was maintained by working on a duplicate copy while preserving the original evidence as read-only.

- **Primary Evidence File:** `evidence/History`
- **Working Copy:** `evidence/History_working_copy.db`
- **File Size:** 196,608 bytes
- **SHA-256 Checksum:** `b991b0fa69662c44caf599e468c8088576ebd9cebbf46d02c89cf51bcde3fd19`

## Environment & Requirements
- **OS Environment:** Kali Linux (Docker container) / macOS
- **Tools Used:** SQLite3, SHA256sum, Git

## Summary of Findings

### 1. Database Schema
- Key tables inspected: `urls`, `visits`, `downloads`.
- WebKit timestamps converted to UTC using:
  `datetime(visit_time/1000000 + strftime('%s','1601-01-01'), 'unixepoch')`

### 2. Advertisement Artifacts (Craigslist)
- **Title:** "cheaper than Rx supplements"
- **Ad ID:** `7473121658`
- **URL:** `https://baltimore.craigslist.org/hab/d/baltimore-cheaper-than-rx-supplements/7473121658.html`
- **Workflow:** Identified step-by-step creation via `post.craigslist.org` (`choose type` -> `choose category` -> `edit` -> `geoverify` -> `editimage` -> `preview` -> `manage`).

### 3. Communications & Cryptocurrency Activity
- **Associated Email:** `unsub.fscs@gmail.com`
- **Bitcoin TXID:** `517b2156914944339a96137ad8978408ea52b2fc144c98d3b0b16b21888afdc5`
- **Bitcoin Address:** `38RcsURWCDmCbYocmsZCnGz1FtD7x477mt`
- **Verification Activity:** User navigated to `blockchain.com` to query the transaction hash and wallet address.

### 4. Downloaded Artifacts
- **Target Path:** `C:\Users\FSCS_User\Desktop\proof_of_payment.png`
- **Source URL:** `https://imgur.com/dTgrkP7`
- **File Size:** 33,844 bytes
- **Timestamp (UTC):** `2022-04-19 14:56:58`

