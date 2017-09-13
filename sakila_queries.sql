-- Query 1
SELECT customer.first_name, customer.last_name, customer.email, customer.address_id FROM customer
JOIN address ON customer.address_id = address.address_id
WHERE address.city_id = 312
-- Query 2
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE category.name = "comedy"
-- Query 3
SELECT actor.actor_id, actor.first_name, actor.last_name, film.title, film.description, film.release_year FROM actor
JOIN film_actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
WHERE actor.actor_id = 5
-- Query 4
SELECT customer.first_name, customer.last_name, customer.email, address.address FROM customer
JOIN address ON customer.address_id = address.address_id
WHERE customer.store_id = 1 AND address.city_id in (1, 42, 312, 459)
-- Query 5
SELECT film.title, film.description, film.release_year, film.rating, film.special_features FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
WHERE film.rating = "G" AND film.special_features LIKE "%behind the scenes%" AND film_actor.actor_id = 15
-- Query 6
SELECT film.film_id, film.title, actor.actor_id, CONCAT(actor.first_name, ' ', actor.last_name) AS actor_name FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE film.film_id = 369
-- Query 7
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE category.name = "drama" AND film.rental_rate = 2.99
-- Query 8
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name, actor.first_name, actor.last_name FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE category.name = "action" AND actor.first_name = "SANDRA" AND actor.last_name = "KILMER"