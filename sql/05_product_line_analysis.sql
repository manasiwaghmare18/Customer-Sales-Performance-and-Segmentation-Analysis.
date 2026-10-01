-- Product Line Analysis

SELECT
    PRODUCT_LINE,
    ROUND(SUM(SALES), 2) AS total_revenue,
    COUNT(DISTINCT ORDER_NUMBER) AS total_orders,
    COUNT(DISTINCT CUSTOMER_NAME) AS unique_customers
FROM sales_data_sample
GROUP BY PRODUCT_LINE
ORDER BY total_revenue DESC;