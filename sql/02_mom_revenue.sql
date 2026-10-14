-- 02_mom_revenue.sql
-- Month over Month Revenue for 2 FYs
WITH monthly AS (
SELECT substr(Date, 7, 4) || '-' || substr(Date, 4, 2) AS month, SUM(Total_Amount) AS revenue
FROM (
SELECT Date, Total_Amount FROM qsr_business_sales_fy24_25
UNION ALL
SELECT Date, Total_Amount FROM qsr_business_sales_fy25_26
)
GROUP BY month
)
SELECT Month, Revenue,
revenue - LAG(revenue) OVER (ORDER BY month) AS MoM_change
FROM monthly
ORDER BY month;
