/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */


SELECT payment.customer_id, customer.first_name, customer.last_name, SUM(payment.amount) AS sum FROM payment JOIN customer USING (customer_id) GROUP BY customer.last_name, customer.first_name, payment.customer_id ORDER BY last_name;
