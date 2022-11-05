SHOW DATABASES;
USE book_shop;
SELECT * FROM books;

/* 
1. Print out how many books were released in each year
*/
SELECT 
    released_year, 
    COUNT(title)
FROM books
GROUP BY released_year
ORDER BY released_year DESC;

/* 
2. Print out the total numbers of  books in stok
*/
SELECT 
    SUM(stock_quantity) AS all_stocks
FROM books;

/* 
3. Find the average released_year for each author
*/
SELECT 
    CONCAT(author_lname, ' ', author_fname) AS author,
    AVG(released_year) AS avg_released_year
FROM books
GROUP BY author
ORDER BY author;

/*
4. Find the full name of the author who wrote the longest book
*/
SELECT
    CONCAT(author_lname, ' ', author_fname) AS full_name,
    MAX(pages) AS longest_book
FROM books;

/* 
5. 
*/
SELECT 
    released_year AS year,
    COUNT(title) AS '# books',
    AVG(pages) AS 'avg pages'
FROM books
GROUP BY year
ORDER BY year;

