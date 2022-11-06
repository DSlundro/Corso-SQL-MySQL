SELECT
    first_name,
    last_name,
    COUNT(rating) AS COUNT,
    IFNULL(MIN(rating), 0) AS 'MIN',
    IFNULL(MAX(rating), 0) AS 'MAX',
    IFNULL(AVG(rating), 0) AS 'AVG',
    CASE
        WHEN COUNT(rating) = 0 THEN 'INACTIVE'
        ELSE 'ACTIVE'
    END AS 'STATUS'
FROM 
    reviewers
LEFT JOIN
    reviews
ON
    reviewers.id = reviews.reviewer_id
GROUP BY
    first_name,
    last_name;

