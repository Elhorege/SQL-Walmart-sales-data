SELECT
    TIME,
    (CASE
        WHEN TIME >= '00:00:00' AND TIME < '12:00:00' THEN 'Morning'
        WHEN TIME >= '12:00:00' AND TIME < '16:00:00' THEN 'Afternoon'
        ELSE 'Evening'
    END) AS time_of_day
FROM sales;

ALTER table sales add column time_of_day VARCHAR(20);

UPDATE sales
set time_of_day =(CASE
        WHEN TIME >= '00:00:00' AND TIME < '12:00:00' THEN 'Morning'
        WHEN TIME >= '12:00:00' AND TIME < '16:00:00' THEN 'Afternoon'
        ELSE 'Evening'
    END
    );
    
SELECT
    time_of_day,
    COUNT(*) AS count_of_time
FROM
    sales
GROUP BY
    time_of_day
ORDER BY
    count_of_time DESC;


