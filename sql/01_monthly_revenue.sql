-- 01_monthly_revenue.sql
-- What was the monthly revenue across FY24-25 and FY25-26?

SELECT substr(Date, 7, 4) || '-' || substr(Date, 4, 2) AS month, SUM(Total_Amount) AS revenue
FROM (
SELECT Date, Total_Amount FROM qsr_business_sales_fy24_25
UNION ALL
SELECT Date, Total_Amount FROM qsr_business_sales_fy25_26
)
GROUP BY month
ORDER BY month;
