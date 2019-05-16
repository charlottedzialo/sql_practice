

''' 1. Write a query that returns all the users 
(by name) that have checked out a book within the last month.'''

SELECT name 
FROM Users
JOIN (SELECT user_id 
      FROM Checkouts
      WHERE checkout_time > "05-01-2019") sub
ON user.user_id = sub.user_id; 



''' 2. Write a query that returns all the users 
(by name) that have a currently checked out book.'''

SELECT name 
FROM Users 
JOIN (SELECT user_id 
      FROM Checkouts
      WHERE return_time is NULL) 
ON users.user_id = sub.user_id; 


'''3. Assuming that the checkout time for a book is one month, 
write a query returning all users (by name) that have an overdue book. 
Summarize this data to produce a list of possibly stolen books (you will 
have to come up with a reasonable interpretation of what this means).'''

SELECT name, Books.name
FROM Users
JOIN (SELECT user_id, Books.name
    FROM Checkouts
    JOIN Books 
    ON Checkout.book_id = Books.book_id
    WHERE checkout_time < '05-16-2019' AND 
    return_time IS NULL) sub
ON User.user_id = sub.user_ID; 


