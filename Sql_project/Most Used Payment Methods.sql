SELECT * FROM sales

SELECT 
    payment,
    count(*) as payment_count
FROM
    sales
GROUP BY 
    payment
ORDER BY
    payment_count;