# Cafe Profitability & Cost Control Analysis

Power BI | SQL | DAX | Power Query | Business Analysis

## Overview

This project analyses the operating performance of a cafe to understand why growth in orders and revenue is not translating into stronger profitability.

The business context comes from my own experience running a cafe after leaving my previous role in legal and contract lifecycle management. While the dataset used in this portfolio project has been constructed for analytical purposes, the business problem and operating context are based on the type of decisions I encountered while running the business.

The central question is simple: **Why is revenue growth not translating into stronger profitability?**

The analysis explores how cost control could improve profitability without relying on additional revenue growth.

## Data & Tools

The analysis covers FY24-25 and FY25-26. The source CSVs are included in `Data/`:

- `qsr_business_sales_fy24_25.csv`
- `qsr_business_sales_fy25_26.csv`
- `qsr_capex_opex_fy24_26.csv`

The project uses:

- **Power Query** for data preparation.
- **Power BI** for data modelling and a six-page report.
- **DAX** for 21 measures covering sales, expenses, profitability and target expense scenarios.
- **SQL (SQLite)** for monthly revenue, month-over-month revenue change and monthly expense analysis.

The Power BI file is in `Power BI/`, dashboard screenshots are in `Screenshots/`, and SQL queries with result screenshots are in `sql/`.

## Key Findings

Revenue increased by **40.62%** from FY24-25 to FY25-26, but the combined expense base exceeded revenue across the two financial years.

| Metric | Value |
| --- | ---: |
| FY24-25 Revenue | ₹10,33,368 |
| FY25-26 Revenue | ₹14,53,142 |
| Total Revenue Across Both Financial Years | ₹24,86,510 |
| Total Expenses Across Both Financial Years | ₹39,78,609 |
| Net Loss Across Both Financial Years | ₹14,92,099 |

The expense-control analysis compares current expenses with defined target levels:

| Metric | Value |
| --- | ---: |
| Current Expenses | ₹3.98M |
| Target Expenses | ₹2.14M |
| Gap to Target Expenses | ₹1.84M |

The **₹1.84M gap is a target-based scenario, not realised savings or a validated cost-reduction forecast**. It assumes expenses can be brought down to the defined target levels while revenue remains unchanged.

The largest gaps are concentrated in raw materials, staff salaries, rent and packaging. These categories need different actions: raw materials and packaging can be reviewed for waste and purchasing efficiency, staffing against operating demand, and rent against contractual constraints.

Reducing costs should not mean cutting expenditure indiscriminately. The objective is to prioritise improvements without unnecessarily affecting sales, product quality or customer experience.

## Dashboard

The report has six pages, moving from sales performance to a target-based expense reduction plan.

### 1. Sales Performance

Establishes the overall commercial performance of the business through:

- Revenue and total orders
- Average order value and customer rating
- Revenue by order type and payment mode
- Revenue over time

This page examines whether weak profitability is primarily a sales problem before investigating the cost structure.

### 2. Order Trends

Examines customer demand from an operational perspective:

- Orders by day of the week and hour
- Monthly order trends
- Items sold and item-level performance

This page shows when demand is generated and which items contribute to it.

### 3. Expenses

Breaks down the business cost structure by:

- Expense category and type
- Time period
- Contribution to total expenses
- Revenue versus expenses

### 4. Profitability Drivers

Connects expenses directly to profitability using:

- Net P&L and profit margin
- Expense % of revenue
- Labor-to-revenue ratio
- Fixed cost-to-revenue ratio
- Cost-to-revenue ratio
- COGS-to-revenue ratio

This page examines why revenue growth is not translating into stronger profitability.

### 5. Expense Control

Compares actual expenses with defined target levels to calculate:

- Target expenses
- Expense reduction required
- Expense variance
- Over budget and over budget %
- Profit at target expense levels

These measures quantify the gap to target and provide a basis for reviewing cost-control priorities.

### 6. Expense Reduction Plan

Brings together category-level expense gaps and the projected profit under the target expense scenario.

The projected figure represents **profit, not revenue**. It is conditional on achieving the target expense levels without reducing revenue; it is not an achieved business outcome.

## SQL Analysis

The SQL queries answer three business questions using the source data in `Data/`. They were run in SQLite, with result screenshots included alongside each query.

| Business Question | Approach | Query | Result |
| --- | --- | --- | --- |
| What was monthly revenue across both financial years? | `UNION ALL` combines the sales tables; `SUM` and `GROUP BY` calculate monthly totals. | [01_monthly_revenue.sql](sql/01_monthly_revenue.sql) | [Screenshot](sql/01_monthly_revenue.png) |
| How did revenue change from one month to the next? | A CTE calculates monthly revenue; `LAG` compares each month with the previous month. The output shows the absolute change, not a percentage. | [02_mom_revenue.sql](sql/02_mom_revenue.sql) | [Screenshot](sql/02_mom_revenue.png) |
| What were total expenses each month? | `SUM` and `GROUP BY` aggregate the expense data by month. | [03_monthly_expenses.sql](sql/03_monthly_expenses.sql) | [Screenshot](sql/03_monthly_expenses.png) |

To run the queries, import the three CSVs into SQLite using their filenames without `.csv` as the table names, then run the SQL files in order.

## Recommendations

The business should focus first on the largest and most controllable expense gaps rather than attempting broad cost cutting.

- Review raw materials and packaging for waste, purchasing costs and usage.
- Review staffing costs against order demand and operating requirements.
- Treat rent as a contractual cost rather than an immediate saving; assess any reduction separately for feasibility.
- Test whether the defined expense targets are operationally realistic before treating the scenario as a plan.
- Monitor expense-to-revenue ratios over time to identify costs rising faster than revenue.

The objective is to reduce unnecessary cost while protecting the expenditure that supports sales, product quality and customer experience.

## What This Project Demonstrates

This project demonstrates my ability to take a business problem through an analytical workflow:

**Business problem -> data preparation -> modelling -> analysis -> insight -> recommendations**

It combines Power BI reporting, DAX measures and SQL queries to examine a practical business question. The focus is on explaining the relationship between revenue, costs and profitability, while distinguishing observed results from target-based scenarios.

This project is part of my transition into data analytics, building on my previous experience in legal/contract lifecycle management and my subsequent experience running a cafe business.

Author,

Yash Shivalkar

Data Analyst | Power BI | SQL | Business Analysis
