# Tech & Gadget Sales Analysis (2024)

This project presents an in-depth sales analysis of a tech and gadget retail company using a dataset of over 185,000 orders across all 50 U.S. states. The analysis was performed using Excel for data cleaning and Power BI for modeling and visualization.

The goal is to uncover trends in customer behavior, product performance, geographic sales, and revenue concentration, and to provide actionable recommendations for improving business performance and strategic planning.

---

## 🔗 Dashboard & Files

- **Power BI Dashboard Link:** [Insert Power BI dashboard link here]  
- **Excel File (Cleaned Dataset):** [Insert Google Drive/Dropbox/OneDrive link here]

---

## Dataset Summary

| Metric                         | Value                  |
|-------------------------------|------------------------|
| Total Revenue                 | $32.03 million         |
| Products Sold                 | 209,000 units          |
| Total Orders                  | 185,654                |
| Unique Customers              | 140,787                |
| Average Order Value           | $172.50                |
| States Covered                | 50                     |
| Customer Segments             | Platinum, Gold, Silver, Bronze |

Data cleaning involved fixing missing entries, removing duplicates, standardizing customer classification labels, and checking for anomalies. The cleaned data was imported into Power BI, where key performance indicators and visualizations were built using DAX and slicers for interactive exploration.

---

## Project Objectives

- Identify which months and quarters contribute most to sales
- Pinpoint which states, customers, and products drive the most revenue
- Evaluate customer classification value
- Recommend growth opportunities and improvements in strategy

---

## Dashboard Overview

**Full Dashboard Screenshot Placeholder**  
`![Full Dashboard Screenshot](insert-link-or-path-here)`

---

## Insight #1: Sales are Highest in Q1 and Q4

**What was observed:**  
- Revenue peaked in April ($4.2M) and December ($4.4M)  
- Q1 (Jan–Mar) and Q4 (Oct–Dec) combined contribute approximately 58% of total annual revenue  
- Sales dip significantly from May through September, with August recording the lowest revenue at $1.6M

**Why this matters:**  
The strong Q1 and Q4 performance likely reflects the seasonality of consumer behavior. Q1 includes post-holiday purchases, New Year upgrades, and tax refund spending, while Q4 benefits from holiday promotions like Black Friday and Christmas.

**Strategic recommendation:**  
Introduce seasonal campaigns during slower months (May–Sept) using discount bundles, back-to-school offers, or loyalty incentives. This can help level out revenue across the year and reduce reliance on seasonal spikes.

**Insight Visual Placeholder:**  
`![Monthly Sales Trend Line Chart](insert-link-or-path-here)`

---

## Insight #2: Revenue is Highly Concentrated in Three States

**Top Performing States by Revenue:**

| State        | Revenue         | Share of Total |
|--------------|------------------|----------------|
| California   | $12.73 million   | 39.7%          |
| New York     | $4.12 million    | 12.9%          |
| Texas        | $2.87 million    | 9.0%           |

These three states contribute over 61% of the total revenue.

**Why this matters:**  
The company's revenue is geographically concentrated, indicating high dependence on a few key markets. This could be risky if sales in these states slow down due to competition, economic factors, or regulation.

**Strategic recommendation:**  
While continuing to support high-performing states with regional marketing, it is important to identify underperforming but populous states (e.g., Florida, Georgia, or Illinois) with growth potential. Localized promotions and distribution expansion could diversify revenue sources.

**Insight Visual Placeholder:**  
`![State Revenue Map or Bar Chart](insert-link-or-path-here)`

---

## Insight #3: A Small Set of Products Drives Nearly Half of All Revenue

**Top 5 Products by Revenue:**

| Product                | Units Sold | Revenue         |
|------------------------|------------|-----------------|
| MacBook                | 3,226      | $3.95 million   |
| iPhone                 | 3,432      | $3.75 million   |
| ThinkPad               | 3,200      | $2.76 million   |
| Google Pixel           | 2,874      | $2.32 million   |
| 34in UltraWide Monitor | 2,572      | $2.08 million   |

These products account for over 45% of total revenue.

**Why this matters:**  
The sales pattern follows the Pareto principle (80/20 rule), where a small set of high-value, high-demand products contributes a large portion of revenue. These products are also likely to drive brand perception and customer acquisition.

**Strategic recommendation:**  
Ensure consistent stock levels of top-performing products and prioritize them in advertising campaigns. Consider bundling with accessories or offering extended warranties to increase average order value. This also suggests an opportunity to investigate underperforming SKUs for potential discontinuation.

**Insight Visual Placeholder:**  
`![Top Products Bar Chart](insert-link-or-path-here)`

---

## Insight #4: Gold and Silver Customers Drive Majority of Revenue

**Revenue by Customer Classification:**

| Classification | Revenue         | % of Total | Avg Spend per Customer |
|----------------|------------------|------------|-------------------------|
| Gold           | $11.5 million    | 35.9%      | $327.78                 |
| Silver         | $11.36 million   | 35.4%      | $288.52                 |
| Bronze         | $7.80 million    | 24.3%      | $160.10                 |
| Platinum       | $1.36 million    | 4.3%       | $490.18                 |

Although Platinum customers spend more per transaction, they represent a very small segment. Gold and Silver customers make up over 71% of revenue and have a strong balance of frequency and value.

**Why this matters:**  
These classifications likely reflect spending habits or loyalty tiers. Understanding the behavior of mid-tier customers who purchase consistently is more scalable for growth than focusing solely on the high-spend, low-volume Platinum group.

**Strategic recommendation:**  
Design customer retention strategies focused on Gold and Silver segments—such as exclusive promotions, reward points, and early product access. Personalization for these groups can improve customer lifetime value without increasing acquisition costs.

**Insight Visual Placeholder:**  
`![Customer Classification Pie or Bar Chart](insert-link-or-path-here)`

---

## Insight #5: A Few Customers Are High-Value Outliers

The top 10 customers collectively generate over $1.1 million, representing around 3.5% of the total revenue. Each spends around $4,200 to $5,000 annually.

**Why this matters:**  
While these customers form a small percentage of the base, their impact is significant. They often purchase premium products and may be early adopters or influencers.

**Strategic recommendation:**  
Implement customer profiling to track high-value buyer behavior and offer personalized experiences (e.g., early product releases, account managers). Nurturing these relationships can lead to repeat purchases, referrals, and brand advocacy.

**Insight Visual Placeholder:**  
`![Top Customers Bar Chart](insert-link-or-path-here)`

---

## Summary of Key Recommendations

| Business Area        | Recommendation                                                   |
|----------------------|------------------------------------------------------------------|
| Seasonality           | Promote more actively during low-sales months (May–Sept)        |
| Geographic Focus      | Invest in emerging high-potential states                        |
| Product Strategy      | Focus on stocking and marketing top 5 revenue-generating SKUs   |
| Customer Segmentation | Launch rewards and loyalty programs for Gold and Silver tiers   |
| High-Value Buyers     | Personalize communication for top 10% customers                 |
| SKU Management        | Consider reviewing low-performing products for optimization     |

---

## Tools Used

**Excel**  
  - Cleaned data by removing duplicates, correcting formats, and handling blanks  
  - Applied data validation, standardized column headers, and ensured correct data types  
  - Used formulas like LOOKUPs, TEXTJOIN, IF, COUNTIFS, SUMIFS, INDEX-MATCH, and etc. to derive insights  
  - Explored trends using filters, conditional formatting, and Pivot Tables for quick summaries

- **Power BI**  
  - Connected and modeled sales, product, and customer data  
  - Built interactive dashboards with visuals (bar charts, trend lines, maps, etc.)  
  - Used DAX for KPIs like revenue, order volume, and average order value  
  - Enabled dynamic filtering by month, product, customer segment, and state
---

## Skills Demonstrated

- Data Cleaning and Preparation  
- Exploratory Data Analysis (EDA)  
- Dashboard Design and Visual Storytelling  
- Customer Segmentation  
- Business Intelligence Reporting  
- Sales Trend Analysis and Forecasting  
- Action-Oriented Insights with Business Impact

---

## About the Analyst

This project was created by an entry-level data analyst as part of a Power BI portfolio designed to demonstrate core competencies in data analysis, Excel, and dashboard creation. The goal was to simulate real-world business reporting by extracting relevant insights from large-scale retail data and presenting them in a clear, decision-ready format.
