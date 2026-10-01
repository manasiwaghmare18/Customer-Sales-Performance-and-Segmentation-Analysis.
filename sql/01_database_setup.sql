-- Project: Sales Performance & Reporting Automation
-- Database Setup

CREATE DATABASE IF NOT EXISTS sales_reporting_automation;

USE sales_reporting_automation;

SHOW TABLES;

CREATE TABLE sales_data_sample (
    ORDER_NUMBER INT NOT NULL,
    QUANTITY_ORDERED INT NOT NULL,
    PRICE_EACH DECIMAL(12,2) NOT NULL,
    SALES DECIMAL(14,2) NOT NULL,
    ORDER_DATE VARCHAR(30) NOT NULL,
    MONTH_ID INT NOT NULL,
    YEAR_ID INT NOT NULL,
    PRODUCT_LINE VARCHAR(100) NOT NULL,
    PRODUCT_CODE VARCHAR(30) NOT NULL,
    CUSTOMER_NAME VARCHAR(150) NOT NULL,
    COUNTRY VARCHAR(100) NOT NULL,
    TERRITORY VARCHAR(50),
    DEALSIZE VARCHAR(30),
    PRIMARY KEY (ORDER_NUMBER, PRODUCT_CODE)
);

SELECT * FROM sales_data_sample;

ALTER TABLE sales_data_sample
ADD COLUMN ORDER_DATE_CLEAN DATE;

UPDATE sales_data_sample
SET ORDER_DATE_CLEAN = str_to_date(ORDER_DATE, '%c/%e/%Y');

SELECT
    ORDER_DATE,
    ORDER_DATE_CLEAN
FROM sales_data_sample
LIMIT 10;

DESCRIBE sales_data_sample;



SELECT
    COUNT(*) AS total_sales_records,
    ROUND(SUM(SALES), 2) AS total_revenue,
    COUNT(DISTINCT ORDER_NUMBER) AS total_orders,
    COUNT(DISTINCT CUSTOMER_NAME) AS unique_customers,
    ROUND(
        SUM(SALES) / COUNT(DISTINCT ORDER_NUMBER),
        2
    ) AS average_order_value
FROM sales_data_sample;