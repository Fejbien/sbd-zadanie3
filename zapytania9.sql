// ALL
SELECT
    p.id,
    p.name,
    SUM(o.quantity) AS suma
FROM
    products AS p
JOIN orders_details AS o
ON
    o.product_id = p.id
GROUP BY
    p.id
ORDER BY
    suma
DESC
LIMIT 10;



SELECT
    c.id,
    c.customer_name,
    COUNT(d.quantity) AS liczbaZamowien,
    SUM(d.quantity) AS sumaZamowionychRzeczy
FROM
    customers AS c
JOIN orders AS o
ON
    o.customer_id = c.id
JOIN orders_details AS d
ON
    o.id = d.order_id
GROUP BY
    c.id
ORDER BY
    sumaZamowionychRzeczy
DESC
LIMIT 10;



SELECT
    c.id,
    c.category_name,
    SUM(d.quantity) AS ilosc
FROM
    categories AS c
JOIN products AS p
ON
    p.category_id = c.id
JOIN orders_details AS d
ON
    d.product_id = p.id
GROUP BY
    c.id
ORDER BY
    ilosc
DESC
LIMIT 1;



SELECT
    c.id,
    c.category_name,
    SUM(d.quantity) AS ilosc
FROM
    categories AS c
JOIN products AS p
ON
    p.category_id = c.id
JOIN orders_details AS d
ON
    d.product_id = p.id
GROUP BY
    c.id