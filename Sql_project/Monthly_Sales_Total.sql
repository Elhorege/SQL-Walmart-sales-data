SELECT 
    TO_CHAR(Date, 'YYYY-MM') AS Year_Month,
    SUM(Total) AS Total_Sales
FROM 
    sales
GROUP BY 
    TO_CHAR(Date, 'YYYY-MM')
ORDER BY 
    Year_Month;
