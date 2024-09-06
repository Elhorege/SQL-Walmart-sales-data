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
