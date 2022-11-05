SELECT author_lname, COUNT(*) FROM books
GROUP BY author_lname;

SELECT author_lname, COUNT(*) AS books_written FROM books
GROUP BY author_lname
ORDER BY books_written DESC;

SELECT author_fname, author_lname, COUNT(*) 
FROM books 
GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS author,  COUNT(*)
FROM books
GROUP BY author;