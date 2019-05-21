

SELECT sub.author_name 
FROM 
    (SELECT author_name, SUM(sold_copies) as sales
    FROM authors 
    LEFT JOIN books
    ON author.book_name = books.book_name 
    GROUP BY author_name
    ORDER BY sales DESC) sub
LIMIT 3; 


