
-- Compare an incoming fictional quotation batch
-- against the original quotation snapshot.

SELECT
    i.creator_id,
    s.quote_amount AS original_quote,
    i.quote_amount AS incoming_quote,
    s.currency AS original_currency,
    i.currency AS incoming_currency,
    CASE
        WHEN s.creator_id IS NULL THEN 'NEW'
        WHEN i.quote_amount <> s.quote_amount
          OR i.currency <> s.currency
          THEN 'CHANGED'
        ELSE 'UNCHANGED'
    END AS change_status
FROM incoming_quotation_batch AS i
LEFT JOIN quotation_snapshot AS s
    ON i.creator_id = s.creator_id
ORDER BY i.creator_id;
