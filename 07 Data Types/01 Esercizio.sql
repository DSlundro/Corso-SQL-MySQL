SHOW DATABASES;
USE ppl;
SELECT * FROM people;

/* 
1. Print out the current time
*/
SELECT CURTIME();

/* 
2. Print out the current date
*/
SELECT CURDATE();

/* 
3. Print out the current day of the week
*/
SELECT WEEKDAY(CURDATE());

/* 
4. Print out the current day and time using this format: mm/dd/yyyy
*/
SELECT
    DATE_FORMAT(NOW(), '%m/%d/%Y');

/* 
5. Print out the current day and time using this format:
January 2nd at 3:15
April 1st at 10:18
*/
SELECT 
    DATE_FORMAT(NOW(), '%W %D at %k:%i');

/* 
6. Create a tweets table that stores:
- The Tweet content
- A Username
- Time it was created
*/
CREATE TABLE tweets (
    tweet_content VARCHAR(150),
    username VARCHAR(15),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DESC tweets;

INSERT INTO tweets (tweet_content, username)
VALUES (
    'sdfdsfsdfsdfdsf',
    'daaaso'
);
SELECT * FROM tweets;

/* 
    QUESTIONS   

1. What's a good use case of CHAR?
- E' il migliore pr i dati con pezzi d itesto di dimensioni fisse, tipo per il CAP che ha sempre 2 caratteri.


2. Fill the blanks (price is always < 1,000,000)
CREATE TABLE inventory (
    item_name __________,
    price ______________,
    quantity ___________
);

CREATE TABLE inventory (
    item_name VARCHAR(100),
    price DECIMAL(8, 2),
    quantity INT(1000)
)


3. What's the difference between DATETIME and TIMESTAMP?
- la differenza sta nell'intervallo di date molto più ridotto
- DATETIME da '1000-01-01 00:00:00' a '9999-12-31 23:59:59'
- TIMESTAMP da '1970-01-01 00:00:01.000000' a '2038-01-19 03:14:07.999999'
 */