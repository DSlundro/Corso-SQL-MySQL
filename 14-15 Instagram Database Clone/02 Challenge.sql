/*
What day of the week do most users register on?
We need to figure out when to schedule an ad campain
*/
SELECT 
    DAYNAME(created_at) AS week_day,
    COUNT(*) AS total
FROM users
GROUP BY week_day
ORDER BY total DESC;