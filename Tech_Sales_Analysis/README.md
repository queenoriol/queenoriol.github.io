# Tech & Gadget Sales Analysis (2019)

This project explores the 2019 sales performance of a tech and gadget retail company using over 185,000 customer orders from 8 U.S. states. I used Excel for data cleaning and Power BI for modeling and dashboarding.

The objective was to translate raw sales data into meaningful insights about customer behavior, product performance, geographic trends, and revenue concentration—with the goal of offering practical, data-driven strategies that could improve revenue growth and business planning.

---

## Dashboard & Files

- **Power BI Dashboard**: (Tech_Sales_Dashboard.pbix)
- **Excel File (Cleaned Dataset)**: (Tech_Sales_Analysis.xlsx)

---

## Dataset Summary

| Metric                | Value             |
|-----------------------|------------------|
| Total Revenue         | $32.03 million   |
| Products Sold         | 208,771 units    |
| Total Orders          | 185,652          |
| Unique Customers      | 140,787          |
| Average Order Value   | $172.50          |
| States Covered        | 8                |
| Customer Segments     | Platinum, Gold, Silver, Bronze |

Data preparation in Excel included resolving missing entries, removing duplicates, standardizing customer labels, and validating key columns. Once cleaned, the dataset was modeled in Power BI to build interactive dashboards using DAX and slicers for deeper exploration.

---

## Project Objectives

- Identify peak sales periods across the year  
- Determine which states, customers, and products drive revenue  
- Assess customer value by classification  
- Recommend strategies grounded in data insights  

---

## Dashboard Overview

![Dashboard Screenshot](https://raw.githubusercontent.com/queenoriol/queenoriol.github.io/main/Tech_Sales_Analysis/Images/Dashboard.png)

---

### Peak Quarters (Q2 & Q4) Generate 3 Out of Every 5 Dollars

**What the data shows:**

![Dashboard Screenshot](https://raw.githubusercontent.com/queenoriol/queenoriol.github.io/main/Tech_Sales_Analysis/Images/Revenue.png)

- December led all months with $4.29M in revenue, followed by October at $3.48M
- January recorded the lowest monthly sales at $1.68M
  
  
| Quarter | Quarterly Revenue Share |
|---------|-------------------------|
|    Q1   |          19.78%         |
|    Q2   |          26.46%         |
|    Q3   |          20.25%         |
|    Q4   |          33.51%         |

   
- Q4 (Oct–Dec) alone accounts for over 34% of annual revenue  
- Q2 (Apr–Jun) adds another 26%, bringing the combined share to 60%    

**Why this matters:**  
The data shows a strong reliance on Q4 and Q2, which together bring in $19.2M or 60% of total revenue. This concentration risks business stability if key seasons underperform. January, the lowest revenue month, accounts for just 5.25% ($1.68M), which limits early-year growth potential.

**Recommendation:**  
Introduce special promotions and loyalty incentives in Q1 aiming for a $500K increase (8% growth). Encouraging steady sales outside peak months will strengthen financial resilience and customer engagement year-round.

---

### Top 3 States Dominate with 63%+ of Total Revenue

**Top States by Revenue:**

| State       | Revenue        | Share of Total |
|-------------|----------------|----------------|
| California  | $11.24 million | 35.1%          |
| Texas       | $4.72 million  | 14.7%          |
| New York    | $4.25 million  | 13.3%          |

**Why this matters:**  
California, Texas, and New York are high-performing markets, contributing over $20M in combined revenue. But they also represent a concentration risk if demand plateaus.

**Recommendation:**  
Use these successful markets as models to scale efforts in similar states. Launch pilot campaigns in 2–3 underperforming regions to test product-market fit and diversify growth.

---

### Two-Thirds of Sales Come from These 5 Bestsellers

**Top 5 Products by Revenue:**

| Product                | Units Sold | Revenue       |
|------------------------|------------|---------------|
| MacBook                | 4,724      | $7.79 million |
| iPhone                 | 6,845      | $4.24 million |
| ThinkPad               | 4,126      | $3.83 million |
| Google Phone           | 5,528      | $3.04 million |
| 34in UltraWide Monitor | 6,192      | $2.48 million |

Combined, these products contribute over 66.5% of total revenue.

**Why this matters:**  
Top products like MacBooks and iPhones generate the most revenue and likely attract the most customer attention. They help define the brand and influence first-time buyer decisions.

**Recommendation:**  
Use these products in ads, email campaigns, and website banners. Offer exclusive deals or loyalty perks tied to them. Their strong demand can also be used to test new promotions or seasonal bundles.

---

### Insight 4: Gold and Silver Customers Drive 71% of Revenue

**Revenue by Classification:**

| Classification | Revenue        | % of Total | Avg Spend per Customer |
|----------------|----------------|------------|-------------------------|
| Gold           | $11.5 million  | 35.9%      | $669.82                |
| Silver         | $11.36 million | 35.4%      | $202.08                |
| Platinum        | $7.80 million  | 24.3%      | $1650.49               |
| Bronze          | $1.36 million  | 4.3%       | $12.82                 |

**Why this matters:**  
Although Platinum customers spend the most per person, over 71% of total revenue comes from Gold and Silver customers. These segments appear to make frequent, reliable purchases, forming the backbone of overall revenue.

**Recommendation:**  
Strengthen loyalty programs and deliver consistent value to Gold and Silver tiers. Consider auto-reorder options, discounts, or milestone rewards to boost long-term retention and average spend.

---

### Insight 5: A Small Group of Customers Are High-Value Outliers

The top 10 customers generate over **$37,181** in revenue, contributing approximately **0.12%** of the total. Each spends between **$3,440** and **$4248** annually, often purchasing premium items in higher volumes.

**Why this matters:**  
Although these top 10 customers make up only 0.12% of total revenue, they spend up to $4,248 each annually and often buy premium products in larger amounts. This small group can have a big impact because they are more profitable and easier to grow with targeted offers.

**Recommendation:**  
Focus on these customers by creating a premium program—like special support, early product access, or exclusive deals. Even a **5–10%** increase in their spending could add thousands to revenue and improve loyalty.

---

## Summary of Key Recommendations

| Focus Area         | Actionable Strategy                                         |
|--------------------|-------------------------------------------------------------|
| Seasonality        | Launch campaigns in Jan–Mar to reduce revenue volatility   |
| Regional Sales     | Expand into untapped, high-potential states                |
| Product Strategy   | Boost support for top products, consider rationalizing underperformers |
| Customer Segments  | Engage Gold and Silver tiers with rewards and personalization |
| VIP Customers      | Offer exclusive experiences to top 10% of spenders         |

---

## Tools Used

**Excel**
- Cleaned and validated raw data  
- Used formulas like `SUMIFS`, `COUNTIFS`, `IF`, `TEXTJOIN`, `LOOKUP`, `INDEX-MATCH`  
- Created pivot tables to explore patterns and segment data

**Power BI**
- Imported and modeled relationships across customer, product, and order tables  
- Built visual dashboards with filters for time, geography, and segments  
- Applied DAX to calculate KPIs, segment revenue, and build dynamic visuals

---

## Skills Demonstrated

- Data Cleaning and Validation 
- Exploratory Data Analysis and Trend Analysis  
- Sales Tracking and Revenue Analysis 
- Dashboard Design and Visual Storytelling  
- Demographic and Behavioral Segmentation  
- Business Intelligence Reporting  
- Data-Driven Decision Making  

---

## About the Analyst

This project is my way of showing how I use data to make sense of real business challenges. Using Excel and Power BI, I focused on finding the key numbers that matter and sharing straightforward insights. My goal was to keep things clear and practical, so the data actually helps make better business decisions.
