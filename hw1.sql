--1. How many actors are there with the last name ‘Wahlberg’? 

SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';
-- There are 2 Wahlberg on the LISTEN


--2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

SELECT COUNT(payment)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- there are 5607 payment between 3.99 AND 5.99

--3. What film does the store have the most of? (search in inventory) 
SELECT*
FROM inventory

SELECT film_id, COUNT(film_id) as film_occurence
FROM inventory
GROUP BY film_id
ORDER BY film_occurence DESC;

--	All of the films below have 8 which is the max number of films	
--382	8	
--702	8	
--531	8	
--856	8	
--870	8	
--295	8	
--206	8	
--73	8	
--418	8	
--460	8	
--103	8	
--341	8	
--748	8	
--500	8	
--753	8	
--572	8	


--4. How many customers have the last name ‘William’? 
SELECT last_name
FROM customer
WHERE last_name LIKE 'William';

-- 0 customers have the last name 'William'
-- 1 customer has the last name 'Williams'

--5. What store employee (get the id) sold the most rentals?
SELECT *
FROM rental;

SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(rental_id) DESC;
-- staff id 1 sold more rentals

--6. How many different district names are there?
SELECT *
FROM address;

SELECT COUNT(district)
FROM address;

--there are 603 districts

--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT *
FROM film_actor;

SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

--Film id 508 has the most actors

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
SELECT store_id, last_name
FROM customer
WHERE last_name LIKE '%es'
ORDER BY store_id;
--Store id 1 has 13 customers whose name end in 'es'

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250)