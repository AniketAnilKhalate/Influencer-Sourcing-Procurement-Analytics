
-- Verify the fictional creator-sourcing dataset.

SELECT
    COUNT(*) AS quotation_count,
    SUM(quote_amount) AS total_quotation_value,
    AVG(quote_amount) AS average_quotation,
    MIN(quote_amount) AS minimum_quotation,
    MAX(quote_amount) AS maximum_quotation
FROM creator_quotes;

-- Verify the creator-to-quotation join and cost efficiency.

SELECT
    p.creator_id,
    p.handle,
    p.followers,
    q.quote_amount,
    q.currency,
    ROUND(
        q.quote_amount * 1000.0 / NULLIF(p.followers, 0),
        2
    ) AS cost_per_1000_followers
FROM creator_profiles AS p
JOIN creator_quotes AS q
    ON p.creator_id = q.creator_id
WHERE p.data_origin = 'SYNTHETIC_DEMO'
ORDER BY p.creator_id;
