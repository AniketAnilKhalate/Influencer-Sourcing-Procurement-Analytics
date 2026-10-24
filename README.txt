# Influencer Sourcing & Procurement Analytics

**A procurement analytics portfolio project using SQLite, WPS Spreadsheets and Power BI Desktop.**

## Project Overview

This project demonstrates a structured approach to influencer supplier sourcing, quotation analysis, preliminary supplier evaluation, negotiation scenario modelling and quotation change tracking.

It was developed as a practical learning project to demonstrate skills relevant to junior procurement and influencer-sourcing roles.

## Business Objectives

- Compare fictional creator quotations and identify cost-efficiency differences.
- Build a preliminary supplier evaluation and risk-assessment framework.
- Model hypothetical negotiation savings.
- Present procurement insights through interactive Power BI dashboards.
- Demonstrate SQL-based quotation change detection, audit logging and manual Power BI refresh.

## Tools Used

- **SQLite and DB Browser for SQLite:** Data storage, SQL analysis and quotation change tracking.
- **WPS Spreadsheets:** Quotation calculations, supplier scorecards, risk assessment and negotiation analysis.
- **Power BI Desktop:** Commercial reporting, procurement decision support and SQLite-connected analysis.
- **Windows ODBC:** Connection between SQLite and Power BI.
- **GitHub:** Project documentation and portfolio presentation.

## Dataset Transparency

The commercial analysis uses 10 fictional creator profiles and fictional quotations denominated in Indian rupees (INR).

A separate public Indian creator dataset was used for benchmarking exercises. It is not representative of UK influencer pricing or the full range of creator tiers.

All negotiation savings are hypothetical. Supplier compliance and due-diligence checks have not been completed.

This is an independent training project and is not affiliated with, endorsed by or based on confidential data from P&G.


## Power BI Portfolio

### 1. Commercial Analysis

![Commercial Analysis Dashboard](05_Screenshots/01_Commercial_Analysis.png)

### 2. Procurement Decision

![Procurement Decision Dashboard](05_Screenshots/02_Procurement_Decision.png)

### 3. Automation Test

![SQLite and Power Query Automation Test](05_Screenshots/03_Automation_Test.png)



## Project Workflow

### 1. SQL Analysis

Used DB Browser for SQLite to practise:

- Filtering and grouping creator data
- Joining creator profiles with quotations
- Calculating quotation statistics
- Ranking fictional creators by cost efficiency
- Checking data quality
- Comparing incoming quotation batches

### 2. WPS Spreadsheet Analysis

Developed an influencer-sourcing workbook containing:

- Creator and quotation analysis
- Commercial charts
- Preliminary supplier scorecard
- Supplier risk and due-diligence tracking
- Hypothetical negotiation analysis
- Sourcing summary

Unverified supplier-assessment fields remain unscored.

### 3. Power BI Reporting

Created a three-page portfolio report:

1. Commercial Analysis
2. Procurement Decision
3. Automation Test

The first two pages were developed using spreadsheet
data. The Automation Test page uses SQLite data through
an ODBC connection and Power Query.

### 4. Quotation Change Tracking

Demonstrated a manual SQL workflow to:

- Preserve an original quotation snapshot
- Compare an incoming quotation batch
- Identify changed records
- Log changes in an audit table
- Update quotation records using a transaction
- Refresh Power BI to observe the updated data

The original fictional quotations were restored after testing.

See:
[Batch Change Tracking](01_SQL/Batch_Change_Tracking/README.md)


## Key Commercial Findings

The fictional dataset contains 10 creator quotations
denominated in INR.

| Metric | Result |
|---|---:|
| Fictional creator quotations | 10 |
| Total quotation value | INR 476,000 |
| Average quotation | INR 47,600 |
| Median quotation | INR 47,000 |
| Lowest quotation | INR 19,000 |
| Highest quotation | INR 80,000 |
| Potential savings at 10% | INR 47,600 |

### Cost-Efficiency Analysis

Cost per 1,000 followers was calculated as:

Quotation amount / Follower count * 1,000

This is a simple quotation-to-audience-size ratio.
It is not advertising CPM, cost per impression,
verified reach or engagement performance.

### Procurement Interpretation

Quotation comparisons can support initial supplier
shortlisting, but final selection also requires
audience suitability, performance evidence,
commercial terms and compliance checks.

The 10% negotiation scenario is illustrative.
No actual savings were negotiated or realised.


## Project Limitations

- Commercial creator profiles and quotations are fictional.
- Quotation amounts are in INR, not GBP.
- The public Indian creator benchmark is separate
  from the fictional quotation analysis.
- The public benchmark is heavily concentrated
  in the macro-creator tier and is not a
  representative UK pricing benchmark.
- Supplier due diligence has not been completed.
- Weighted supplier assessments require evidence
  before meaningful scores can be assigned.
- Negotiation savings are hypothetical.
- Power BI refresh was performed manually.
- The audit log covers the demonstration batch,
  not every subsequent restoration action.
- The report uses different source connections
  across its pages.

## Future Improvements

- Add verified supplier engagement and audience data.
- Incorporate UK-specific commercial benchmarks
  where licensing permits.
- Complete documented supplier due diligence.
- Add automated data validation and exception reporting.
- Introduce scheduled refresh where supported.
- Extend audit logging to include every quotation change.
- Add approval controls for supplier and quotation updates.
- Build a more integrated reporting data model.

## Responsible Data Use

This portfolio is an independent learning project.

It does not contain actual P&G supplier quotations,
confidential procurement information or verified
supplier compliance approvals.


## Power BI Refresh and Reproducibility

The final portfolio report contains three pages.

- Commercial Analysis: developed using WPS spreadsheet data.
- Procurement Decision: developed using WPS spreadsheet data.
- Automation Test: uses SQLite data through an ODBC connection.

The SQLite connection was configured locally using
a Windows 64-bit ODBC DSN named Influencer_SQLite.

Power Query merges fictional creator profiles with
quotation records using creator_id and calculates
cost per 1,000 followers.

During testing, SQLite quotation values were updated,
Power BI was refreshed manually, and the new values
appeared in the Automation Test table.

The original quotations were subsequently restored.

The Power Query transformations are repeatable on
refresh, but the project does not implement unattended
scheduled data ingestion or automatic refresh.

To reproduce the SQLite-connected report on another
computer, the required SQLite tables, suitable ODBC
driver and local connection configuration must be
recreated. The quotation CSV alone is not sufficient.

