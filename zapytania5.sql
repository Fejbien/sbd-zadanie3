SELECT `id`, `customer_id`, `employee_id`, `order_date`, `shipper_id` FROM `orders` ORDER BY `id` DESC LIMIT 10;

SELECT `id`, `customer_id`, `employee_id`, `order_date`, `shipper_id` FROM `orders` LIMIT 10 OFFSET 10;