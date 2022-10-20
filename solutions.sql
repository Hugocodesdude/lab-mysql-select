USE publications;

-- Challenge 1 - Who Have Published What At Where?

-- SELECT au_id, au_lname, au_fname,title, pub_name
-- JOIN titles
-- ON authors.title = titles.title
-- LEFT JOIN publishers
-- ON publishers.pub_name = publishers.pub_name;

USE PUBLICATIONS;
SELECT au_id, au_lname, au_fname,title, pub_name
FROM authors
JOIN titleauthor
ON authors.au_id = titleauthor.au_id
JOIN title 
ON titleauthor.title_id = titles.title_id
JOIN publishers
ON titles.pub_id = publishers.pub_id
ORDER BY author_id ASC;

-- Challenge 2 - Who Have Published How Many At Where?
SELECT authors.au_id, au_lname, au_fname, pub_name, count(titles.title_id)
FROM authors
JOIN titleauthor
ON authors.au_id = titleauthor.au_id
JOIN titles 
ON titleauthor.title_id = titles.title_id
JOIN publishers
ON titles.pub_id = publishers.pub_id
GROUP BY authors.au_id, publishers.pub_id
ORDER BY authors.au_id DESC;


-- Challenge 3 - Best Selling Authors

SELECT authors.au_id, au_lname, au_fname, sum(qty) as total
FROM authors
JOIN titleauthor
	ON authors.au_id = titleauthor.au_id
JOIN sales
	ON titleauthor.title_id = sales.title_id
GROUP BY au_id
ORDER BY total DESC
LIMIT 3;


-- Challenge 4 - Best Selling Authors Ranking

SELECT authors.au_id, au_lname, au_fname, sum(qty) AS total
FROM authors
JOIN titleauthor
	ON authors.au_id = titleauthor.au_id
JOIN sales
	ON titleauthor.title_id = sales.title_id
GROUP BY au_id
ORDER BY total DESC
LIMIT 23;