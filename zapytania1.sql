SELECT * FROM `customers` WHERE `country`="Germany";

SELECT * FROM `customers` WHERE `city`="Berlin";

SELECT * FROM `customers` WHERE `city`="Berlin" AND `country`="Germany";

SELECT * FROM `customers` WHERE (`city`="Berlin" OR `city`="München") AND `country`="Germany";

SELECT * FROM `customers` WHERE NOT `country`="USA" OR NOT `country`="Germany";

SELECT * FROM `customers` WHERE 1 ORDER BY `country` ASC;

SELECT * FROM `customers` WHERE 1 ORDER BY `country` DESC;

SELECT * FROM `customers` WHERE 1 ORDER BY `country` DESC, `customer_name` ASC;