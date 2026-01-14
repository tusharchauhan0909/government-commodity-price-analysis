# Government Commodity Price Analysis (AWS S3 + Python + SQL)

## 📌 Project Overview
This project analyzes Indian government mandi (market) commodity price data to identify
price trends, regional disparities, market behavior, and price volatility.
The goal is to derive meaningful business insights that can support farmers,
traders, and policymakers in data-driven decision-making.

---

## 🎯 Business Problem
Agricultural commodity prices vary across regions, markets, and time.
Understanding these variations is essential to:
- Identify high-value commodities
- Detect regional price imbalances
- Analyze seasonal trends
- Assess price stability and risk

---

## 🧠 Key Business Questions
- Which commodities have the highest average prices?
- How do commodity prices vary across states?
- Which commodities are most volatile?
- What are the monthly price trends over time?
- Which markets consistently show higher prices?
- Which commodities are stable versus high-risk?

---

## 🏗️ Data Pipeline Architecture

Government Open Data
↓
AWS S3 (Raw Data Storage)
↓
Python (ETL & Data Cleaning)
↓
MySQL Database
↓
SQL Analysis & Insights


---

## 🛠️ Tech Stack
- **Cloud Storage:** AWS S3
- **Programming Language:** Python (Pandas)
- **Database:** MySQL
- **Query Language:** SQL
- **Documentation:** Markdown

---

## 📊 Analysis Performed
- Commodity-wise price analysis
- State-wise price comparison
- Market-level pricing behavior
- Price volatility and stability analysis
- Monthly trend and seasonality analysis

---

## 💡 Key Insights
- Premium commodities and spices tend to have higher average prices.
- Significant price differences exist across states and markets.
- Certain commodities show high volatility, increasing risk.
- Seasonal patterns affect commodity pricing over time.
- Some mandis consistently provide better pricing opportunities.

---

## ⚠️ Challenges Faced
- Configuring secure AWS IAM access
- Authenticating Python with AWS S3
- Cleaning real-world government data
- Handling database connectivity and credentials

---

## 📁 Repository Structure

government-commodity-price-analysis/
│
├── etl/
│ └── etl_pipeline.ipynb
│
├── sql/
│ ├── commodity_prices_analysis.sql
│ ├── business_questions.md
│ └── insights.md
│
├── README.md
└── .gitignore



---

## ✅ Outcome
This project demonstrates an end-to-end cloud-based data analysis workflow,
from raw data ingestion to SQL-driven business insights,
following industry best practices.

---

## 👤 Author
**Tushar singh chauhan**  
Aspiring Data Analyst

