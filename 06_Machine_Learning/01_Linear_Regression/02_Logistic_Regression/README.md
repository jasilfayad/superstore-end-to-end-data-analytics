# Profitability Classification Using Logistic Regression

## 1. Project Overview

This project uses Logistic Regression, a supervised Machine Learning algorithm, to classify Superstore orders into two categories: Profitable and Not Profitable.

The objective is to identify whether an individual order generates a profit based on its sales, quantity, discount and other order-related information.

This is a Binary Classification problem.

## 2. Dataset

- Dataset: Sample Superstore
- Total Records: 9,994
- Target Variable: Profitability

Target categories:
- 1 – Profitable (Profit > 0)
- 0 – Not Profitable (Profit ≤ 0)

## 3. Tools and Technologies

- Python
- Pandas
- NumPy
- Seaborn
- Scikit-learn
- Google Colab

## 4. Features Used

The following input features were used:

- Sales
- Quantity
- Discount
- Category
- Sub-Category
- Region
- Segment
- Ship Mode

Target variable: Profitability

## 5. Project Workflow

1. Imported the required Python libraries.
2. Loaded and inspected the dataset.
3. Performed data cleaning and handled missing values.
4. Created a Profitability column using the Profit value.
5. Conducted Exploratory Data Analysis.
6. Separated input features and target variable.
7. Split the dataset into 80% training and 20% testing data.
8. Converted categorical variables into numerical values.
9. Scaled the features using StandardScaler.
10. Built and trained a Logistic Regression model.
11. Generated profitability predictions.
12. Evaluated model performance using classification metrics.
13. Analysed the Confusion Matrix and Classification Report.

## 6. Model Performance

The Logistic Regression model was evaluated using 1,999 testing records.

| Evaluation Metric | Result |
|---|---:|
| Accuracy | 94.25% |
| Precision | 95.06% |
| Recall | 97.95% |
| F1 Score | 96.49% |

## 7. Confusion Matrix

| Actual / Predicted | Not Profitable | Profitable |
|---|---:|---:|
| Not Profitable | 305 | 82 |
| Profitable | 33 | 1,579 |

The model correctly classified:
- 305 Not Profitable orders.
- 1,579 Profitable orders.

It incorrectly classified:
- 82 Not Profitable orders as Profitable.
- 33 Profitable orders as Not Profitable.

## 8. Key Learnings

- Understanding Logistic Regression.
- Understanding Binary Classification.
- Creating target variables.
- Handling categorical data.
- Feature scaling using StandardScaler.
- Training and testing Machine Learning models.
- Evaluating classification performance.
- Understanding Accuracy, Precision, Recall and F1 Score.
- Interpreting Confusion Matrices.

## 9. Conclusion

The Logistic Regression model achieved an accuracy of 94.25% on the testing dataset.

The results show that the model performed well at classifying historical Superstore orders into profitable and not profitable categories.

However, it was less effective at identifying unprofitable orders, with a recall of approximately 79% for that category.

Further investigation and model improvements may help make the classification more useful for business decision-making.

**Note:** This project uses historical order information to classify profitability. Its results should not be interpreted as proof of future profitability prediction performance.
