ALTER TABLE sales_data_sample
ADD COLUMN ORDER_DATE_CLEAN DATE;

UPDATE sales_data_sample
SET ORDER_DATE_CLEAN = str_to_date(ORDER_DATE, '%c/%e/%Y');

SELECT
    ORDER_DATE,
    ORDER_DATE_CLEAN
FROM sales_data_sample
LIMIT 10;