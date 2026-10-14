-- 03_monthly_expenses.sql
-- Monthly Expenses for FY24-25 and FY25-26
SELECT substr(Date, 1, 7) AS month, SUM(Amount) AS total_expenses
FROM qsr_capex_opex_fy24_26
GROUP BY month
Order by month
