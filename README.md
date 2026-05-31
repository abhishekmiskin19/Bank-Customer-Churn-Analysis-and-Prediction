# Bank Customer Churn Analysis and Prediction

## Project Overview

This project focuses on analyzing customer churn behavior in a banking dataset using SQL, Python, and Machine Learning techniques. The objective is to identify patterns that influence customer attrition and build predictive models to classify whether a customer is likely to churn.

## Dataset Features

* Customer ID
* Credit Score
* Country
* Gender
* Age
* Tenure
* Balance
* Products Number
* Credit Card Status
* Active Member Status
* Estimated Salary
* Churn (Target Variable)

## Project Workflow

### Data Cleaning

* Handled missing values in categorical and numerical columns
* Filled missing values using statistical methods and business rules
* Created cleaned datasets:

  * New_Account_Fact.csv
  * New_Customer_Dim.csv

### SQL Analysis

Performed business-focused SQL queries including:

* Customer and balance analysis
* Credit card customer identification
* Country-wise balance analysis
* Gender-wise credit score analysis
* Churn analysis
* Subqueries and aggregate functions

### Exploratory Data Analysis (EDA)

* Churn distribution analysis
* Customer demographic analysis
* Credit Score vs Churn
* Age vs Churn
* Balance vs Churn

### Feature Engineering

* Encoding categorical variables
* Feature scaling using StandardScaler
* Train-test split preparation

### Machine Learning Models

#### Support Vector Machine (SVM)

* Model Training
* Prediction
* Accuracy Evaluation
* Confusion Matrix
* Classification Report

#### Random Forest Classifier

* Model Training
* Prediction
* Accuracy Evaluation
* Confusion Matrix
* Classification Report

## Technologies Used

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Scikit-Learn
* SQL
* Jupyter Notebook

## Key Outcomes

* Cleaned and transformed banking customer data
* Performed SQL-based business analysis
* Identified factors influencing customer churn
* Built and evaluated classification models
* Compared SVM and Random Forest performance

## Project Structure

├── Bank_Customer_Churn_Analysis_Prediction.ipynb

├── Bank_Customer_Churn_SQL_Analysis.sql

├── Account_Fact.csv

├── Customer_Dim.csv

└── README.md

## Author

Abhishek Miskin
Aspiring Data Scientist | Data Analyst
