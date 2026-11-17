# SQL Analysis – Superstore Sales Dataset

## Project Overview

This project uses **MySQL** to analyse the Sample Superstore dataset and identify business trends across sales, profit, customers, products, regions, discounts, and shipping methods.

The SQL analysis is organised into 19 business questions. The queries and their results are documented in `SQL_Analysis.sql` and this README.

## Project Objective

The objective is to use SQL to:
- Evaluate overall business performance.
- Identify the strongest and weakest product categories.
- Understand customer and regional performance.
- Find high-revenue and loss-making products.
- Analyse discounting and shipping patterns.
- Calculate business KPIs and category contribution.
- Explore sales trends over time.

## Tools & Technologies

- **Database:** MySQL
- **SQL concepts:** `SELECT`, aggregate functions, `GROUP BY`, `HAVING`, `ORDER BY`, `LIMIT`, subqueries, Common Table Expressions (CTEs), window functions, and ranking.
- **Dataset:** Sample Superstore
- **Table analysed:** `orders`

## Dataset Fields Used

The analysis uses fields including Order ID, Order Date, Ship Mode, Customer ID, Customer Name, Segment, Region, Category, Sub-Category, Product Name, Sales, Profit, Quantity, and Discount.

---

# SQL Business Analysis – 19 Questions and Results

## 1. What is the overall business performance?

**Business objective:** Calculate total revenue, total profit, number of distinct orders, and overall profit margin.

| KPI | Result |
|---|---:|
| Total Revenue | $2,272,449.86 |
| Total Profit | $282,857.75 |
| Total Orders | 4,931 |
| Profit Margin | 12.45% |

**Insight:** The dataset records approximately $2.27 million in sales and $282,857.75 in profit. The overall profit margin is 12.45%, meaning the business generated approximately $12.45 in profit for every $100 in sales.

## 2. Which product category generates the highest revenue?

**Business objective:** Compare sales and profit across product categories.

| Category | Total Sales | Total Profit |
|---|---:|---:|
| Technology | $835,900.07 | $145,387.10 |
| Furniture | $733,046.86 | $16,980.77 |
| Office Supplies | $703,502.93 | $120,489.89 |

**Insights:**
- Technology generates the highest sales and the highest profit.
- Office Supplies generates the second-highest profit.
- Furniture has substantial sales but comparatively low profit.

**Business implication:** Furniture profitability deserves further investigation. Its low profit relative to sales may be associated with product costs, pricing, or discounting; additional analysis is needed to identify the cause.

## 3. Which region generates the highest profit?

**Business objective:** Compare total profit across regions.

| Region | Total Profit |
|---|---:|
| West | $106,021.15 |
| East | $90,672.01 |
| South | $46,035.69 |
| Central | $40,128.90 |

**Insights:**
- West is the most profitable region.
- East ranks second.
- Central records the lowest profit among the four regions.

**Business implication:** The business could investigate the sales mix, costs, and discount patterns in Central and South to identify opportunities to improve profitability.

## 4. Who are the top 10 customers by sales?

**Business objective:** Identify the customers who contribute the most sales.

| Rank | Customer | Total Sales |
|---:|---|---:|
| 1 | Sean Miller | $25,043.05 |
| 2 | Tamara Chand | $19,017.85 |
| 3 | Raymond Buch | $15,117.34 |
| 4 | Tom Ashbrook | $14,595.62 |
| 5 | Adrian Barton | $14,355.61 |
| 6 | Sanjit Chand | $14,142.33 |
| 7 | Ken Lonsdale | $14,071.92 |
| 8 | Hunter Lopez | $12,873.30 |
| 9 | Sanjit Engle | $12,209.44 |
| 10 | Christopher Conant | $12,129.07 |

**Insights:**
- Sean Miller is the highest-sales customer in the result.
- The top 10 customers each generated more than $12,000 in sales.

**Business implication:** Customer-level sales analysis can help identify valuable customers and support customer retention strategies.

## 5. Which customer segment generates the highest sales?

**Business objective:** Compare sales, profit, and distinct orders by customer segment.

| Segment | Total Sales | Total Profit | Total Orders |
|---|---:|---:|---:|
| Consumer | $1,150,166.18 | $132,669.78 | 2,543 |
| Corporate | $696,604.51 | $90,366.30 | 1,494 |
| Home Office | $425,679.16 | $59,821.68 | 894 |

**Insights:**
- Consumer is the largest segment by sales, profit, and order count.
- Corporate is the second-largest segment by sales.
- Home Office contributes the lowest sales and order count of the three segments.

**Business implication:** Consumer is the largest revenue contributor. The business can examine the purchasing patterns of each segment when planning marketing and sales activities.

## 6. Which products generate the highest sales?

**Business objective:** Rank products by total sales and review the top-selling products.

| Rank | Product | Total Sales |
|---:|---|---:|
| 1 | Canon imageCLASS 2200 Advanced Copier | $61,599.82 |
| 2 | Fellowes PB500 Electric Punch Plastic | $27,453.38 |
| 3 | Cisco TelePresence System EX90 Video | $22,638.48 |
| 4 | HON 5400 Series Task Chairs | $21,870.58 |
| 5 | GBC DocuBind TL300 Electric Binding | $19,823.48 |
| 6 | GBC Ibimaster 500 Manual ProClick Binding | $19,024.50 |
| 7 | Hewlett Packard LaserJet 3310 Copier | $18,839.69 |
| 8 | HP Designjet T520 Inkjet Large Format | $18,374.90 |
| 9 | GBC DocuBind P400 Electric Binding | $17,965.07 |
| 10 | High Speed Automatic Electric Letter Opener | $17,030.31 |

*Some product names are shortened to fit the table; refer to the SQL result for the full names.*

**Insights:**
- Canon imageCLASS 2200 Advanced Copier is the highest-sales product in the displayed result.
- Several products in the top 10 are technology or office equipment products.

**Business implication:** High-sales products are important to monitor, but sales alone do not show whether a product is profitable. Product-level profit should also be reviewed.

## 7. Which products generate negative profit?

**Business objective:** Identify products where total profit is below zero.

| Product | Total Sales | Total Profit |
|---|---:|---:|
| Cubify CubeX 3D Printer Double Head | $11,099.96 | -$8,879.97 |
| Lexmark MX611dhe Monochrome Laser Printer | $16,829.90 | -$4,589.97 |
| Cubify CubeX 3D Printer Triple Head | $7,999.98 | -$3,839.99 |
| Chromcraft Bull-Nose Wood Oval Conference Table | $9,917.64 | -$2,876.12 |
| Bush Advantage Collection Racetrack | $9,544.73 | -$1,934.40 |

**Insights:**
- The Cubify CubeX 3D Printer Double Head has the largest loss among the displayed products.
- Some products generate sales but still produce negative profit.

**Business implication:** The business should investigate pricing, discount levels, product costs, and returns for loss-making products. Negative profit should not be assumed to have one single cause.

## 8. What is the average order value?

**Business objective:** Calculate the average sales value per order.

| KPI | Result |
|---|---:|
| Average Order Value | $460.85 |

**Insight:** The average order value is approximately $460.85.

**Business implication:** Average order value can be monitored over time to understand changes in customer spending and evaluate sales initiatives.

## 9. Which shipping mode is used most frequently?

**Business objective:** Compare distinct order counts and sales across shipping methods.

| Ship Mode | Total Orders | Total Sales |
|---|---:|---:|
| Standard Class | 2,945 | $1,342,260.19 |
| Second Class | 949 | $453,341.85 |
| First Class | 778 | $349,494.85 |
| Same Day | 259 | $127,352.96 |

**Insights:**
- Standard Class is the most frequently used shipping mode.
- Same Day has the lowest order count.
- Standard Class accounts for approximately 59.7% of the 4,931 orders.

**Business implication:** Standard Class is the dominant shipping method in this dataset. Shipping cost and delivery performance would need to be analysed separately before making operational recommendations.

## 10. How do discount levels relate to sales and profit?

**Business objective:** Compare the number of records/transactions, sales, and profit at each discount level.

| Discount | Total Transactions | Total Sales | Total Profit |
|---:|---:|---:|---:|
| 0.00 | 4,657 | $1,072,777.32 | $317,184.04 |
| 0.10 | 94 | $54,369.35 | $9,029.18 |
| 0.15 | 52 | $27,558.52 | $1,418.99 |
| 0.20 | 3,547 | $756,307.44 | $89,379.30 |
| 0.30 | 227 | $103,226.65 | -$10,369.28 |
| 0.32 | 27 | $14,493.46 | -$2,391.14 |
| 0.40 | 205 | $116,345.86 | -$23,065.44 |
| 0.45 | 11 | $5,484.97 | -$2,493.11 |
| 0.50 | 66 | $58,918.54 | -$20,506.43 |
| 0.60 | 132 | $6,237.40 | -$5,548.40 |
| 0.70 | 391 | $40,022.02 | -$39,643.72 |
| 0.80 | 285 | $16,708.32 | -$30,136.24 |

**Insights:**
- The 0.00 discount group has the highest reported sales and profit.
- The 0.20 discount group also has substantial sales and positive profit.
- The displayed groups with discounts of 0.30 and above have negative total profit.
- The 0.70 discount group has the largest negative profit in this result.

**Business implication:** The results show an association between some higher discount levels and negative profit. The business should review discount policies alongside product, category, and order-level details before deciding on changes.

*Note: The screenshot labels the count as `Total_Transactions`. Confirm the SQL counting expression before interpreting this as a count of distinct orders.*

## 11. How do sales and profit change by year?

**Business objective:** Group sales and profit by the year of Order Date.

**Result returned by MySQL:**

| Sales Year | Total Sales | Total Profit |
|---|---:|---:|
| NULL | $2,272,449.86 | $282,857.75 |

**Status: Needs correction**

The query returned a `NULL` year rather than separate years. Therefore, this output does not provide a valid year-by-year comparison.

**Next step:** Check the data type and stored format of `Order Date`, convert or parse it into a valid date, and rerun the year analysis. Do not draw yearly sales conclusions from this result.

## 12. Which sub-categories have the highest quantity sold?

**Business objective:** Compare total quantity and sales by sub-category, ordered by quantity.

| Sub-Category | Total Quantity | Total Sales |
|---|---:|---:|
| Binders | 5,614 | $199,905.72 |
| Paper | 4,811 | $75,356.12 |
| Furnishings | 3,390 | $82,752.23 |
| Phones | 3,254 | $329,753.09 |
| Storage | 3,065 | $216,803.21 |
| Art | 3,000 | $27,118.79 |
| Accessories | 2,976 | $167,380.32 |
| Chairs | 2,356 | $328,449.10 |
| Appliances | 1,729 | $107,532.16 |
| Labels | 1,400 | $12,486.31 |
| Tables | 1,241 | $206,965.53 |
| Fasteners | 901 | $3,008.66 |
| Envelopes | 880 | $15,339.49 |
| Bookcases | 868 | $114,879.996 |
| Supplies | 590 | $45,952.47 |
| Machines | 440 | $189,238.63 |
| Copiers | 234 | $149,528.03 |

**Insights:**
- Binders have the highest quantity sold, at 5,614 units.
- Paper ranks second by quantity.
- Phones generate the highest sales among the listed sub-categories, despite not having the highest quantity.
- Copiers have the lowest quantity in this result.

**Business implication:** Quantity sold and revenue are different measures. Reviewing both helps identify high-volume products and high-value products.

## 13. How do product categories perform across regions?

**Business objective:** Compare category sales and profit within each region.

| Region | Category | Total Sales | Total Profit |
|---|---|---:|---:|
| Central | Technology | $170,401.53 | $33,693.44 |
| Central | Office Supplies | $164,616.20 | $9,020.72 |
| Central | Furniture | $162,783.14 | -$2,585.25 |
| East | Technology | $264,872.08 | $47,439.56 |
| East | Furniture | $205,540.35 | $2,501.82 |
| East | Office Supplies | $201,781.62 | $40,730.64 |
| South | Technology | $148,730.52 | $19,982.82 |
| South | Office Supplies | $123,979.92 | $19,577.08 |
| South | Furniture | $116,273.14 | $6,475.79 |
| West | Technology | $251,895.93 | $44,271.28 |
| West | Furniture | $248,450.23 | $10,588.42 |
| West | Office Supplies | $213,125.18 | $51,161.45 |

**Insights:**
- Technology is the highest-sales category in each region.
- East Technology has the highest category-region sales in the displayed result.
- West Office Supplies has the highest category-region profit.
- Central Furniture records a negative profit.

**Business implication:** Category performance differs by region. Regional planning should consider both sales and profit rather than sales alone.

## 14. What is the sales rank of the top 10 customers?

**Business objective:** Use customer sales ranking to identify the top 10 customers.

| Rank | Customer | Total Sales |
|---:|---|---:|
| 1 | Sean Miller | $25,043.05 |
| 2 | Tamara Chand | $19,017.85 |
| 3 | Raymond Buch | $15,117.34 |
| 4 | Tom Ashbrook | $14,595.62 |
| 5 | Adrian Barton | $14,355.61 |
| 6 | Sanjit Chand | $14,142.33 |
| 7 | Ken Lonsdale | $14,071.92 |
| 8 | Hunter Lopez | $12,873.30 |
| 9 | Sanjit Engle | $12,209.44 |
| 10 | Christopher Conant | $12,129.07 |

**Insight:** The ranking query confirms the same top 10 customer order as Question 4. It demonstrates the use of ranking logic to order customers by sales.

## 15. What is the profit rank of each product category?

**Business objective:** Rank categories according to total profit.

| Category | Total Profit | Profit Rank |
|---|---:|---:|
| Technology | $145,387.10 | 1 |
| Office Supplies | $120,489.89 | 2 |
| Furniture | $16,980.77 | 3 |

**Insight:** Technology ranks first in profit, followed by Office Supplies. Furniture ranks third and has a much lower profit total than the other categories.

## 16. Which products rank highest by total sales?

**Business objective:** Use a product-level sales aggregation to order products from highest to lowest sales.

The leading products in the result are:

| Rank | Product | Total Sales |
|---:|---|---:|
| 1 | Canon imageCLASS 2200 Advanced Copier | $61,599.82 |
| 2 | Fellowes PB500 Electric Punch Plastic | $27,453.38 |
| 3 | Cisco TelePresence System EX90 Video | $22,638.48 |
| 4 | HON 5400 Series Task Chairs | $21,870.58 |
| 5 | GBC DocuBind TL300 Electric Binding | $19,823.48 |
| 6 | GBC Ibimaster 500 Manual ProClick Binding | $19,024.50 |
| 7 | Hewlett Packard LaserJet 3310 Copier | $18,839.69 |
| 8 | HP Designjet T520 Inkjet Large Format | $18,374.90 |
| 9 | GBC DocuBind P400 Electric Binding | $17,965.07 |
| 10 | High Speed Automatic Electric Letter Opener | $17,030.31 |

**Insight:** The product ranking again places Canon imageCLASS 2200 Advanced Copier at the top. This provides a second product-level view of sales performance.

## 17. What are the monthly sales trends?

**Business objective:** Aggregate sales by month.

**Result returned by MySQL:**

| Sales Month | Total Sales |
|---|---:|
| NULL | $2,272,449.86 |

**Status: Needs correction**

The result contains one `NULL` month and the full sales total. It does not show individual monthly sales, so a monthly trend cannot yet be interpreted.

**Next step:** Correct the Order Date parsing and the `Monthly_Sales` query/CTE, then rerun the monthly aggregation.

## 18. What are the cumulative sales over time?

**Business objective:** Calculate running total sales using a window function ordered by month.

**Result returned by MySQL:**

| Sales Month | Total Sales | Cumulative Sales |
|---|---:|---:|
| NULL | $2,272,449.86 | $2,272,449.86 |

**Status: Needs correction**

The query returns only one row with a `NULL` month. This is not a valid month-by-month cumulative trend.

**Next step:** Fix the date/month grouping used in Question 17, then rerun the cumulative calculation. A cumulative trend should contain one row for each month in the analysis period.

## 19. What percentage of total sales comes from each category?

**Business objective:** Calculate each category's contribution to total sales.

| Category | Total Sales | Sales Percentage |
|---|---:|---:|
| Technology | $835,900.07 | 36.78% |
| Furniture | $733,046.86 | 32.26% |
| Office Supplies | $703,502.93 | 30.96% |
| **Total** | **$2,272,449.86** | **100.00%** |

**Insights:**
- Technology contributes the largest share of sales at 36.78%.
- Furniture contributes 32.26%.
- Office Supplies contributes 30.96%.
- The three category percentages add up to 100%.

**Business implication:** Technology is the largest revenue contributor, but all three categories make meaningful contributions to total sales.

---

# Key Business Findings

1. **Overall performance:** The business generated $2.27 million in sales and $282,857.75 in profit, with a 12.45% profit margin.
2. **Leading category:** Technology leads in both sales and profit.
3. **Regional performance:** West has the highest total regional profit, followed by East.
4. **Customer performance:** Sean Miller is the top customer by sales in the query results.
5. **Customer segments:** Consumer generates the highest sales, profit, and order count.
6. **Product performance:** Canon imageCLASS 2200 Advanced Copier is the leading product by sales in the displayed results.
7. **Loss-making products:** Some products generate negative profit despite recording sales.
8. **Discount analysis:** Several higher-discount groups show negative aggregate profit and deserve further investigation.
9. **Shipping:** Standard Class is the most frequently used shipping mode.
10. **Date analysis:** Yearly, monthly, and cumulative sales queries need correction because the current results contain `NULL` date groupings.

# Data Quality and Validation Notes

- The yearly query returned a `NULL` year.
- The monthly sales query returned a single `NULL` month.
- The cumulative sales query also returned a single `NULL` month.
- These date-related results should be corrected before presenting yearly or monthly trends.
- The Excel dashboard and MySQL results previously shared showed different overall totals. The dataset, row count, filters, and calculation logic should be checked to confirm that both tools use the same records.
- Product names are shortened in some result screenshots; use the full names from MySQL when needed.

# Conclusion

This SQL project demonstrates how MySQL can be used to examine retail business performance through aggregation, filtering, grouping, ranking, subqueries, CTEs, and window functions.

The analysis identifies the strongest categories, regions, customer segments, and products, while also highlighting loss-making products and discount groups that require attention. The date-related queries and the difference between the Excel and MySQL totals remain validation tasks before the project findings are treated as final.

## Project Files

```text
superstore-end-to-end-data-analytics/
│
├── 01_Excel/
│   ├── README.md
│   ├── SuperStoreOrders.Project.xlsx
│   └── Excel_Dashboard_Preview.png
│
└── 02_SQL/
    ├── README.md
    └── SQL_Analysis.sql
```

*Update the file names in this structure if your actual repository uses different names.*
