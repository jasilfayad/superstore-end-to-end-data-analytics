/* =====================================================
   PROJECT: Retail Business Intelligence & Sales Analysis
   TOOL: MySQL
   DATABASE: retail_analytics
   TABLE: orders

   OBJECTIVE:
   Analyze retail sales, customer behavior, product
   profitability and regional business performance.

   ===================================================== */

/* ============================================================
   SECTION 1: OVERALL BUSINESS PERFORMANCE
   ============================================================ */


/*
QUESTION 01: What is the overall business performance?

BUSINESS OBJECTIVE:
Evaluate the financial performance of the business by
calculating total revenue, total profit, total orders
and overall profit margin.
*/


SELECT
    SUM(Sales) AS Total_Revenue,
    SUM(Profit) AS Total_Profit,
    COUNT(DISTINCT `Order ID`) AS Total_Orders,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin
FROM orders;


/*
QUESTION 02: Which product category generates the highest revenue?

BUSINESS OBJECTIVE:
Compare sales and profit across product categories
to identify the highest revenue-generating category.
*/

SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Category
ORDER BY Total_Sales DESC;


/*
QUESTION 03: Which region generates the highest profit?

BUSINESS OBJECTIVE:
Evaluate profitability across geographical regions
and identify the strongest-performing region.
*/

SELECT
    Region,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Region
ORDER BY Total_Profit DESC;


/*
QUESTION 04: Who are the top 10 customers based on sales?

BUSINESS OBJECTIVE:
Identify the highest-value customers based on
their total purchasing amount.
*/

SELECT
    `Customer ID`,
    `Customer Name`,
    SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Customer ID`, `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;


/*
QUESTION 05: What are the monthly sales trends?

BUSINESS OBJECTIVE:
Analyze monthly revenue to understand sales patterns
and identify changes in business performance over time.
*/

SELECT
    DATE_FORMAT(`Order Date`, '%Y-%m') AS Sales_Month,
    SUM(Sales) AS Total_Sales
FROM orders
GROUP BY DATE_FORMAT(`Order Date`, '%Y-%m')
ORDER BY Sales_Month;


/* ============================================================
   SECTION 2: CUSTOMER AND PRODUCT ANALYSIS
   ============================================================ */


/*
QUESTION 06: Which customer segment generates the highest revenue?

BUSINESS OBJECTIVE:
Compare Consumer, Corporate and Home Office segments
to identify the most valuable customer segment.
*/

SELECT
    Segment,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM orders
GROUP BY Segment
ORDER BY Total_Sales DESC;


/*
QUESTION 07: What are the top 10 best-selling products?

BUSINESS OBJECTIVE:
Identify products generating the highest revenue
and understand customer purchasing preferences.
*/

SELECT
    `Product Name`,
    SUM(Quantity) AS Total_Quantity,
    SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;


/*
QUESTION 08: Which products generate losses?

BUSINESS OBJECTIVE:
Identify products with negative total profit
to investigate potential profitability problems.
*/

SELECT
    `Product Name`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY `Product Name`
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;


/*
QUESTION 09: What is the average order value?

BUSINESS OBJECTIVE:
Calculate average revenue per order to understand
the purchasing value of customers.
*/

SELECT
    ROUND(AVG(Order_Total), 2) AS Average_Order_Value
FROM (
    SELECT
        `Order ID`,
        SUM(Sales) AS Order_Total
    FROM orders
    GROUP BY `Order ID`
) AS Order_Summary;


/*
QUESTION 10: Which shipping method is most commonly used?

BUSINESS OBJECTIVE:
Compare shipping methods based on the number
of orders and total revenue generated.
*/

SELECT
    `Ship Mode`,
    COUNT(DISTINCT `Order ID`) AS Total_Orders,
    SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Ship Mode`
ORDER BY Total_Orders DESC;


/* ============================================================
   SECTION 3: SALES AND PROFITABILITY ANALYSIS
   ============================================================ */


/*
QUESTION 11: How do discounts relate to profitability?

BUSINESS OBJECTIVE:
Compare revenue and profit across discount levels
to investigate their relationship with profitability.
*/

SELECT
    Discount,
    COUNT(*) AS Total_Transactions,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Discount
ORDER BY Discount;


/*
QUESTION 12: Which year generates the highest sales?

BUSINESS OBJECTIVE:
Compare annual revenue and profit to identify
*/

SELECT
    YEAR(`Order Date`) AS Sales_Year,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY YEAR(`Order Date`)
ORDER BY Sales_Year;


/*
QUESTION 13: Which product subcategories sell the
highest quantity?

BUSINESS OBJECTIVE:
Identify the most frequently purchased subcategories
to understand product demand.
*/

SELECT
    `Sub-Category`,
    SUM(Quantity) AS Total_Quantity,
    SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Sub-Category`
ORDER BY Total_Quantity DESC;


/*
QUESTION 14: How does each category perform across regions?

BUSINESS OBJECTIVE:
Compare category-level sales and profitability
across geographical regions to identify
regional business opportunities.
*/

SELECT
    Region,
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Region, Category
ORDER BY Region, Total_Sales DESC;


/* ============================================================
   SECTION 4: ADVANCED SQL ANALYSIS
   ============================================================ */


/*
QUESTION 15: Who are the top 10 customers ranked by sales?

BUSINESS OBJECTIVE:
Rank customers according to their purchasing value
to identify high-value customers.
*/

SELECT
    `Customer Name`,
    Total_Sales,
    RANK() OVER (
        ORDER BY Total_Sales DESC
    ) AS Sales_Rank
FROM (
    SELECT
        `Customer ID`,
        `Customer Name`,
        SUM(Sales) AS Total_Sales
    FROM orders
    GROUP BY `Customer ID`, `Customer Name`
) AS Customer_Sales
ORDER BY Sales_Rank
LIMIT 10;


/*
QUESTION 16: Which product category ranks highest
based on total profit?

BUSINESS OBJECTIVE:
Rank product categories according to profitability
to identify the strongest-performing category.
*/

SELECT
    Category,
    Total_Profit,
    DENSE_RANK() OVER (
        ORDER BY Total_Profit DESC
    ) AS Profit_Rank
FROM (
    SELECT
        Category,
        SUM(Profit) AS Total_Profit
    FROM orders
    GROUP BY Category
) AS Category_Analysis;


/*
QUESTION 17: Which products generate sales above
the average product sales?

BUSINESS OBJECTIVE:
Identify products whose total revenue exceeds
the average revenue generated per product.
*/

SELECT
    `Product Name`,
    SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Product Name`
HAVING SUM(Sales) > (
    SELECT AVG(Product_Sales)
    FROM (
        SELECT
            SUM(Sales) AS Product_Sales
        FROM orders
        GROUP BY `Product Name`
    ) AS Product_Averages
)
ORDER BY Total_Sales DESC;


/*
QUESTION 18: What are the monthly sales totals using a CTE?

BUSINESS OBJECTIVE:
Organize monthly sales calculations using a
Common Table Expression to improve query readability.
*/

WITH Monthly_Sales AS (
    SELECT
        DATE_FORMAT(`Order Date`, '%Y-%m') AS Sales_Month,
        SUM(Sales) AS Total_Sales
    FROM orders
    GROUP BY DATE_FORMAT(`Order Date`, '%Y-%m')
)

SELECT
    Sales_Month,
    Total_Sales
FROM Monthly_Sales
ORDER BY Sales_Month;


/*
QUESTION 19: What are the cumulative monthly sales?

BUSINESS OBJECTIVE:
Calculate running total revenue month by month
*/

WITH Monthly_Sales AS (
    SELECT
        DATE_FORMAT(`Order Date`, '%Y-%m') AS Sales_Month,
        SUM(Sales) AS Total_Sales
    FROM orders
    GROUP BY DATE_FORMAT(`Order Date`, '%Y-%m')
)

SELECT
    Sales_Month,
    Total_Sales,
    SUM(Total_Sales) OVER (
        ORDER BY Sales_Month
    ) AS Cumulative_Sales
FROM Monthly_Sales
ORDER BY Sales_Month;


/*
QUESTION 20: What percentage of total revenue comes
from each product category?

BUSINESS OBJECTIVE:
Calculate each category's contribution to total
company revenue and understand revenue distribution.
*/

WITH Category_Sales AS (
    SELECT
        Category,
        SUM(Sales) AS Total_Sales
    FROM orders
    GROUP BY Category
)

SELECT
    Category,
    Total_Sales,
    ROUND(
        Total_Sales * 100 /
        SUM(Total_Sales) OVER (), 2
    ) AS Sales_Percentage
FROM Category_Sales
ORDER BY Total_Sales DESC;


/* ============================================================
   END OF SQL BUSINESS ANALYSIS

   TOTAL BUSINESS QUESTIONS: 20

   SKILLS DEMONSTRATED:
   - Aggregate Functions
   - Filtering and Sorting
   - GROUP BY and HAVING
   - Date Functions
   - Subqueries
   - Common Table Expressions
   - Window Functions
   - RANK and DENSE_RANK
   - Running Total Calculations
   - Business KPI Calculations

   ============================================================ */
