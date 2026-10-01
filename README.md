# 📊 Sales Performance Reporting Automation

div align=center

[![MySQL](httpsimg.shields.iobadgeMySQL-Data%20Analysis-4479A1style=for-the-badge&logo=mysql&logoColor=white)](httpswww.mysql.com)
[![SQL](httpsimg.shields.iobadgeSQL-Analytics-336791style=for-the-badge&logo=databricks&logoColor=white)](httpswww.mysql.com)
[![Microsoft Excel](httpsimg.shields.iobadgeMicrosoft%20Excel-VBA%20Automation-217346style=for-the-badge&logo=microsoft-excel&logoColor=white)](httpswww.microsoft.commicrosoft-365excel)
[![VBA](httpsimg.shields.iobadgeVBA-Reporting%20Automation-217346style=for-the-badge&logo=microsoft-excel&logoColor=white)](httpslearn.microsoft.comen-usofficevbaapioverview)
[![Tableau](httpsimg.shields.iobadgeTableau-Interactive%20Dashboard-E97627style=for-the-badge&logo=tableau&logoColor=white)](httpswww.tableau.com)
[![Data Quality](httpsimg.shields.iobadgeData%20Quality-Validated-2EA44Fstyle=for-the-badge&logo=checkmarx&logoColor=white)](#-data-quality--validation)

br

[![Sales Records](httpsimg.shields.iobadgeSales%20Records-2%2C823-5B4BFFstyle=flat-square)](#-project-highlights)
[![Revenue](httpsimg.shields.iobadgeTotal%20Revenue-%2410.03M-00A86Bstyle=flat-square)](#-project-highlights)
[![Orders](httpsimg.shields.iobadgeDistinct%20Orders-307-0078D4style=flat-square)](#-project-highlights)
[![Customers](httpsimg.shields.iobadgeUnique%20Customers-92-F28C28style=flat-square)](#-project-highlights)
[![Average Order Value](httpsimg.shields.iobadgeAverage%20Order%20Value-%2432.68K-8E44ADstyle=flat-square)](#-project-highlights)
[![Reconciliation Flags](httpsimg.shields.iobadgeReconciliation%20Flags-1%2C304-F59E0Bstyle=flat-square)](#-data-quality--validation)
[![Dashboard](httpsimg.shields.iobadgeTableau%20Dashboard-Interactive-E97627style=flat-square&logo=tableau&logoColor=white)]((https://public.tableau.com/app/profile/mansi.waghmare1807/viz/GlobalSalesPerformanceCustomerInsights/GlobalSalesPerformanceCustomerInsights))

### From raw sales transactions to decision-ready reporting — automated with SQL, Excel VBA, and Tableau

An end-to-end sales analytics and reporting automation project that converts 2,823 transactional records into validated business KPIs, customer segments, automated Excel reporting, and an interactive Tableau dashboard.

[▶ View Interactive Tableau Dashboard](https://public.tableau.com/app/profile/mansi.waghmare1807/viz/GlobalSalesPerformanceCustomerInsights/GlobalSalesPerformanceCustomerInsights) · [Explore SQL Analysis](#-sql-analysis) · [View Dashboard Gallery](#-dashboard-gallery)

div

---

## ✨ Project Highlights

 $10.03M  2,823  307  92 
------------
 Total Revenue  Sales Records  Distinct Orders  Unique Customers 

 $32.68K  0  0  1,304 
------------
 Average Order Value  Missing Order IDs  Missing Customer Names  Sales Reconciliation Flags 

 Impact This project transforms raw sales transactions into a validated and reusable reporting workflow. It uncovered 1,304 records where recorded sales differed from `quantity ordered × unit price` by more than $0.01—creating a clear data-quality control point before business reporting.

---

## 🎯 Business Problem

Sales teams often work with transactional data that is difficult to validate, analyze, and communicate consistently. Manual reporting creates delays, inconsistent calculations, limited visibility into customer value, and a high risk of decision-making from unvalidated data.

This project solves that problem by building an end-to-end reporting workflow that

- Validates transactional sales data before analysis
- Standardizes dates for reliable time-based reporting
- Calculates core commercial KPIs
- Identifies monthly revenue trends and product-line performance
- Highlights top revenue-generating customers
- Segments customers using RFM analysis
- Automates Excel reporting with VBA
- Publishes an interactive Tableau dashboard for business users

---

## 🧠 What I Built

```text
Raw CSV Sales Data
        │
        ▼
MySQL Database + Data Validation
        │
        ├── Date standardization
        ├── Missing  invalid-value checks
        ├── Sales reconciliation checks
        ├── KPI calculations
        ├── Trend and product analysis
        └── RFM customer segmentation
        │
        ▼
Cleaned Data + SQL Result Exports
        │
        ├── Excel VBA Reporting Dashboard
        └── Tableau Public Interactive Dashboard
```

### End-to-end workflow

1. Imported raw sales data into a structured MySQL table.
2. Created a composite primary key using `ORDER_NUMBER` and `PRODUCT_CODE`.
3. Converted text-based order dates into an analysis-ready `DATE` field.
4. Performed data-quality checks for missing, invalid, and inconsistent records.
5. Calculated core commercial KPIs.
6. Analyzed monthly revenue, product-line performance, and top customers.
7. Built customer-level RFM scores and actionable customer segments.
8. Exported analytical outputs for downstream reporting.
9. Created an Excel reporting dashboard with VBA automation.
10. Built and published an interactive Tableau dashboard with KPI cards, filters, charts, and segmentation insights.

---

## 🛠️ Tech Stack

 Technology  How it was used 
------
 MySQL  Database setup, data cleaning, validation, KPI analysis, trend analysis, RFM segmentation 
 SQL  Aggregations, conditional checks, `COUNT(DISTINCT)`, `CASE`, CTEs, window functions, views 
 Excel  Automated sales reporting workbook and dashboard delivery 
 VBA  Excel reporting automation 
 Tableau Public  Interactive dashboarding, KPI cards, filters, line charts, bar charts, and treemap 
 CSV  Source data, cleaned data, SQL result exports, customer-segment dataset 
 GitGitHub  Version control, documentation, and portfolio presentation 

---

## 🗂️ Repository Structure

```text
Sales-Performance-Reporting-Automation
│
├── data
│   ├── sales_data_sample.csv
│   ├── cleaned_sales_data.csv
│   └── customer_segments.csv
│
├── sql
│   ├── 01_database_setup.sql
│   ├── 02_date_conversion_check.sql
│   ├── 03_data_quality_checks.sql
│   ├── 04_monthly_sales_analysis.sql
│   ├── 05_product_line_analysis.sql
│   ├── 06_top_10_customers.sql
│   ├── 07_rfm_scores.sql
│   └── 08_customer_segments.sql
│
├── outputs
│   └── sql_results
│       ├── 01_kpi_summary.csv
│       ├── 02_date_conversion_check.csv
│       ├── 03_data_quality_checks.csv
│       ├── 04_monthly_sales_analysis.csv
│       ├── 05_product_line_analysis.csv
│       ├── 06_top_10_customers.csv
│       ├── 07_rfm_scores_sample.csv
│       └── 08_customer_segment_summary.csv
│
├── excel
│   ├── Sales_Reporting_Automation.xlsm
│   └── Sales_Performance_Dashboard.pdf
│
└── images
    ├── data_quality_report.png
    ├── excel_dashboard.png
    ├── mysql_table_schema.png
    ├── rfm_customer_segments.png
    ├── sql_data_quality_checks.png
    ├── sql_kpi_summary.png
    └── tableau_dashboard.png
```

---

## 🧹 Data Quality & Validation

Before building dashboards, I validated the data to ensure the reported metrics were trustworthy.

### Checks performed

- Missing `ORDER_NUMBER` values
- Missing or blank `CUSTOMER_NAME` values
- Missing `SALES` values
- Invalid `QUANTITY_ORDERED` values (`= 0`)
- Invalid `PRICE_EACH` values (`= 0`)
- Invalid `SALES` values (`= 0`)
- Sales reconciliation recorded `SALES` compared with `QUANTITY_ORDERED × PRICE_EACH`
- Date conversion from a text field into a clean MySQL `DATE` field

### Quality-check results

 Validation check  Result 
------
 Total sales records  2,823 
 Missing order numbers  0 
 Missing customer names  0 
 Missing sales values  0 
 Invalid quantity values  0 
 Invalid unit-price values  0 
 Invalid sales values  0 
 Sales reconciliation issues  1,304 

 The dataset contained no missing or non-positive values for core fields. However, 1,304 sales reconciliation flags were detected, proving the importance of data validation before using raw values for business decisions.

### Data-quality evidence

p align=center
  img src=imagesdata_quality_report.png alt=Data Quality Report width=850
p

p align=center
  img src=imagessql_data_quality_checks.png alt=SQL Data Quality Checks width=850
p

---

## 🗄️ SQL Analysis

### Database design

A MySQL database was created to store transaction-level sales data with defined data types and a composite primary key.

```sql
PRIMARY KEY (ORDER_NUMBER, PRODUCT_CODE)
```

The composite key preserves uniqueness at the order-product level and supports accurate aggregation.

A clean date field, `ORDER_DATE_CLEAN`, was generated from the original text-based order date

```sql
ALTER TABLE sales_data_sample
ADD COLUMN ORDER_DATE_CLEAN DATE;

UPDATE sales_data_sample
SET ORDER_DATE_CLEAN = STR_TO_DATE(ORDER_DATE, '%c%e%Y');
```

p align=center
  img src=imagesmysql_table_schema.png alt=MySQL Sales Table Schema width=850
p

### KPI query logic

```sql
SELECT
    COUNT() AS total_sales_records,
    ROUND(SUM(SALES), 2) AS total_revenue,
    COUNT(DISTINCT ORDER_NUMBER) AS total_orders,
    COUNT(DISTINCT CUSTOMER_NAME) AS unique_customers,
    ROUND(
        SUM(SALES)  COUNT(DISTINCT ORDER_NUMBER),
        2
    ) AS average_order_value
FROM sales_data_sample;
```

### KPI results

 KPI  Result 
------
 Total sales records  2,823 
 Total revenue  $10,032,628.85 
 Distinct orders  307 
 Unique customers  92 
 Average order value  $32,679.57 

p align=center
  img src=imagessql_kpi_summary.png alt=SQL KPI Summary width=850
p

---

## 👥 Customer Segmentation with RFM

This project goes beyond basic sales reporting by using RFM segmentation to classify customers according to their purchase behavior.

### RFM methodology

 Metric  Definition  Business meaning 
---------
 Recency  Days since a customer’s most recent purchase  How recently the customer engaged 
 Frequency  Number of distinct orders  How often the customer purchases 
 Monetary  Total customer revenue  How much revenue the customer contributes 

### Technical approach

- Calculated Recency as the number of days between each customer’s most recent order and the latest order date in the dataset.
- Calculated Frequency using `COUNT(DISTINCT ORDER_NUMBER)`.
- Calculated Monetary Value using `SUM(SALES)`.
- Used `NTILE(5)` window functions to create R, F, and M scores.
- Combined RFM scores into a single customer-level score.
- Created a reusable SQL view to assign customers into actionable business segments.

### Customer segments

 Segment  Rule  Suggested business action 
---------
 Champions  High recency, frequency, and monetary scores  Protect, reward, and cross-sell 
 Loyal Customers  High frequency and strong monetary value  Build retention and loyalty offers 
 Potential Loyalists  Recent customers with developing frequency  Nurture with targeted campaigns 
 At Risk  Low recency with meaningful purchase frequency  Re-engage before churn 
 Low Value  Remaining lower-priority customers  Use efficient, scaled communications 

p align=center
  img src=imagesrfm_customer_segments.png alt=RFM Customer Segmentation width=850
p

### Example segmentation logic

```sql
CASE
    WHEN r_score = 4
     AND f_score = 4
     AND m_score = 4
        THEN 'Champions'

    WHEN f_score = 4
     AND m_score = 3
        THEN 'Loyal Customers'

    WHEN r_score = 4
     AND f_score = 3
        THEN 'Potential Loyalists'

    WHEN r_score = 2
     AND f_score = 3
        THEN 'At Risk'

    ELSE 'Low Value'
END AS CUSTOMER_SEGMENT
```

---

## 🥇 Top Customer Insight

The analysis identified clear revenue concentration among top accounts.

 Rank  Customer  Country  Revenue  Orders  Average Order Value 
------------------
 1  Euro Shopping Channel  Spain  $912,294.11  26  $35,088.24 
 2  Mini Gifts Distributors Ltd.  USA  $654,858.06  17  $38,521.06 
 3  Australian Collectors, Co.  Australia  $200,995.41  5  $40,199.08 
 4  Muscle Machine Inc  USA  $197,736.94  4  $49,434.24 
 5  La Rochelle Gifts  France  $180,124.90  4  $45,031.23 

 Business implication Revenue is meaningfully concentrated among strategic accounts. These customers should be prioritized for proactive account management, retention initiatives, and cross-sell opportunities.

---

## 📈 Excel Reporting Automation

An Excel macro-enabled reporting workbook was built to make sales reporting more repeatable and accessible for spreadsheet-based stakeholders.

### Deliverables

- Macro-enabled Excel reporting workbook `Sales_Reporting_Automation.xlsm`
- Exported dashboard PDF `Sales_Performance_Dashboard.pdf`
- Visual sales-performance dashboard
- VBA-enabled reporting automation

### Excel dashboard

p align=center
  img src=imagesexcel_dashboard.png alt=Excel Sales Performance Dashboard width=850
p

### Business value

The Excel deliverable demonstrates how SQL analytical outputs can be operationalized for business users who work primarily in spreadsheets. Instead of manually recreating reports, stakeholders can use structured dashboard components and automation-enabled reporting.

---

## 📊 Tableau Dashboard

### [▶ View the Interactive Tableau Dashboard](https://public.tableau.com/app/profile/mansi.waghmare1807/viz/GlobalSalesPerformanceCustomerInsights/GlobalSalesPerformanceCustomerInsights)

The Tableau dashboard combines sales performance, customer ranking, and segmentation into one executive-ready view.

### Dashboard features

- Four KPI cards
  - Total Revenue
  - Total Orders
  - Unique Customers
  - Average Order Value
- Monthly Revenue Trend line chart
- Revenue by Product Line horizontal bar chart
- Top 10 Customers by Revenue horizontal bar chart
- Revenue by Customer Segment treemap
- Interactive filters for
  - Year
  - Country
  - Product Line

p align=center
  img src=imagestableau_dashboard.png alt=Tableau Sales Performance Dashboard width=1000
p

### Dashboard design rationale

 Component  Design choice  Business purpose 
---------
 Revenue trend  Line chart  Shows month-by-month performance over time 
 Product performance  Ranked horizontal bars  Simplifies product-line comparison 
 Top customers  Ranked horizontal bars  Highlights revenue concentration and strategic accounts 
 Customer segments  Treemap  Shows relative segment revenue contribution compactly 
 KPI cards  Prominent summary tiles  Delivers instant performance context 
 Filters  Year, Country, Product Line  Supports self-service analysis 

---

## 🖼️ Dashboard Gallery

### Excel dashboard

p align=center
  img src=imagesexcel_dashboard.png alt=Excel Dashboard width=900
p

### Tableau dashboard

p align=center
  img src=imagestableau_dashboard.png alt=Tableau Dashboard width=1000
p

---

## 🔍 Key Insights

### Quantitative findings

- Processed 2,823 transaction-level sales records.
- Analyzed 307 distinct orders from 92 unique customers.
- Measured $10.03M in total revenue.
- Calculated an average order value of $32.68K.
- Identified Euro Shopping Channel as the highest-revenue account at $912.29K across 26 orders.
- Identified Mini Gifts Distributors Ltd. as the second-highest account at $654.86K across 17 orders.
- Detected zero missing order IDs, customer names, or sales values.
- Detected 1,304 sales reconciliation exceptions for review.
- Classified customers into Champions, Loyal Customers, Potential Loyalists, At Risk, and Low Value groups.

### Qualitative business insights

- Revenue concentration A small number of high-value customers generate a significant share of total revenue, making retention and account management business-critical.
- Customer prioritization RFM segmentation enables differentiated actions instead of applying one generic engagement strategy to every customer.
- Data governance Reconciliation exceptions show that reporting must begin with validation—not just visualization.
- Faster reporting The Excel and Tableau outputs reduce the effort required to review performance and explore results.
- Self-service analytics Year, Country, and Product Line filters allow stakeholders to answer common questions without requesting a new report.

---

## 🚀 How to Run This Project

### 1. Set up MySQL

1. Open MySQL Workbench or another MySQL environment.
2. Run

```text
sql01_database_setup.sql
```

3. Import the raw source data into the `sales_data_sample` table.
4. Run the remaining scripts in numerical order

```text
02_date_conversion_check.sql
03_data_quality_checks.sql
04_monthly_sales_analysis.sql
05_product_line_analysis.sql
06_top_10_customers.sql
07_rfm_scores.sql
08_customer_segments.sql
```

### 2. Review SQL outputs

Open the exported analysis files in

```text
outputssql_results
```

These contain KPI summaries, date-validation results, data-quality checks, monthly sales analysis, product-line analysis, top-customer rankings, RFM scores, and customer segments.

### 3. Open the Excel dashboard

Open

```text
excelSales_Reporting_Automation.xlsm
```

 Enable macros if prompted to use the VBA-enabled reporting features.

### 4. Explore Tableau

Open the interactive dashboard:

[▶ Launch the Tableau Public dashboard](https://public.tableau.com/app/profile/mansi.waghmare1807/viz/GlobalSalesPerformanceCustomerInsights/GlobalSalesPerformanceCustomerInsights)


Use the Year, Country, and Product Line filters to explore performance.

---

## 💼 Skills Demonstrated

```text
SQL Data Analysis          Data Quality Validation       MySQL Database Design
CTEs & Window Functions   Customer Segmentation          RFM Analysis
KPI Development           Business Intelligence          Excel VBA Automation
Dashboard Design          Tableau Public                 Data Storytelling
Data Visualization        Stakeholder Reporting          GitHub Documentation
```

---

## 🧾 Project Summary

This project demonstrates an end-to-end analytics workflow—from raw transactional data to automated, decision-ready reporting.

### What I tackled

I transformed raw sales records into a structured business-intelligence workflow. The project included database design, data cleaning, date standardization, quality validation, KPI development, SQL analysis, RFM customer segmentation, ExcelVBA reporting automation, and Tableau dashboard development.

### Quantitative results

 Outcome  Result 
------
 Transaction-level records processed  2,823 
 Total revenue analyzed  $10,032,628.85 
 Distinct orders analyzed  307 
 Unique customers analyzed  92 
 Average order value  $32,679.57 
 Missing order IDs  0 
 Missing customer names  0 
 Missing sales values  0 
 Reconciliation flags identified  1,304 
 RFM customer segments created  5 
 Reporting outputs delivered  SQL + Excel VBA + Tableau 

### Qualitative outcomes

- Built a validated analytical foundation instead of reporting directly from unverified raw data.
- Created a reusable workflow from MySQL analysis to Excel and Tableau reporting.
- Turned transaction history into practical customer segments for retention and growth decisions.
- Delivered both spreadsheet-based and interactive BI reporting formats for different stakeholder needs.
- Improved data storytelling by combining KPIs, trends, rankings, filters, and customer segmentation in one reporting ecosystem.

### Why this project matters

This project reflects the work expected in real-world data analyst and business intelligence roles

- Validate data before making decisions
- Write reliable SQL and build reusable analytical views
- Define meaningful KPIs
- Identify actionable customer and revenue insights
- Automate recurring reporting processes
- Build accessible dashboards for non-technical stakeholders
- Communicate findings clearly through data storytelling

---

div align=center

### ⭐ If you found this project useful, consider giving it a star.

Built with MySQL, SQL, Excel VBA, Tableau Public, and a focus on measurable business impact.

div