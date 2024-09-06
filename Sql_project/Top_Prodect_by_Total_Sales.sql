SELECT
    product_line,
    sum(total) AS total_Sales
FROM
    sales
GROUP BY
    product_line
ORDER BY 
    total_Sales DESC;