USE publications;
SELECT * FROM authors;

-- COLUMNNS : title, au_lname
-- TABLES: titles, titleauthor, authors
-- Common denomiator: title_id, au_id

SELECT titles.title, au_lname
	FROM titles
    LEFT JOIN titleauthor
		ON titles.title_id = titleauthor.title_id
	LEFT JOIN authors 
		ON titleauthor.au_id = authors.au_id; 
        
-- How much everyone is making by

-- Columns: first_name, salary
-- Table: employees, salaries
-- Keys: emp_no
-- No missing values in either
 
USE employees;
SELECT first_name, salary 
	FROM employees
	LEFT JOIN salaries 
		ON employees.emo_no = salaries.emp_no 
	ORDER BY salary DESC
    LIMIT 10; 
    
-- All the columns from emp + salary
-- COLUMNS: * employees, salary
-- TABLES : employees, salaries
-- key: emp_no = emp_no 

SELECT emp.*, salary
	FROM employees AS emp
    JOIN salaries AS sal 
		ON emp.emp_no = sal.emp_no
	ORDER BY salary DESC
    LIMIT 10; 
    
SELECT *
	FROM employees AS emp
    JOIN salaries AS sal 
		ON emp.emp_no = sal.emp_no;
        
-- total number of titles
-- that each publisher published         
        
-- Anaya: 500
-- Anther publishing house: 400

-- Algodata: 
-- New Moon books:
-- Binnet & Hardley: 

-- Column: sales, titles, publishers 
-- Table: sales, titles, publishers 
-- Key: 
-- Aggresgation: 

-- how many books have been sold by title 
-- Column: QTY, TITLE
-- Table: TITLE, SALE
USE publications;


SELECT title, SUM(qty) as SOLD
	FROM titles
    JOIN sales
		ON titles.title_id = sales.title_id
    GROUP BY title
    ORDER BY SOLD DESC; 
    

    