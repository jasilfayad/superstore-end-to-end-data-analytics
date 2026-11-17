# Superstore Sales Analysis – SQL

## 1. Project Overview

This project explores the Sample Superstore dataset using MySQL. I used SQL queries to examine sales, profit, customers, products, regions, discounts, and shipping methods.

The purpose of the project was to practise SQL and understand what the order data can tell us about business performance.

## 2. Tools Used

- MySQL
- MySQL Workbench
- Sample Superstore Dataset

## 3. Project Objectives

- Analyse overall sales and profitability.
- Identify high-performing product categories.
- Compare regional business performance.
- Understand customer purchasing behaviour.
- Identify best-selling and loss-making products.
- Analyse discount and shipping patterns.
- Practise advanced SQL concepts.

## 4. Business Questions and Key Insights

### 1. What is the overall business performance?

The dataset contains approximately $2.27 million in sales and $282,857.75 in profit. The calculated profit margin is 12.45%. This gives an overall view of the sales and profit recorded in the dataset.

### 2. Which product category generates the highest revenue?

Technology is the leading category in both sales and profit. Furniture has the second-highest sales but generates much less profit than Technology and Office Supplies. This shows that a category with high sales does not necessarily produce equally high profit.

### 3. Which region generates the highest profit?

The West region records the highest total profit, followed by East. Central has the lowest profit among the four regions. Regional performance is therefore not the same across the business.

### 4. Who are the top 10 customers by sales?

Sean Miller is the highest-sales customer in the query result, followed by Tamara Chand and Raymond Buch. The result identifies a group of customers with comparatively high sales contributions.

### 5. Which customer segment generates the highest sales?

The Consumer segment leads in sales, profit, and order count. Corporate ranks second, while Home Office has the lowest sales and order count among the three segments.

### 6. Which products generate the highest sales?

Canon imageCLASS 2200 Advanced Copier is the top product by sales in the result. The query also highlights other high-sales products, including office equipment and technology products.

### 7. Which products generate negative profit?

The results include products that have sales but still produce a loss. Cubify CubeX 3D Printer Double Head has the largest negative profit among the products shown. These products may need further investigation into pricing, costs, and discounting.

### 8. What is the average order value?

The calculated average order value is approximately $460.85. This provides a measure of the average sales value per order based on the calculation used in the query.

### 9. Which shipping mode is used most frequently?

Standard Class is the most frequently used shipping mode, with 2,945 distinct orders in the result. Same Day has the lowest order count. Standard Class also accounts for the largest sales total among the shipping methods shown.

### 10. How do discount levels relate to sales and profit?

The results show positive total profit for the discount groups 0.00, 0.10, 0.15, and 0.20. The displayed groups from 0.30 onwards have negative total profit. The 0.70 discount group has the largest loss in the result.

This is an association in the grouped data; further analysis would be needed to understand the reasons.

### 11. How do sales and profit change by year?

The query returned a NULL value for the sales year and the overall sales and profit totals. It did not return separate yearly results, so no yearly trend can be concluded. The Order Date field or its conversion in the query needs to be checked.

### 12. Which sub-categories have the highest quantity sold?

Binders have the highest quantity sold, followed by Paper and Furnishings. Phones have the highest sales among the sub-categories in the result, even though they are not the highest by quantity.

This shows the difference between units sold and sales value.

### 13. How do product categories perform across regions?

Technology records the highest sales within each region in the result. East Technology has the largest sales total among the region-category combinations shown. West Office Supplies records the highest profit among those combinations. Central Furniture is the only region-category combination shown with a negative profit.

### 14. What is the sales rank of the top 10 customers?

The ranking query returns the same top 10 customers in the same order as the earlier customer sales query. Sean Miller ranks first. This query provides another way to view customer performance using ranking logic.

### 15. What is the profit rank of each product category?

Technology ranks first by total profit, followed by Office Supplies. Furniture ranks third and has substantially lower profit than the other two categories.

### 16. Which products rank highest by total sales?

The product ranking result again places Canon imageCLASS 2200 Advanced Copier first. The leading products are consistent with the product sales analysis in Question 6, so these two questions overlap.

### 17. What are the monthly sales trends?

The query returned a NULL month with the overall sales total rather than separate monthly values. This output cannot be used to identify monthly trends. The date field and monthly grouping need to be corrected.

### 18. What are the cumulative sales over time?

The result contains one NULL month, with total sales and cumulative sales both equal to the overall sales total. It does not show a month-by-month cumulative trend. This query should be rerun after correcting the monthly sales calculation.

### 19. What percentage of total sales comes from each category?

Technology contributes the largest share of total sales at 36.78%. Furniture contributes 32.26%, and Office Supplies contributes 30.96%.

Technology is therefore the largest category by sales contribution in this dataset.

## 5. Overall Business Findings

- Technology is the strongest category by both sales and profit.
- West has the highest regional profit.
- Consumer is the largest customer segment by sales.
- Sean Miller is the top customer by sales.
- Canon imageCLASS 2200 Advanced Copier is the top product by sales.
- Some products and higher-discount groups have negative total profit.
- Standard Class is the most frequently used shipping method.
- Binders have the highest quantity sold, while Phones have the highest sales among sub-categories.
- The yearly, monthly, and cumulative sales queries need correction because their results contain NULL date groupings.

## 6. SQL Concepts Practised

- SELECT and FROM
- Aggregate Functions
- SUM() and AVG()
- COUNT() and DISTINCT
- GROUP BY and HAVING
- ORDER BY and LIMIT
- Date Functions
- Subqueries
- Common Table Expressions (CTEs)
- RANK() and DENSE_RANK()
- Window Functions
- Running Total Calculations



## 8. Conclusion

This project helped me practise using MySQL to explore retail data and answer business questions.

I used SQL to compare categories, regions, customer segments, customers, products, discounts, and shipping methods.

The analysis identified several useful patterns, as well as queries that need debugging. The date-related queries remain a work in progress and will need to be corrected before the project can report reliable yearly, monthly, or cumulative sales trends.


```
