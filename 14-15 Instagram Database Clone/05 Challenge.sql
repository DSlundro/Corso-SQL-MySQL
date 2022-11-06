/*
Our investors want to know how many times does the average user post?
*/
SELECT 
    username,
    COUNT(photos.user_id) AS posts,
    (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS avg
FROM users
JOIN photos ON photos.user_id = users.id
GROUP BY username
ORDER BY posts DESC;