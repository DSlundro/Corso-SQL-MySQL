SHOW DATABASES;
USE book_shop;
SELECT * FROM books;

/* 
1. Select all story collections, titles that contain stories
*/
SELECT title FROM books where title LIKE '%stories%'

/* 
2. Find the longest book, print out the title and page count
*/
SELECT title, pages FROM books 
ORDER BY pages DESC LIMIT 1;

/* 
3. Print a summary containing title and year for the 3 most recent books
*/
SELECT CONCAT(title, ' - ', released_year) AS summary FROM books
ORDER BY released_year DESC LIMIT 3;

/* 
4. Find all books with an author_lname that contains a space (" ")
*/
SELECT title, author_lname FROM books
WHERE author_lname LIKE '% %';

/* 
5. Find the 3 books with the lowest stock, select title, year and stock
*/
SELECT title, released_year, stock_quantity FROM books
ORDER BY stock_quantity LIMIT 3;

/* 
6. Print title and author_lname sorted first by author_lname then by title
*/
SELECT title, author_lname FROM books
ORDER BY 2, 1;

/* 
7. Sort alphabetically by last name
*/
SELECT UCASE(CONCAT_WS(' ', 'My favourite author is', author_fname, author_lname)) 
AS yell FROM books ORDER BY author_lname 