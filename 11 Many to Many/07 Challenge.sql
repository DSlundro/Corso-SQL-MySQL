
SELECT
    title,
    rating,
    CONCAT_WS(' ', first_name, last_name) AS reviewer
FROM 
    reviews
INNER JOIN 
    series
ON
    series.id = reviews.series_id
INNER JOIN
    reviewers
ON
    reviewers.id = reviews.reviewer_id
ORDER BY
    1, 2 DESC