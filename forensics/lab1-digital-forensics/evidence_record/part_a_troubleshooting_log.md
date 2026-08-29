# Part A (Autopsy) — Troubleshooting Log and Final Status

## Status: Not Completed

After extensive, good-faith troubleshooting across six separate environments over multiple days, Part A (the Autopsy GUI analysis) could not be completed before the submission deadline. This document records every environment attempted and exactly why each one failed, so the examiner's effort and the specific blockers are fully transparent.

## Environments attempted

**1. ICDFA course portal (`ubuntu-lab.icdfa.edu.ng`)** — the initial target platform.
Blocked by a server-side fault in the portal's own Docker container-orchestration backend. Confirmed via traceback: a `docker exec ... chown/chmod /home/student` step inside the portal's `prepare_container_home()` function returned exit code 254, dropping the SSH connection before any transfer could begin. This was reproduced consistently across multiple isolated connection attempts (including with all other sessions closed, ruling out a concurrency cause) — the fault sits entirely in the portal's backend, not in anything the examiner did. No desktop environment is available on this host regardless.

**2. AWS EC2, Amazon Linux 2023** — abandoned after Sleuth Kit proved unavailable via `dnf` (`sudo dnf install -y sleuthkit` → "No match for argument"), and a from-source build could not be confirmed to have completed (no binaries appeared on PATH afterward).

**3. AWS EC2, Ubuntu 24.04** — the box used successfully for the first full Part B run. For Part A specifically, a full XFCE desktop environment and TigerVNC server were installed and successfully connected to (confirmed working desktop, visible via VNC from the examiner's Mac, tunneled securely over SSH — `ssh -L 5901:localhost:5901 ...` plus `vncserver :1 -localhost yes`). Progress stalled while pinning down the exact Ubuntu package names for Sleuth Kit's Java bindings and GStreamer plugins, with time running out to resolve this cleanly before this instance was later deleted (see below).

**4. Local macOS install (native, via Homebrew)** — the examiner's MacBook runs macOS 13 (Ventura), for which Homebrew has dropped Tier-1 support. The prerequisite `cmake` build failed compiling from source, with Homebrew explicitly reporting: "Error: You are using macOS 13. We (and Apple) do not provide support for this old version." This is a hard platform-support wall caused by missing Apple SDK headers on this OS version, not a fixable configuration error.

**5. AWS EC2, Windows Server** — considered as a lower-friction alternative, since Autopsy's Windows installer has no dependency chain at all. Not completed due to time constraints reaching a usable Windows instance in the remaining window.

**6. ICDFA "academy sandbox"** (a second connection to the same portal environment) — confirmed Sleuth Kit's CLI tools are pre-installed here, matching the Part B toolset exactly, but no desktop environment is present on this host either, so it does not resolve the Part A blocker.

## Additional incident: mid-lab instance deletion (Aug 27–29)

While troubleshooting environment 3 above, the AWS Ubuntu 24.04 instance holding the first, fully-completed Part B run was deleted by the examiner before its recovered files and command-output logs were backed up off of it. This is disclosed in full in `chain_of_custody.md`. It did not affect Part A (no Part A work existed on that host to lose), but it did require Part B's evidence acquisition and full command sequence to be repeated on a new instance (AWS EC2, Ubuntu 26.04, Aug 29). The repeated run produced results identical in every respect — same hashes, same file listings, same metadata, same recovered content — to the original run, which itself demonstrates the process is repeatable and sound.

## Conclusion

Required-evidence items #5–8 (Autopsy case creation, evidence source configuration, deleted-file listing via Autopsy's GUI, keyword-search results, tagged/recovered evidence, and an Autopsy-generated report) are not present in this submission, for the reasons documented above. All of Part B (items #9–16), items #1–4 (evidence record and chain of custody), and a supplementary Sleuth Kit command exploration (`mmstat`) are complete, verified, and fully documented in this repository.
