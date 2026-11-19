# Customer Segmentation Using K-Means Clustering

## 1. Project Overview

This project uses K-Means Clustering, an unsupervised Machine Learning algorithm, to segment customers based on their purchasing behaviour.

The objective is to identify different customer groups based on sales, profit, order frequency and average order value.

## 2. Dataset

- Dataset: Sample Superstore
- Total Customer Records: 793
- Algorithm: K-Means Clustering

## 3. Tools and Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- Google Colab

## 4. Features Used

The following features were used for clustering:

- Total Sales
- Total Profit
- Order Frequency
- Average Order Value

## 5. Project Workflow

1. Imported the required Python libraries.
2. Loaded and inspected the dataset.
3. Handled missing values.
4. Grouped order records by Customer ID.
5. Calculated total sales and total profit for each customer.
6. Calculated order frequency and total quantity.
7. Calculated average order value.
8. Selected features for clustering.
9. Scaled numerical features using StandardScaler.
10. Applied the Elbow Method to investigate the number of clusters.
11. Built a K-Means Clustering model with three clusters.
12. Assigned customers to their respective clusters.
13. Analysed and visualised customer segments.

## 6. Customer Segmentation Results

The model identified three customer segments among 793 customers.

| Metric | Cluster 0 | Cluster 1 | Cluster 2 |
|---|---:|---:|---:|
| Number of Customers | 326 | 410 | 57 |
| Average Sales | $3,560.20 | $1,450.96 | $9,503.20 |
| Average Profit | $410.46 | $91.80 | $2,016.68 |
| Order Frequency | 8.45 | 4.49 | 7.26 |
| Average Order Value | $438.09 | $334.05 | $1,493.36 |

## 7. Key Findings

- Cluster 0 represents customers with relatively frequent purchases and moderate sales.
- Cluster 1 contains the largest number of customers and has the lowest average sales and order frequency.
- Cluster 2 contains 57 customers with the highest average sales, profit and average order value.

## 8. Business Recommendations

- Encourage repeat purchases among Cluster 1 customers through targeted promotions.
- Maintain customer relationships with Cluster 0 through suitable loyalty programmes.
- Consider personalised offers and loyalty rewards for high-value Cluster 2 customers.

## 9. Key Learnings

- Understanding unsupervised Machine Learning.
- Understanding K-Means Clustering.
- Customer-level data aggregation.
- Feature selection and standardisation.
- Applying the Elbow Method.
- Analysing customer segments.
- Interpreting clustering results for business decisions.

## 10. Conclusion

This project demonstrates how K-Means Clustering can be used to segment customers based on purchasing behaviour.

The analysis identified three distinct customer groups with different sales, profit and purchasing characteristics.

These findings can help businesses understand their customers and develop more targeted marketing and customer-retention strategies.
