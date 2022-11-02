SELECT MIN(`price`) FROM `products` WHERE 1;

SELECT MAX(`price`) FROM `products` WHERE 1;

SELECT count(*) FROM `products` WHERE 1;

SELECT count(*) FROM `customers` WHERE 1;

SELECT count(*) FROM `customers` GROUP BY `country`;

SELECT COUNT(*), AVG(`price`) FROM `products` WHERE `category_id`=1;

SELECT SUM(`price`) FROM `products` WHERE `category_id`=2;

SELECT MAX(`price`) FROM `products` WHERE `category_id`=1 or `category_id`=2 GROUP BY `category_id`;
