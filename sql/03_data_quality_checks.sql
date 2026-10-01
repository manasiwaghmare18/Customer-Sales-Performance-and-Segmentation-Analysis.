-- data-quality review item

SELECT
    COUNT(*) AS total_sales_records,
    
    SUM(
        CASE
            WHEN ORDER_NUMBER IS NULL
            THEN 1
            ELSE 0
        END
    ) AS missing_order_numbers,
    
    SUM(
        CASE
            WHEN CUSTOMER_NAME IS NULL
              OR TRIM(CUSTOMER_NAME) = ''
            THEN 1
            ELSE 0
        END
    ) AS missing_customer_names,
    
    SUM(
        CASE
            WHEN SALES IS NULL
            THEN 1
            ELSE 0
        END
    ) AS missing_sales_values,
    
    SUM(
        CASE
            WHEN QUANTITY_ORDERED <= 0
            THEN 1
            ELSE 0
        END
    ) AS invalid_quantity_values,
    
    SUM(
        CASE
            WHEN PRICE_EACH <= 0
            THEN 1
            ELSE 0
        END
    ) AS invalid_price_values,
    
    SUM(
        CASE
            WHEN SALES <= 0
            THEN 1
            ELSE 0
        END
    ) AS invalid_sales_values,
    
    SUM(
        CASE
            WHEN ABS(
                SALES - (QUANTITY_ORDERED * PRICE_EACH)
            ) > 0.01
            THEN 1
            ELSE 0
        END
    ) AS sales_reconciliation_issues
FROM sales_data_sample;