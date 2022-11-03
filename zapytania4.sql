SELECT
    c.id AS `Customer id`,
    c.customer_name AS `Customer name`,
    c.contact_name AS `Contact name`,
    c.address AS `Address`,
    c.city AS `City`,
    c.post_code AS `Post code`,
    c.country AS `Country`,
    p.name AS `Product name`,
    p.price AS `Price of product`,
    od.quantity AS `Quantity`
FROM
    `customers` AS `c`
JOIN `orders` AS `o`
ON
    o.customer_id = c.id
JOIN `orders_details` AS `od`
ON
    od.order_id = o.id
JOIN `products` AS `p`
ON
    od.product_id = p.id
WHERE
    1;





SELECT
    c.id AS `Customer id`,
    c.customer_name AS `Customer name`,
    c.contact_name AS `Contact name`,
    c.address AS `Address`,
    c.city AS `City`,
    c.post_code AS `Post code`,
    c.country AS `Country`,
    COUNT(o.id) AS `Orders made`
FROM
    `customers` AS `c`
JOIN orders AS `o`
ON
    o.customer_id = c.id
WHERE
    1
GROUP BY
    c.id



SELECT
    c.id AS `Customer id`,
    c.customer_name AS `Customer name`,
    c.contact_name AS `Contact name`,
    c.address AS `Address`,
    c.city AS `City`,
    c.post_code AS `Post code`,
    c.country AS `Country`,
    COUNT(o.id) AS `Orders made`
FROM
    `customers` AS `c`
LEFT JOIN `orders` AS `o`
ON
    o.customer_id = c.id
WHERE
    1
GROUP BY
    c.id
