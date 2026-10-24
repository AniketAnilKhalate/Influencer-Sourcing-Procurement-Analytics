
# Quotation Batch Change Tracking

## Business objective

Demonstrate how a procurement analyst can compare incoming
supplier quotations with existing records, identify changes,
maintain an audit log and refresh a reporting dashboard.

This is a fictional influencer-sourcing training project.

## Tools

- DB Browser for SQLite
- SQLite SQL
- Windows ODBC Data Sources (64-bit)
- Power BI Desktop

## Process

1. Created a snapshot of the original 10 fictional quotations.
2. Created an incoming quotation batch.
3. Compared incoming records against the snapshot.
4. Identified three changed quotations and one unchanged quotation.
5. Recorded three changes in quotation_change_log.
6. Updated creator_quotes inside a SQL transaction.
7. Refreshed Power BI Desktop to observe the updated values.
8. Restored the original fictional quotations.
9. Refreshed Power BI again to confirm restoration.

## Test results

Original total quotation value: INR 476,000.

Test batch:
- DEMO-C001: INR 42,000 to INR 40,000
- DEMO-C002: INR 55,000 to INR 60,000
- DEMO-C008: INR 80,000 to INR 75,000
- DEMO-C003: unchanged at INR 38,000

Three changed records were logged.

The original quotation values were restored after testing.

## Power BI connection

Power BI Desktop connected to SQLite through a Windows ODBC DSN
named Influencer_SQLite.

Power Query merged Demo_Creators with creator_quotes
using creator_id.

The resulting Supplier_Analysis_Auto query was refreshed
manually in Power BI Desktop.

## Important limitations

- All supplier quotations are fictional and denominated in INR.
- The workflow is a manual batch-processing demonstration.
- Power BI data refresh was triggered manually.
- The audit log records the test batch, but the later
  restoration was not separately audited.
- This is not a production-ready procurement system.
