-- Display all available tables in the Sakila database
USE sakila;
SELECT *
FROM information_schema.tables;
-- =============================

-- Retrieve all the data from the tables actor
SELECT * FROM actor;
-- Retrieve all the data from the tables film
SELECT * FROM film;
-- Retrieve all the data from the tables customer
SELECT * FROM customer;
-- =============================

-- Retrieve titles of all films from the film table
SELECT title FROM film;
-- List of languages used in films, with the column aliased as language from the language table
SELECT name FROM language;
-- List of first names of all employees from the staff table
SELECT first_name FROM staff;
-- =============================

-- Determine the number of stores that the company has
SELECT COUNT(*) AS Number_of_Stores
FROM store;

-- Determine the number of employees that the company has.
SELECT COUNT(*) AS Number_of_Stuff
FROM staff;

-- Determine how many films are available for rent and how many have been rented
SELECT * FROM rental;

-- Determine the number of distinct last names of the actors in the database.
SELECT DISTINCT last_name FROM actor;

-- Retrieve the 10 longest films.
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor
WHERE first_name = 'Scarlett';

-- BONUS --
-- Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM film
WHERE title LIKE 'ARMAGEDDON%' AND length > 100;

-- Determine the number of films that include Behind the Scenes content
SELECT * FROM film
WHERE special_features LIKE '%Behind the Scenes';
