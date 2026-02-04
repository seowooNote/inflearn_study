SELECT AVG(price) FROM products;

SELECT
	name,
    price,
    (SELECT AVG(price) FROM products) AS avg_price
FROM
	products;
    
SELECT
	p.product_id,
	p.name,
    p.price,
    (SELECT 
		count(*) 
	FROM 
		orders o 
	WHERE 
        o.product_id = p.product_id) AS order_count
FROM
	products p;
    
SELECT
	p.product_id, p.name, p.price, COUNT(o.order_id) as order_count
FROM
	products p
LEFT JOIN 
	orders o
ON
	p.product_id = o.product_id
GROUP BY
	p.product_id, p.name, p.price;