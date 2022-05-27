--1
select count(*) from film
where length > 
(
select avg(length) from film
);


--2
select count(*) from film
where rental_rate = 
(
select max(rental_rate) from film
);


--3
select * from film
where rental_rate = 
(
select min(rental_rate) from film
) 
and replacement_cost =
(
select min(replacement_cost) from film
);


--4
select payment.customer_id, customer.first_name, customer.last_name, count(payment.customer_id) as "Alışveriş Sayısı"  
from payment
left join customer on customer.customer_id = payment.customer_id
group by payment.customer_id,customer.first_name, customer.last_name
order by count(payment.customer_id) desc;
