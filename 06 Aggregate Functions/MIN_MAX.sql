SELECT MAX(pages) FROM books;

SELECT MIN(author_lname) FROM books;

SELECT 
    CONCAT(author_lname, ' ', author_fname) AS author,
    COUNT(*) AS books_written,
    MAX(released_year) AS last_release,
    MIN(released_year) AS early_released,
    CONCAT(MAX(pages), ' pages') AS longest_book
FROM books
GROUP BY author;

SELECT author_lname, MIN(released_year) FROM books GROUP BY author_lname;

SELECT author_lname, MAX(released_year), MIN(released_year) FROM books GROUP BY author_lname;

SELECT 
	author_lname, 
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release,
    MAX(pages) AS longest_page_count
FROM books GROUP BY author_lname;

SELECT 
	author_lname, 
    author_fname,
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release
FROM books GROUP BY author_lname, author_fname;

