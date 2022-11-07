/* 
1. Find earliest date a user joined 
*/
SELECT
	MIN(created_at) AS earliest_date
FROM users;

/* 
2. Find email of the first user
*/
SELECT * FROM users
WHERE created_at = (SELECT MIN(created_at) FROM users);

/* 
3. Users according to the month they joined
*/
SELECT 
	MONTHNAME(created_at) AS month,
    COUNT(*) AS count
FROM users
GROUP BY month
ORDER BY count DESC;

/* 
4. Count numbers of users with yahoo email
*/
SELECT 
	COUNT(*) AS yahoo_users
FROM users
WHERE email LIKE '%yahoo%';

/* 
5. Calculate total number of users for each email host
*/
SELECT 
    CASE
		WHEN email LIKE '%gmail%' THEN 'gmail'
        WHEN email LIKE '%yahoo%' THEN 'yahoo'
        WHEN email LIKE '%hotmail%' THEN 'hotmail'
        ELSE 'others'
	END AS provider,
    COUNT(*) AS total_users
FROM users
GROUP BY provider;