SELECT 
    title,
    AVG(rating) AS avg_rating
FROM series
INNER JOIN reviews
ON series.id = reviews.series_id
GROUP BY title
ORDER BY avg_rating;