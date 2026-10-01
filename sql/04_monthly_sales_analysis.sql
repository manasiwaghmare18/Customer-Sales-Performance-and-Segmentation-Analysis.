-- Monthly Sales Analysis

SELECT
    YEAR_ID,
    MONTH_ID,
    ROUND(SUM(SALES), 2) AS monthly_revenue,
    COUNT(DISTINCT ORDER_NUMBER) AS monthly_orders,
    COUNT(DISTINCT CUSTOMER_NAME) AS active_customers,
    ROUND(
        SUM(SALES) / COUNT(DISTINCT ORDER_NUMBER),
        2
    ) AS average_order_value
FROM sales_data_sample
GROUP BY
    YEAR_ID,
    MONTH_ID
ORDER BY
    YEAR_ID,
    MONTH_ID;