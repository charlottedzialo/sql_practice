

""" Question 1 """ 

SELECT sub.author_name 
FROM 
    (SELECT author_name, SUM(sold_copies) as sales
    FROM authors 
    LEFT JOIN books
    ON author.book_name = books.book_name 
    GROUP BY author_name
    ORDER BY sales DESC) sub
LIMIT 3; 


""" Question 2 """ 

SELECT count(*) 
FROM 
    (SELECT user_id, COUNT(event_date_time) as event_counts
    FROM event_log
    GROUP BY user_id) sub 
WHERE sub.event_counts BETWEEN 1000 and 2000; 


""" Question 3 """ 

SELECT sub.department_name
FROM 
    (SELECT department_name, AVG(salary) as avg_salary
    FROM employees 
    JOIN salaries
    ON employees.employee_id = salaries.employee_id
    GROUP BY department_name) sub 
WHERE sub.avg_salary < 500; 

