
SELECT COUNT(`id`), `country` FROM customers GROUP BY `country` HAVING COUNT(`id`) > 5;

SELECT c.customer_name, COUNT(c.id) FROM `customers` as c JOIN orders as o ON o.customer_id = c.id GROUP By c.id HAVING COUNT(c.id) > 2 and COUNT(c.id) < 4;

SELECT e.first_name, e.last_name, COUNT(o.id) FROM `employees` as e JOIN orders as o ON o.employee_id = e.id GROUP By e.id HAVING COUNT(o.id) > 10;

SELECT e.last_name, EXISTS(SELECT COUNT(o.id) FROM orders as o WHERE o.employee_id = e.id HAVING COUNT(o.id)) FROM `employees` as e WHERE e.last_name="Davolio" OR e.last_name="Fuller";

SELECT `id`, `name`, `contact_name`, `address`, `city`, `post_code`, `country`, `phone` FROM `suppliers` as s WHERE EXISTS( SELECT p.id FROM products as p WHERE p.price < 20 AND p.supplier_id = s.id );

SELECT `id`, `name`, `contact_name`, `address`, `city`, `post_code`, `country`, `phone` FROM `suppliers` as s WHERE EXISTS( SELECT p.id FROM products as p WHERE p.price = 22 AND p.supplier_id = s.id );