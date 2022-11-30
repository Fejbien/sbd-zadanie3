// DISTINCT
SELECT `country` FROM `customers` WHERE 1;
SELECT DISTINCT(`country`) FROM `customers` WHERE 1;

SELECT COUNT(a.d) as "Kraje bez powtorzen: " FROM (SELECT DISTINCT(`country`) as d FROM `customers` GROUP BY country HAVING COUNT(`country`) = 1) as a