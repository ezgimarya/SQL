-- Q1
SELECT city, country FROM city
JOIN country ON country.country_id=city.country_id;

-- Q2
SELECT payment_id, first_name, last_name FROM customer
JOIN payment ON customer.customer_id = payment.customer_id;

-- Q3
SELECT rental_id, first_name, last_name FROM customer
JOIN rental ON customer.customer_id = rental.customer_id;
