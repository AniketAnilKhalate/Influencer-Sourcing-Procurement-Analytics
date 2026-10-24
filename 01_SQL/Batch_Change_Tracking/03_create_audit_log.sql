
-- Create an audit table for fictional quotation changes.
-- This table was used in the batch-processing demonstration.

CREATE TABLE IF NOT EXISTS quotation_change_log (
    change_id INTEGER PRIMARY KEY AUTOINCREMENT,
    creator_id TEXT NOT NULL,
    old_quote REAL,
    new_quote REAL,
    old_currency TEXT,
    new_currency TEXT,
    change_type TEXT NOT NULL,
    changed_at TEXT NOT NULL,
    batch_id TEXT NOT NULL
);
