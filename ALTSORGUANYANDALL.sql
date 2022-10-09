-- Q1
SELECT COUNT(*), (SELECT AVG(length) FROM film ) FROM film
WHERE  LENGTH > (SELECT AVG(length) FROM film);

-- Q2
SELECT COUNT(rental_rate) FROM film
WHERE rental_rate= (SELECT MAX(rental_rate) FROM film);

-- Q3
SELECT * FROM film
WHERE rental_rate = (select min(rental_rate) from film) and replacement_cost=(
select min(replacement_cost) from film);

-- Q4
SELECT  customer_id, count(customer_id) FROM payment
group by customer_id
order by count(customer_id) DESC;
