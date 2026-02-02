SELECT
	*
FROM
	orders
WHERE
	product_id IN (SELECT 
						product_id 
					FROM 
						products 
					WHERE 
						category = '전자기기')
ORDER BY
	order_id;
    
SELECT
	name,price
FROM
	products
WHERE
	price > ANY(SELECT 
					price 
				FROM 
					products 
				WHERE 
					category = '전자기기');
SELECT
	name,price
FROM
	products
WHERE
	price > ANY(SELECT 
					MIN(price) 
				FROM 
					products 
				WHERE 
					category = '전자기기');

EXPLAIN                    
SELECT
	name,price
FROM
	products
WHERE
	price > ALL(SELECT 
					price 
				FROM 
					products 
				WHERE 
					category = '전자기기');
EXPLAIN                 
SELECT
	name,price
FROM
	products
WHERE
	price > ALL(SELECT 
					MAX(price) 
				FROM 
					products 
				WHERE 
					category = '전자기기');
