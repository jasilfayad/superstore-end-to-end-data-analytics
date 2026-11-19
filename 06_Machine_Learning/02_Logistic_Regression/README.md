# Sales Prediction Using Linear Regression

## 1. Project Overview

This project focuses on predicting individual order sales amounts using Linear Regression and the Sample Superstore dataset.

The objective is to build a Machine Learning model that estimates sales based on order and product information.

## 2. Dataset

- Dataset: Sample Superstore
- Total Records: 9,994
- Target Variable: Sales

## 3. Tools and Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Scikit-learn
- Google Colab

## 4. Features Used

The following features were used as inputs:

- Quantity
- Discount
- Category
- Sub-Category
- Region
- Segment
- Ship Mode
- Product Name
- Product ID

Target variable: Sales

## 5. Project Workflow

1. Imported Python libraries.
2. Loaded and inspected the dataset.
3. Performed data cleaning.
4. Conducted Exploratory Data Analysis (EDA).
5. Selected input features and target variable.
6. Converted categorical variables into numerical values.
7. Split the dataset into training and testing data (80% and 20%).
8. Built a Linear Regression model.
9. Trained the model and generated predictions.
10. Evaluated and compared two models.

## 6. Model Performance

Two Linear Regression models were developed and evaluated.

| Evaluation Metric | Model 1 | Model 2 |
|---|---:|---:|
| MAE | 226.31 | 158.54 |
| MSE | 480,699.65 | 385,408.60 |
| RMSE | 693.33 | 620.81 |
| R² Score | 0.1862 | 0.3475 |

Model 2 performed better across all four evaluation metrics.

Its R² score increased from 0.1862 to 0.3475 after adding Product Name and Product ID as input features.

However, the model still has limited predictive performance and could be improved further.

## 7. Key Learnings

- Understanding Linear Regression.
- Preparing data for Machine Learning.
- Handling categorical variables.
- Splitting data into training and testing sets.
- Training a prediction model.
- Evaluating model performance.
- Comparing different model versions.

## 8. Conclusion

This project demonstrates the application of Linear Regression for predicting individual order sales amounts.

The comparison between two models showed that adding product-related information improved predictive performance.

The project also highlighted the importance of feature selection and model evaluation in Machine Learning.
