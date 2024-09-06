SELECT 
    city, 
    SUM(Total) AS Total_Sales
FROM 
    sales
GROUP BY 
    city
ORDER BY 
    Total_Sales DESC;