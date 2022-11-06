/*
A brand wants to know which hashtags to use in a post.
What a re the top 5 most commonly ised hashtags?
*/
SELECT 
    tag_name,
    tag_id,
    COUNT(*) AS most_used
FROM photo_tags
JOIN tags ON tags.id = photo_tags.tag_id
GROUP BY tag_name
ORDER BY most_used DESC
LIMIT 5