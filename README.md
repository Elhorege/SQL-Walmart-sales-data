# Introduction
📊 This project dives into Walmart sales data! Focusing on customer behavior, sales trends, and popular products, we explore 💰 top-selling categories, 🔥 peak shopping times, and 📈 the most frequent payment methods.

🔍 SQL queries? Check them out here:[Sql_project](/Sql_project/)

# Background
The project aims to provide insights into customer feedback, frequent shopping times, gender distribution, and sales trends. The goal is to leverage this data to understand Walmart’s customer preferences and improve business strategies based on real-time data analysis.

The dataset includes columns like Branch, Product line, Payment methods, and Sales figures, giving us a detailed overview of store performance.

### The questions I wanted to answer through my SQL queries were:

1. What is the average customer feedback for different product lines and branches?
2. What is the most frequent time of day customers shop?
3. What is the gender distribution of Walmart shoppers?
4. What are the monthly sales totals?
5. What are the most used payment methods?
6. Which cities and product lines generate the highest total sales?
# Tools I Used
For my deep dive into Walmart sales data, I harnessed the power of several key tools:

- **SQL:**  The backbone of my analysis, allowing me to query the database and generate insights.
- **PostgreSQL:**  The database management system used to handle the Walmart sales data.
- **Visual Studio Code:**  My go-to for database management and executing SQL queries.
- **Git & GitHub:**  Essential for version control and sharing my SQL scripts and analysis.
# The Analysis
Each query investigates specific aspects of Walmart’s sales data. Here’s how I approached each question:

### 1. Customer Feedback
To understand customer satisfaction, I calculated the average ratings by branch and product line.

```sql
SELECT 
    Branch,
    Product_line,
    AVG(Rating) AS Average_Rating
FROM 
    sales
GROUP BY 
    Branch, 
    Product_line
ORDER BY 
    Average_Rating DESC;
```
This query gives us insights into which product lines and branches receive the highest customer satisfaction.

### 2. Most Frequent Time of Day
I categorized the time of day into Morning, Afternoon, and Evening to find the peak shopping times.

```sql
SELECT
    time_of_day,
    COUNT(*) AS count_of_time
FROM
    sales
GROUP BY
    time_of_day
ORDER BY
    count_of_time DESC;
```
This query shows us when customers are most likely to shop at Walmart, helping optimize staffing and stock levels.

### 3.Gender Distribution
Understanding the gender breakdown of shoppers helps target marketing strategies.

```sql
SELECT
    gender,
    COUNT(*) AS gender_count
FROM
    sales
GROUP BY
    gender
ORDER BY 
    gender_count DESC;
```
The result reveals Walmart’s shopper demographics in terms of gender.

### 4.Monthly Sales Totals
Tracking sales by month helps to identify seasonality and sales trends over time.

```sql
SELECT 
    TO_CHAR(Date, 'YYYY-MM') AS Year_Month,
    SUM(Total) AS Total_Sales
FROM 
    sales
GROUP BY 
    TO_CHAR(Date, 'YYYY-MM')
ORDER BY 
    Year_Month;
```
This query highlights the monthly performance of Walmart sales, aiding in forecasting and planning.

### 5.Most Used Payment Methods
Analyzing payment methods can help streamline checkout processes.

```sql
SELECT 
    payment,
    count(*) as payment_count
FROM
    sales
GROUP BY 
    payment
ORDER BY
    payment_count;
```
The results show which payment methods are most popular among customers.

### 6.Top City by Total Sales
Identifying which cities generate the most sales is crucial for regional strategies.

```sql
SELECT 
    city, 
    SUM(Total) AS Total_Sales
FROM 
    sales
GROUP BY 
    city
ORDER BY 
    Total_Sales DESC;
```
This query helps to understand which locations contribute the most to Walmart’s revenue.

### 7.Top Product Line by Total Sales
Identifying which product lines bring in the most sales helps prioritize inventory and marketing efforts.

```sql
SELECT
    product_line,
    SUM(total) AS total_Sales
FROM
    sales
GROUP BY
    product_line
ORDER BY 
    total_Sales DESC;
```
This analysis highlights the most profitable product lines.

# What I Learned
SQL Mastery: This project sharpened my SQL skills, allowing me to work with grouping, sorting, and aggregate functions to derive meaningful insights.
Data Analysis: I learned how to approach real-world business questions using data and provide actionable recommendations.

# Conclusions

Key Insights:
4. **Sales Trends**
1. **Customer Satisfaction**: The top-rated branches and product lines offer valuable insights into customer preferences.
2. **Shopping Behavior**: The most frequent shopping times reveal opportunities for operational improvements.
3. **Diverse Payment Methods**: Understanding the preferred payment methods can enhance the checkout experience.
4. **Sales Trends**: Monthly sales data and product line performance can guide stock management and promotions.

### Closing Thoughts

This project provided me with valuable experience in analyzing sales data and generating actionable business insights. The SQL queries were instrumental in uncovering important trends that could help Walmart enhance customer satisfaction, optimize operations, and improve profitability.
