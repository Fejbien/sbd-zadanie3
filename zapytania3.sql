SELECT * FROM `products` WHERE `price` BETWEEN 10 AND 20;

SELECT * FROM `products` WHERE `price` NOT BETWEEN 10 AND 20;

SELECT * FROM `products` WHERE `category_id` IN (1, 2, 3);

SELECT * FROM `orders` WHERE `shipper_id` IN (1, 2, 3);

SELECT * FROM `products` WHERE `price` BETWEEN 10 AND 15 AND NOT `category_id` IN (1, 2, 3, 4);

SELECT * FROM `orders` WHERE `order_date` BETWEEN '1996-7-01 00:00:00' AND '1996-7-31 00:00:00';

SELECT * FROM `orders` WHERE `customer_id` IN (SELECT `id` FROM `customers` WHERE `id` BETWEEN 77 AND 90);
