
--1. How many actors are there with the last name ‘Wahlberg’?
SELECT * 
FROM actor;

SELECT count(last_name)
FROM actor
WHERE last_name = 'Wahlberg';
--Answer: Two actors last name Wahlberg
--
--
--
--

--2. How many payments were made between $3.99 and $5.99?
SELECT *
FROM payment;

SELECT count (amount)
FROM payment
WHERE amount > 3.99 AND amount < 5.99;
--Answer: 3431 payments
--
--
--

--3. What film does the store have the most of? (search in inventory)/
--There are many films that occur the most times. 
--Feel free to answer with the count of films which occur the most times.
SELECT *
FROM inventory;

SELECT count(film_id), film_id
FROM inventory
GROUP BY film_id
--HAVING count(film_id) = 8
ORDER BY count(film_id) DESC;
--Answer: 72 films occours the most times, they have 8 copies of each films


--4. How many customers have the last name ‘William’?
SELECT * 
FROM customer;

SELECT (last_name)
FROM customer
--WHERE last_name LIKE 'W%am'
--or
WHERE last_name = 'William';
--Answer: No customer has last name William



--5. What store employee (get the id) sold the most rentals?
SELECT staff_id, count(staff_id)
FROM rental
GROUP BY staff_id;
--Answer: staff 1 (Mike) sold the most, total 8040 rentals



--6. How many different district names are there?
SELECT count (DISTINCT district)
FROM address;
--Answer: 378 different district names
--
--
--
--
--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

--Answer: "Lambs Cincinatti" film has the most actors. film ID-508, 15 actors
--
--
--
--
--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT * 
FROM customer;

SELECT count(last_name)
FROM customer
WHERE store_id = 1 AND last_name like '%es';
--Answer: 13




--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT *
FROM payment;

SELECT amount, count(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount 
HAVING count(amount) > 250;


--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
SELECT *
FROM film;

SELECT count (DISTINCT rating)
FROM film;

SELECT count(rating), rating
FROM film
GROUP BY rating
--HAVING count(film_id) = 8
ORDER BY count(rating) DESC;

--Answer: 5 rating catagories, most film PG-13 with 223 films
























