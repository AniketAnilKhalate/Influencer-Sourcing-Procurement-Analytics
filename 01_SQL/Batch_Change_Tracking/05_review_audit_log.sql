
-- Review recorded fictional quotation changes.
-- Expected historical demonstration: three DEMO_BATCH_001 records.

SELECT
    change_id,
    batch_id,
    creator_id,
    old_quote,
    new_quote,
    old_currency,
    new_currency,
    change_type,
    changed_at
FROM quotation_change_log
ORDER BY change_id DESC;
