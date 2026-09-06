Lab 3 — Data Carving with XXD, Binwalk and Scalpel
Course: SBT-DF202 — Computer and Digital Forensics Program: International Cybersecurity and Digital Forensics Academy (ICDFA) Student: Abubakari-Sadique Hamidu (2025-FWSD-11392) Batch: BATCH-B2025 · L1/S2

This folder holds the full write-up and supporting output for Lab 3, which is about recovering files and file content when the file system itself can't be trusted to tell you what's there — reading raw bytes directly, recognizing files by their signatures instead of their names, pulling embedded content out of larger files, and recovering deleted files from a USB image.
What's in here
lab3-data-carving/

├── 2025-FWSD-11392_SBT-DF202_Lab 3_..._05-09-2026.pdf   Final report (start here)

├── Lab3_Evidence_Archive.zip    Recovered/carved files + hash logs (submission copy)

└── submission_package/

    ├── hashes/                  Hashes of the original evidence, recorded before any analysis

    ├── partA_hex_analysis/      Hex dump + reconstructed JPEG from the raw bytes

    ├── partB_metadata/          strings/xxd output pulled from the JPEG's embedded metadata

    ├── partC_tsk/               The four files recovered off the floppy image with The Sleuth Kit

    ├── partE_usb_prep/          USB image hash verification (against the 2021 acquisition record)

    └── partF_scalpel/           Scalpel's audit log and the 17 JPEGs it carved out

The report PDF has all the actual write-up, reasoning, and screenshots — this README is just a quick map of what's here and a couple of things worth knowing before you dig into the folders.
Quick summary of each part

Part A — confirmed J_ub_law.jpg is really a JPEG by its ffd8/ffd9 signature bytes, dumped it to hex, rebuilt it from that dump, and checked the rebuilt copy against the original with MD5/SHA-256 — exact match.

Part B — pulled camera, software, author, and date info out of the JPEG's embedded metadata using strings and xxd (Nikon D4, Adobe Photoshop, a 2013 capture date), and confirmed GPS/location data genuinely isn't present rather than assuming it.

Part C — used The Sleuth Kit on a 1.44MB floppy image to list files, spot four deleted ones, and recover them straight from their data units with icat, istat, and blkcat — even though the file system considers that space free.

Part D — ran Binwalk against the available evidence since the instructor-provided File_carving.docx wasn't accessible; no genuinely embedded file turned up, which is a real result and documented as such in the report.
Part E — extracted the USB image from 120M.7z, checked its hashes against the original 2021 acquisition record (exact match), and confirmed the real partition offset with mmls instead of trusting the lecture's example value.

Part F — turned on JPEG carving in Scalpel's config and ran it against the USB image, recovering 17 valid JPEGs, all hash-verified and structurally checked — including one that turns out to match the exact same photo from Part A.

A couple of things worth knowing
Two of the three evidence files (J_ub_law.jpg and 120M.7z) weren't reachable through the ICDFA portal, so they were sourced from a public GitHub repo (frankwxu/Digital-Forensics-Basic-Book) that several digital forensics courses reference for these same training files. Documented in the report.

All the analysis was done on an Ubuntu Server 22.04 instance on AWS rather than a local VM, after macOS turned out not to have a working Scalpel package. Every required tool still ended up installed the standard Ubuntu way, so the actual toolset matches what the lab asked for.

The raw evidence images (the floppy .dd, the .7z, and the extracted USB .001 file) aren't included in this repo — they're large, and the hash records in submission_package/hashes/ and partE_usb_prep/ are what actually prove what they were, without needing to re-host multi-hundred-megabyte files here.


