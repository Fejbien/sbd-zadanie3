// CASE

SELECT o.id, o.quantity,
CASE
    WHEN o.quantity > 30 THEN 'Liczba sztuk jest większa niż 30'
    WHEN o.quantity < 30 THEN 'Liczba sztuk jest mniejsza niż 30'
    ELSE 'Liczba sztuk jest równa 30'
END AS ilosc
FROM orders_details as o;

SELECT c.customer_name, c.city, c.country FROM customers as c ORDER BY CASE WHEN c.city = NULL THEN c.country ELSE c.city END;