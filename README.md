# FUTURE_DS_01
An end-to-end retail analytics project using SQL for data merging and processing, Python for data importing, and Power BI for time-series forecasting and interactive dashboards.

# 📊 Online Retail Sales Dashboard & Forecast
## 📖 Overview

This project is an end-to-end data analytics solution designed to analyze two years of online retail transaction data (2009-2011). The goal was to transform raw sales records into actionable business insights, focusing on revenue trends, customer behavior, and future sales predictions.

The solution utilizes **SQL** for data merging and processing, **Python** for automating data import, and **Power BI** for advanced visualization and AI-driven forecasting.

## 🛠️ Tech Stack & Workflow

1.  **Data Storage (SQL):**
    * Raw CSV files (`Year_2009_2010.csv`, `Year_2010_2011.csv`) were imported into a SQL database.
    * A custom script (`merging_data.sql`) was used to UNION the datasets into a single master transaction table.
    * Processing to fix the data types and parsing errors

2.  **Data Preprocessing (Python/Pandas):**
    * Automated data import to MySQL

3.  **Visualization & Analytics (Power BI):**
    * **Time Series Forecasting:** Used Power BI's built-in AI analytics to predict sales for the next quarter (Q1 2012).
    * **KPI Tracking:** Calculated custom DAX measures for *Total Revenue*, *Average Order Value (AOV)*, and *Return Rate %*.
    * **Market Analysis:** Segmented performance by "Domestic (UK)" vs. "International" markets using calculated columns.

## 📂 Project Structure

```text
├── .env                  # Environment variables (Database credentials)
├── Retail_2009_2010.sql  # Source SQL dump for Year 1
├── Retail_2010_2011.sql  # Source SQL dump for Year 2
├── merging_data.sql      # SQL script for combining datasets
├── main.ipynb            # Jupyter Notebook for EDA and cleaning
├── dashboard_future.pbix # Final Power BI Dashboard file
└── README.md             # Project documentation
```
### Dataset Kaggle Link : https://www.kaggle.com/datasets/mathchi/online-retail-ii-data-set-from-ml-repository
