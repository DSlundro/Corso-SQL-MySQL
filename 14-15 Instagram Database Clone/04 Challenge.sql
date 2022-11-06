/* 
We're running a new contest to see who can get most likes on a single photo.
Who won?
*/
SELECT 
    username, 
    photo_id AS ID,
    image_url AS URL,
    COUNT(*) AS total
FROM likes
JOIN photos ON likes.photo_id = photos.id
JOIN users ON photos.user_id = users.id
GROUP BY ID
ORDER BY total DESC
LIMIT 1;