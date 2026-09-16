```markdown
SBT-DF203 Lab 4: SMTP Email Traffic Forensics

Executive Summary
This repository contains the forensic analysis, reconstructed message streams, TSV extractions, offline Base64 credential decoding evidence, and terminal documentation for **SBT-DF203 Lab 4**. 

The investigation evaluates a historical SMTP packet capture (`smtp.pcap`) to reconstruct the complete email exchange sequence, identify client/server network endpoints, decode application layer authentication fields offline, and assess transport security (TLS/STARTTLS capabilities).



 Student Information
* Name: Abubakari Sadique Hamidu
* Student ID / Reg No:** 2025-FWSD-11392
* Course: SBT-DF203 Basic Networking Skills for Digital Forensics
* Repository: `Assignments-ICDFA/forensics/SBT-DF203-Lab4`



Repository Structure

```text
SBT-DF203-Lab4/
├── README.md                                 # Laboratory Overview and Forensic Findings
├── evidence/
│   └── smtp.pcap                             # Original historical SMTP packet capture
├── working/
│   └── smtp_working.pcap                     # Preserved working forensic copy (hash verified)
├── reports/
│   ├── smtp_capture_hashes.txt               # SHA-256 evidence integrity verification
│   ├── smtp_capinfos.txt                     # Capture file summary statistics
│   ├── tcp_conversations.txt                 # TCP stream conversation summary
│   ├── smtp_packet_inventory.tsv             # Detailed field inventory of all SMTP frames
│   ├── smtp_commands_responses.tsv           # Sequential SMTP command/code timeline
│   ├── smtp_stream_0.txt                     # Full TCP Stream 0 ASCII reconstruction
│   ├── message_headers.txt                   # Extracted RFC email message headers
│   ├── reconstructed_email_redacted.txt      # Safely redacted email conversation
│   ├── smtp_network_metadata.tsv             # Ethernet MACs, IP addresses, and TCP ports
│   ├── client_indicators.tsv                 # User-Agent / X-Mailer packet lines
│   └── tls_assessment.txt                    # STARTTLS capability evaluation
└── screenshots/                              # 14 Terminal execution evidence checkpoints
