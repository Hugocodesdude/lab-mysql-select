USE publications;

-- Challenge 1 - Who Have Published What At Where?

-- SELECT au_id, au_lname, au_fname,title, pub_name
-- JOIN titles
-- ON authors.title = titles.title
-- LEFT JOIN publishers
-- ON publishers.pub_name = publishers.pub_name;

SELECT au_id, au_lname, au_fname
FROM authors
JOIN titleauthor
ON authors.au_id = titleauthor.au_id;

SELECT au_id, au_lname, au_fname,title, pub_name
FROM authors
JOIN titles 
ON authors.au_id = titles.title_id
JOIN publishers
ON titles.pub_id = publishers.pub_id;


