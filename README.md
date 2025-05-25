# 📉 Customer Churn Prediction

This project aims to predict whether a customer is likely to churn, enabling the business to take proactive retention measures. The original dataset contained individual transactions, and the final model was built using aggregated customer-level behavior to maximize prediction accuracy and business value.

---

## 🧠 Problem Statement

Customer churn is a critical issue for businesses, directly impacting revenue. The goal of this project is to identify customers who are likely to churn based on their historical transaction patterns, demographic information, and engagement behavior.

---

## 📊 Dataset Overview

- **Total Rows**: 250,000 (transaction-level data)
- **Columns**: Customer ID, Purchase Date, Product Category, Price, Quantity, Total Purchase Amount, Payment Method, Returns, Age, Gender, Churn
- **Challenge**: Multiple transactions per customer; churn is a customer-level event

---

## 🛠️ Approach

### 1. **Data Cleaning & Transformation**
- Converted transaction-level data to **customer-level aggregation**
- Handled missing values and confirmed consistency in demographic features
- Preserved outliers to retain high-value customer patterns

### 2. **Feature Engineering**
- Engineered features such as:
  - `Tenure_days`: Duration between first and last transaction
  - `Avg_order_value`: Total spent per item
  - `Avg_purchase_freq`: Avg. days between purchases
  - `Product Category_nunique`, `Payment Method_nunique`, `Returns_sum`

### 3. **Exploratory Data Analysis (EDA)**
- Identified trends in churn by gender, order value, product diversity, and payment behavior
- Visualized skewness and outliers using histograms and boxplots
- No extreme outliers removed to retain business-critical segments

---

## 🤖 Model Building

- Split dataset into training and testing sets
- Applied **SMOTE** to balance churn classes
- Models used:
  - Logistic Regression (baseline)
  - **Random Forest Classifier** (final)

---

## 📈 Results

| Model              | Accuracy | Recall (Churn) | F1 Score |
|-------------------|----------|----------------|----------|
| Logistic Regression | 61%      | 63%            | 62%      |
| **Random Forest**     | **83%**  | **74%**        | **82%**  |

- Accuracy improved from **69% to 83%** after feature aggregation and engineering
- Final model had strong precision and recall on churners, making it suitable for business use

---

## 💡 Key Insights

- Female customers showed slightly higher churn rates
- Customers with low payment method diversity were more likely to churn
- Returns, order value, and tenure had minimal impact on churn
- Model helps **identify high-risk customers**, enabling **retention strategies** that could **boost sales by 10–15%**

---

## 📦 Technologies Used

- Python (Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn)
- Jupyter Notebook
- SMOTE (from imbalanced-learn)
- Random Forest, Logistic Regression



