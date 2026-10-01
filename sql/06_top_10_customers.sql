-- Top 10 Customers Query

SELECT
    CUSTOMER_NAME,
    COUNTRY,
    ROUND(SUM(SALES), 2) AS customer_revenue,
    COUNT(DISTINCT ORDER_NUMBER) AS total_orders,
    ROUND(
        SUM(SALES) / COUNT(DISTINCT ORDER_NUMBER),
        2
    ) AS average_order_value
FROM sales_data_sample
GROUP BY
    CUSTOMER_NAME,
    COUNTRY
ORDER BY customer_revenue DESC
LIMIT 10;