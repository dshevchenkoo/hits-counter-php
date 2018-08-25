SELECT books.name_book, 
COUNT(author.author_id) as count_authors 
FROM books 
INNER JOIN bind USING(book_id) 
INNER JOIN author USING(author_id) 
GROUP BY(books.name_book) HAVING count_authors <= 3 
ORDER BY count_authors