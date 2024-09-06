SELECT
    gender,
    COUNT(*) AS gender_count
FROM
    sales
GROUP BY
    gender
ORDER BY 
    gender_count DESC;
