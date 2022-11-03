/*     1     */
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



/*     2     */
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
LEFT JOIN orders AS `o`
ON
    o.customer_id = c.id
WHERE
    1
GROUP BY
    c.id



/*     3     */
SELECT
    c.id AS `Customer id`,
    c.customer_name AS `Customer name`,
    c.contact_name AS `Contact name`,
    c.address AS `Address`,
    c.city AS `City`,
    c.post_code AS `Post code`,
    c.country AS `Country`
FROM
    `customers` AS `c`
JOIN orders AS `o`
ON
    o.customer_id = c.id
WHERE
    1
GROUP BY
    c.id



/*     4     */



/*     5     */
SELECT
    c1.customer_name AS `Customer 1 name`,
    c2.customer_name AS `Customer 2 name`,
    c1.city AS `City`
FROM
    customers c1,
    customers c2
WHERE
    c1.id <> c2.id AND c1.City = c2.City;