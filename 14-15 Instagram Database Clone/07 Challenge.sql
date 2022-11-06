/*
We have a small problem with bots on our site.
Find users who have liked every single photo on the site
*/
SELECT 
    username,
    COUNT(*) AS num_likes
FROM users
INNER JOIN likes ON likes.user_id = users.id
GROUP BY username
HAVING num_likes = (SELECT COUNT(*) FROM photos)
