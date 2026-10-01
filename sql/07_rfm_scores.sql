-- Create View RFM SCORES

CREATE VIEW rfm_scores AS
WITH customer_rfm AS (
    SELECT
        CUSTOMER_NAME,
        DATEDIFF(
            (SELECT MAX(ORDER_DATE_CLEAN) FROM sales_data_sample),
            MAX(ORDER_DATE_CLEAN)
        ) AS recency,
        COUNT(DISTINCT ORDER_NUMBER) AS frequency,
        ROUND(SUM(SALES), 2) AS monetary_value
    FROM sales_data_sample
    GROUP BY CUSTOMER_NAME
)
SELECT
    CUSTOMER_NAME,
    recency,
    frequency,
    monetary_value,
    NTILE(5) OVER (ORDER BY recency DESC) AS r_score,
    NTILE(5) OVER (ORDER BY frequency ASC) AS f_score,
    NTILE(5) OVER (ORDER BY monetary_value ASC) AS m_score
FROM customer_rfm;

SELECT * FROM rfm_scores;