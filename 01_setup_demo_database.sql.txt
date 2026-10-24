
-- Standalone fictional creator-sourcing demo.
-- Run in a NEW, EMPTY SQLite database.
-- No external CSV import is required.

BEGIN TRANSACTION;

CREATE TABLE creator_profiles (
    creator_id TEXT PRIMARY KEY,
    handle TEXT NOT NULL,
    followers INTEGER NOT NULL,
    data_origin TEXT NOT NULL
);

CREATE TABLE creator_quotes (
    creator_id TEXT PRIMARY KEY,
    quote_amount REAL NOT NULL,
    currency TEXT NOT NULL,
    FOREIGN KEY (creator_id)
        REFERENCES creator_profiles(creator_id)
);

INSERT INTO creator_profiles
    (creator_id, handle, followers, data_origin)
VALUES
    ('DEMO-C001','@demo_glow_01',45000,'SYNTHETIC_DEMO'),
    ('DEMO-C002','@demo_skin_02',80000,'SYNTHETIC_DEMO'),
    ('DEMO-C003','@demo_family_03',62000,'SYNTHETIC_DEMO'),
    ('DEMO-C004','@demo_beauty_04',170000,'SYNTHETIC_DEMO'),
    ('DEMO-C005','@demo_care_05',95000,'SYNTHETIC_DEMO'),
    ('DEMO-C006','@demo_fitness_06',35000,'SYNTHETIC_DEMO'),
    ('DEMO-C007','@demo_daily_07',14000,'SYNTHETIC_DEMO'),
    ('DEMO-C008','@demo_style_08',210000,'SYNTHETIC_DEMO'),
    ('DEMO-C009','@demo_beauty_09',110000,'SYNTHETIC_DEMO'),
    ('DEMO-C010','@demo_home_10',27000,'SYNTHETIC_DEMO');

INSERT INTO creator_quotes
    (creator_id, quote_amount, currency)
VALUES
    ('DEMO-C001',42000,'INR'),
    ('DEMO-C002',55000,'INR'),
    ('DEMO-C003',38000,'INR'),
    ('DEMO-C004',68000,'INR'),
    ('DEMO-C005',72000,'INR'),
    ('DEMO-C006',26000,'INR'),
    ('DEMO-C007',19000,'INR'),
    ('DEMO-C008',80000,'INR'),
    ('DEMO-C009',52000,'INR'),
    ('DEMO-C010',24000,'INR');

COMMIT;
