USE book_shop;
SELECT * FROM books;

/* 
1. Select all books written before 1980
*/
SELECT * FROM books
WHERE released_year < 1980;

/*
2. Select all books written by Eggers or Chabon
*/
SELECT * FROM books
WHERE author_lname IN ('Eggers', 'Chabon');

/*
3. Select all books written by Lahiri published after 2000
*/
SELECT * FROM books
WHERE author_lname = 'Lahiri'
AND released_year > 2000;

/* 
4. Select all books with pages counts between 100 and 200
*/
SELECT * FROM books
WHERE pages BETWEEN 100 AND 200;

/*
5. Select all books where author_lname start with "C" or an "S"
*/
SELECT * FROM books
WHERE author_lname LIKE 'C%'
OR author_lname LIKE 'S%';

/* 
6. If title containt 'stories' -> Short Stories
Just Kids and A Heartbreating Work -> Memoir
everything else -> Novel
*/
SELECT 
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title LIKE '%Just Kids%' OR title LIKE '%A Heartbreaking Work%' THEN 'Memoir'
        ELSE 'Novel'
    END AS 'TYPE'
FROM 
    books;

/* 
7. BONUS
*/
SELECT 
    author_fname,
    author_lname,
    CONCAT(
        COUNT(*), 
        CASE
            WHEN COUNT(*) = 1 THEN ' book'
            ELSE ' books'
        END
    ) AS COUNT
FROM books
GROUP BY author_fname