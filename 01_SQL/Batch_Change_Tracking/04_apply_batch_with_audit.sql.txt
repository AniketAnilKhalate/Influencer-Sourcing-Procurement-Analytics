
-- Demonstration only: fictional supplier quotation updates.
-- Requires incoming_quotation_batch and quotation_change_log.
-- Do not run repeatedly against the portfolio database.
-- The demo batch ID is DEMO_BATCH_001.

BEGIN TRANSACTION;

-- Record changed quotations before updating them.
INSERT INTO quotation_change_log (
    creator_id,
    old_quote,
    new_quote,
    old_currency,
    new_currency,
    change_type,
    changed_at,
    batch_id
)
SELECT
    q.creator_id,
    q.quote_amount,
    i.quote_amount,
    q.currency,
    i.currency,
    'CHANGED',
    DATETIME('now'),
    'DEMO_BATCH_001'
FROM creator_quotes AS q
JOIN incoming_quotation_batch AS i
    ON q.creator_id = i.creator_id
WHERE q.quote_amount IS NOT i.quote_amount
   OR q.currency IS NOT i.currency;

-- Update existing quotation records from the incoming batch.
UPDATE creator_quotes
SET
    quote_amount = (
        SELECT i.quote_amount
        FROM incoming_quotation_batch AS i
        WHERE i.creator_id = creator_quotes.creator_id
    ),
    currency = (
        SELECT i.currency
        FROM incoming_quotation_batch AS i
        WHERE i.creator_id = creator_quotes.creator_id
    )
WHERE creator_id IN (
    SELECT i.creator_id
    FROM incoming_quotation_batch AS i
    WHERE i.quote_amount IS NOT creator_quotes.quote_amount
       OR i.currency IS NOT creator_quotes.currency
);

COMMIT;
