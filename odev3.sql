--1
SELECT * FROM country
WHERE country
LIKE 'A%a';


--2
SELECT * FROM country
WHERE country
LIKE '______%n';


--3
SELECT title 
FROM film
WHERE title
ILIKE 'T___%'
OR title
~~* '_t__%'	
OR title
~~* '__t_%'
OR title
~~* '___t%';


--4
SELECT * 
FROM film
WHERE title
LIKE 'C%'
AND length > 90
AND rental_rate = 2.99;
