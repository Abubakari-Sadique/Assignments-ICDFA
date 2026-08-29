# Lab 1 — Digital Forensics Case Handling, Autopsy and Sleuth Kit Analysis

**Examiner:** Abubakari-Sadique Hamidu
**Case reference:** ICDFA-LAB1-2026-0827
**Evidence:** Ch01InChap01.dd (authorised ICDFA training image)

## Submission status

| Item | Status |
|---|---|
| #1–4: Evidence record & chain of custody | Complete — see `evidence_record/chain_of_custody.md` |
| #5–8: Part A — Autopsy GUI analysis | Not completed — see `evidence_record/part_a_troubleshooting_log.md` for the full account of why |
| #9–16: Part B — Sleuth Kit CLI analysis | Complete — see `report/` and `working/` |
| Supplementary: `mmstat` command exploration | Complete — see final PDF report |

## Folder structure

- `report/` — the final PDF forensic report (methodology, findings, screenshots)
- `evidence_record/` — evidence hashes, chain-of-custody worksheet, and the Part A troubleshooting log
- `working/` — raw Sleuth Kit command output (numbered `.txt` files) and the recovered files themselves, organised by recovery method (`recovery_icat/`, `recovery_blkcat/`, `recovery_tskrecover/`)
- `screenshots/` — terminal screenshots captured during analysis

## A note on the evidence image

The raw `Ch01InChap01.dd` file itself is deliberately excluded from this repository (see `.gitignore`) per the assignment's explicit instruction not to submit the evidence image — only recovered artefacts, hashes, and documentation are included here.

## A note on Part A

Autopsy (the GUI tool required for Part A) could not be successfully installed in any of six environments attempted over several days — see `evidence_record/part_a_troubleshooting_log.md` for the full, honest account of each attempt and why it failed. All Part B work (the Sleuth Kit command-line analysis) is complete, independently triple-verified via three separate recovery methods, and fully documented.
