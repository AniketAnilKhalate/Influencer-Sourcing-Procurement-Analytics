
-- Create a baseline snapshot of fictional supplier quotations.
-- Run once on the original creator_quotes table.
-- Do not rerun as a reset without reviewing existing records.

CREATE TABLE IF NOT EXISTS quotation_snapshot (
    creator_id TEXT PRIMARY KEY,
    quote_amount REAL,
    currency TEXT,
    snapshot_date TEXT
);

INSERT OR IGNORE INTO quotation_snapshot (
    creator_id,
    quote_amount,
    currency,
    snapshot_date
)
SELECT
    creator_id,
    quote_amount,
    currency,
    DATE('now')
FROM creator_quotes;
