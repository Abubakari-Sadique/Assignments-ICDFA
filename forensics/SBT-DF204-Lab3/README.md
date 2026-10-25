# SBT-DF204 Lab 3: Memory Forensics Investigation

Digital forensics case study analyzing a Windows 7 memory dump (`memdumpWin7.mem`) using Volatility 2 to reconstruct system activity and trace data exfiltration.

## Case Details
* **Analyst:** Abubakari-Sadique Hamidu
* **OS Profile:** `Win7SP1x86`
* **Evidence SHA-256:** `500bc1ba8b5ffa8053b6213d7e7aae0c84c18cce541dc53a55887e6e5099495e`

## Summary of Findings
* **Process Analysis:** Identified interactive command shell (`cmd.exe` PID 3996) and forensic tool execution (`FTK Imager.exe` PID 2596).
* **Network Activity:** Utilized `netscan` to parse network connections and active interfaces (`192.168.56.8`).
* **Data Exfiltration:** Reconstructed command history (`consoles`) showing the user copied `secret_file.docx` from `Downloads` to external drive `F:`.

## Evidence Screenshots
* `screenshots/SBTDF204_CS3_E01_Evidence_Integrity.png` - Hash verification
* `screenshots/SBTDF204_CS3_E02_Image_Info.png` - OS profile identification
* `screenshots/SBTDF204_CS3_E03_Process_Analysis.png` - Process list (`pslist`)
* `screenshots/SBTDF204_CS3_E04_Network_Analysis.png` - Network sockets (`netscan`)
* `screenshots/SBTDF204_CS3_E05_Command_History.png` - Command shell history (`consoles`)
