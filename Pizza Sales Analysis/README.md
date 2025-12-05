# Pizza-Sales-Analysis
A dashboard that analyzes pizza sales performance, highlighting revenue trends, top-selling pizzas, customer ordering patterns, and key business insights.


## Files in this repo
- `pizza_sales.csv` — raw dataset (orders, pizza names, quantity, price, date/time).
- `Pizza_sales.xlsx` — Excel version of the dataset and/or additional sheets for analysis.
- `pizza_sales.sql` — SQL script with table creation / ETL steps and many analysis queries (totals, averages, daily/hourly trends, category/size revenue, top/bottom sellers). See examples in the SQL script. :contentReference[oaicite:1]{index=1}

## Project overview
This project demonstrates common sales analytics on a quick-service pizza dataset:
- Total revenue, total pizzas sold, average order value (AOV), average pizzas per order.
- Data type fixes for `order_date` and `order_time` and conversion examples.
- Aggregate trends: daily of week and hourly order heatmap.
- Sales distribution and percentages by pizza category and size.
- Top 5 and bottom 5 sellers by quantity.

## How to run (local)
1. Clone repo:
   ```bash
   git clone https://github.com/<your-username>/<repo-name>.git
   cd <repo-name>


