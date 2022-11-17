// ANY ALL
SELECT p.name FROM products as p JOIN orders_details as o ON p.id = o.product_id WHERE o.id = ANY(SELECT o.id FROM orders_details as o WHERE o.quantity = 10);

SELECT p.name FROM products as p JOIN orders_details as o ON p.id = o.product_id WHERE o.id = ANY(SELECT o.id FROM orders_details as o WHERE o.quantity > 99);

SELECT * FROM `products` as p WHERE p.id = ALL(SELECT p.id FROM products as p WHERE p.name);

SELECT p.name FROM products as p JOIN orders_details as o ON p.id = o.product_id WHERE o.id = ALL(SELECT o.id FROM orders_details as o WHERE o.quantity = 10);