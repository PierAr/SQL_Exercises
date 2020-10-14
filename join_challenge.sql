/* California sales tax have changed. We need to alert customers through email.
	What are the emails of the customers who live in California.
*/
--First, I choose which data I want to visualize at the end.
SELECT district, customer.first_name, customer.last_name, customer.email
FROM address
-- I need to put togheter customer tab and address tab and use address_id as common link.
INNER JOIN customer
ON address.address_id = customer.address_id
--The I need to visualize only the districts that have California as district.
WHERE district = 'California'


/* A customer walks in and is a huge fan on "Nick Wahlberg" and wants to know
	which movies he is in.
*/
-- Create a selection that shows all the information we need to visualize.
SELECT title, 
	actor.first_name, 
	actor.last_name
FROM film
--First inner join connects film and actor by film id
INNER JOIN film_actor
ON film.film_id = film_actor.film_id
--secon inner join connects actor id with the name of the actor (not included in the film actor tab)
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id
WHERE 
actor.first_name = 'Nick' AND
actor.last_name = 'Wahlberg'