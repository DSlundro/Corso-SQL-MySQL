SHOW DATABASES;
USE book_shop;
SELECT * FROM books;
/* 
1. Reverse and Uppercase the followind sentence: "Why does my cat look at me with such hatred?"
*/
SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));

/* 
2. REPLACE spaces in title with '->'
 */
SELECT REPLACE(title, ' ', '->') FROM books;

/* 
3. Print author name as forwards and eversed author name with backwards
 */
SELECT author_lname AS 'forwards', REVERSE(author_lname) AS 'backwards'
FROM books;

/* 
4. Print author's first name and last name together in uppercase
 */
SELECT UCASE(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps'
FROM books;

/* 
5. Print title with released year
 */
SELECT
CONCAT(title, ' was released in ', released_year) AS 'blurb'
FROM books;

/* 
6. Prink book titles and the lenght of each title
 */
SELECT
title,
CHAR_LENGTH(title) AS 'character count'
FROM books;

/* 
7.
 */
SELECT
CONCAT(LEFT(title, 10), '...') AS 'short title',
CONCAT_WS(',', author_fname, author_lname) AS 'author',
CONCAT(stock_quantity, ' in stock') AS 'quantity'
FROM books;