/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */


SELECT category.name, COUNT(CASE WHEN language.name = 'English' THEN film.film_id END) AS sum FROM film JOIN film_category ON film.film_id = film_category.film_id JOIN category ON film_category.category_id = category.category_id JOIN language ON film.language_id = language.language_id GROUP BY category.name ORDER BY category.name;
