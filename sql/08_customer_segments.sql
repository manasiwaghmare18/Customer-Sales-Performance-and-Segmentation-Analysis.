-- Create Customer Segments VIEW

CREATE VIEW customer_segments AS
SELECT
    CUSTOMER_NAME,
    recency AS RECENCY,
    frequency AS FREQUENCY,
    monetary_value AS MONETARY_VALUE,
    CONCAT(r_score, f_score, m_score) AS RFM_SCORE,
    CASE
        WHEN r_score >= 4
         AND f_score >= 4
         AND m_score >= 4
            THEN 'Champions'

        WHEN f_score >= 4
         AND m_score >= 3
            THEN 'Loyal Customers'

        WHEN r_score >= 4
         AND f_score >= 3
            THEN 'Potential Loyalists'

        WHEN r_score <= 2
         AND f_score >= 3
            THEN 'At Risk'

        ELSE 'Low Value'
    END AS CUSTOMER_SEGMENT,
    monetary_value AS TOTAL_REVENUE
FROM rfm_scores;

SELECT * FROM customer_segments;

-- Validate Segments 

SELECT
    CUSTOMER_SEGMENT,
    COUNT(*) AS total_customers,
    ROUND(SUM(TOTAL_REVENUE), 2) AS segment_revenue,
    ROUND(
        SUM(TOTAL_REVENUE)
        /
        (SELECT SUM(TOTAL_REVENUE) FROM customer_segments)
        * 100,
        2
    ) AS revenue_share_percent
FROM customer_segments
GROUP BY CUSTOMER_SEGMENT
ORDER BY segment_revenue DESC;

-- Export Customer Segment FOR EXCEL
SELECT
    CUSTOMER_NAME,
    RECENCY,
    FREQUENCY,
    MONETARY_VALUE,
    RFM_SCORE,
    CUSTOMER_SEGMENT,
    TOTAL_REVENUE
FROM customer_segments
ORDER BY TOTAL_REVENUE DESC;