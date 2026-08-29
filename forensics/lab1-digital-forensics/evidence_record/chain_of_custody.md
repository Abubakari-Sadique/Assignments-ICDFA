# Chain of Custody / Evidence Worksheet — ICDFA Lab 1

| Field | Value |
|---|---|
| Examiner | Abubakari-Sadique Hamidu |
| Requesting officer | Amin Idris |
| Case reference | ICDFA-LAB1-2026-0827 |
| Evidence item | Ch01InChap01.dd (raw/dd disk image) |
| Evidence description | 1.44 MB floppy-disk-sized forensic training image, authorised for ICDFA Lab 1 |
| Source | Authorised Dropbox training link supplied in the assignment brief |
| File size | 1,474,560 bytes |
| MD5 | a117773bcf1fc88ec0ab8e0a349fbbcb |
| SHA-256 | 3ce8053e4f3d9c8ab98b3aadb2480685efb8e4980d34297b83bd5a09b1a7b122 |
| Current storage location | AWS EC2, Ubuntu 26.04 (this instance) — raw image itself is deliberately excluded from this repository per assignment instructions |
| Original state | Read-only throughout; no write operations performed against the source file after hashing, on either acquisition |

## Custody / handling log

| Date/time (UTC) | Action | Location/host | Notes |
|---|---|---|---|
| Aug 25, ~04:30 | Initial download | Examiner's local Windows PC | Two copies downloaded to Downloads folder |
| Aug 26 | Transfer attempted | ICDFA course portal (Ubuntu instance) | Failed — server-side SSH/Docker container-provisioning fault on the portal's backend; no evidence copy reached this host |
| Aug 27, ~00:xx | Transfer attempted | AWS EC2, Amazon Linux 2023 | Host abandoned before evidence transfer, due to Sleuth Kit install friction (no `dnf` package, from-source build unconfirmed) |
| Aug 27, 03:46:53 | First successful acquisition — downloaded directly from source | AWS EC2, Ubuntu 24.04 (ip-172-31-32-87) | Hashed immediately post-download. All Part B recovery work completed and verified on this host. |
| Aug 27–29 | **Host instance deleted by examiner** | AWS EC2, Ubuntu 24.04 (ip-172-31-32-87) | Recovered files and command-output logs on this host had not yet been backed up off it. All Part B output on this host is lost as a result. Logged here as a corrective-action lesson, not evidence tampering — see Observations log. |
| Aug 29, 04:46 | Second, independent acquisition — re-downloaded from the same source link | AWS EC2, Ubuntu 26.04 (ip-172-31-42-19) | **MD5 and SHA-256 both identical to the first acquisition**, confirming the source file is unchanged and both copies are forensically equivalent. All Part B work re-performed and re-verified on this host. This is the copy underlying the final submission. |
| Aug 29 | Recovered files, command logs, and hashes copied into this git repository | This repository | Raw `.dd` image itself deliberately excluded (see `.gitignore`) per assignment instruction — only recovered artefacts and documentation are submitted. |

## Note on the mid-lab instance deletion

Between the first and second acquisitions, the examiner deleted the AWS instance that held the first, fully-completed Part B analysis before transferring the recovered files or output logs off of it. This was a workflow error (a backup/export step skipped, not a forensic integrity issue) and is disclosed here in full rather than omitted. The corrective action taken — re-acquiring the evidence from the original source and re-running the complete Part B command sequence — is documented in `part_a_troubleshooting_log.md` and produced results identical in every respect (hashes, file listings, metadata, recovered content) to the first run, which is itself a demonstration that the analysis process is repeatable and sound.
