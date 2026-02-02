SELECT * FROM products;
SELECT AVG(price) FROM products;

SELECT
	* 
FROM 
	products
WHERE 
	price > (SELECT AVG(price) FROM products);