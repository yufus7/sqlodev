-- ÖDEV 1
select avg(rental_rate) from film

-- ÖDEV 2
select count(film) from film
where title like 'C%'


-- ÖDEV 3
select max(length) from film
where rental_rate = 0.99


-- ÖDEV 4
select count(distinct replacement_cost) from film
where length > 150
