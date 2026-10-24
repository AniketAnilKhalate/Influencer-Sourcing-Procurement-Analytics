
# Fictional Creator Quotation Data

This folder contains a small synthetic quotation dataset
created for procurement analytics training.

## Contents

fictional_creator_quotes.csv

## Data Dictionary

| Column | Description |
|---|---|
| creator_id | Fictional creator identifier |
| quote_amount | Fictional quotation amount |
| currency | INR (Indian rupees) |

## Dataset Summary

- 10 fictional creator quotations
- Total quotation value: INR 476,000
- Average quotation: INR 47,600
- No real supplier quotations
- No actual P&G procurement information

## Purpose

The data supports training exercises in SQL,
quotation comparison, negotiation scenario analysis
and procurement reporting.

## Limitations

The figures are illustrative and should not be
interpreted as real market rates.

This file contains quotations only. The associated
fictional creator profiles and follower counts are
documented separately in the portfolio analysis.


## Reproducibility Test

The fictional dataset was successfully recreated
in a new, empty SQLite database using
01_setup_demo_database.sql.

The setup created:
- 10 fictional creator profiles
- 10 fictional quotation records

The verification script,
02_verify_demo_data.sql, confirmed:

- Total quotations: INR 476,000
- Average quotation: INR 47,600
- Minimum quotation: INR 19,000
- Maximum quotation: INR 80,000

The creator-profile and quotation tables were
successfully joined using creator_id.

Cost per 1,000 followers was calculated from
fictional quotation amounts and follower counts.

This is a synthetic demonstration dataset,
not real supplier quotation or P&G data.

