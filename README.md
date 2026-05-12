# 🍽️ Food Delivery Analytics Pipeline using dbt & Snowflake

## 📌 Overview

Built an end-to-end modern data pipeline using **dbt** and **Snowflake** following a layered architecture:

`STAGING → BRONZE → SILVER → GOLD`

The project simulates a real-world food delivery analytics platform and includes:

- Data cleaning & transformation using dbt
- Analytics marts for revenue, operations, and customer insights
- One Big Table (OBT) for flexible analytical querying
- Star schema implementation using fact and dimension tables
- ML-ready feature engineering for user behavior analysis
- Incremental loading for optimized processing
- Modular and scalable warehouse design
- Git-based version control and project organization

---

## ⚙️ Tech Stack

- dbt
- Snowflake
- SQL
- Python
- Git & GitHub
- Tableau / Power BI (planned)

---

## 📂 Project Structure

```text
models/
├── sources/
├── bronze/
├── silver/
└── gold/
    ├── marts/
    ├── warehouse/
    └── ml_features/
```
## 🚀 Key Features
### 🥉 Bronze Layer
- Cleaned and standardized raw data
- Applied type casting and null handling
- Configured schema-level transformations using dbt
### 🥈 Silver Layer
- Joined users, restaurants, and orders
- Created enriched analytical datasets
- Derived delivery metrics and business attributes
### 🥇 Gold Layer
#### 📊 Analytics Marts
- Revenue analytics
- Operations analytics
- Customer analytics
#### 📦 One Big Table (OBT)
- Denormalized analytical table for flexible querying and BI use cases
#### 🏢 Warehouse Layer

Implemented star schema with:

- `fact_orders`
- `dim_users`
- `dim_restaurants`
#### 🤖 ML Features Layer

Built ML-ready user behavioral features including:

- `Total spend`
- `Cancellation rate`
- `Delivery behavior`
- `Recency metrics`
- `Spending variability`

---
## ⚡ Incremental Loading

Implemented incremental loading for warehouse fact tables to process only newly arrived records efficiently.

---
## 📈 Planned Dashboarding

Designed to support dashboarding tools such as:

- Tableau
- Power BI
- Excel

Example KPIs:

- Revenue by city
- Cancellation rate
- Delivery performance
- Customer order trends
## 👨‍💻 Author

Tarun Kumar
