-- SBT-DF204-Lab5: SQLite & Artifact Extraction Queries
-- Target: Android Logical Extraction & DJI / App Artifacts

-- 1. List tables in target SQLite database
SELECT name, sql FROM sqlite_master WHERE type='table';

-- 2. Extract timestamped records (adjust table and epoch column names to match schema)
SELECT
    rowid,
    datetime(timestamp_ms / 1000, 'unixepoch') AS utc_timestamp
FROM events
ORDER BY timestamp_ms ASC;
