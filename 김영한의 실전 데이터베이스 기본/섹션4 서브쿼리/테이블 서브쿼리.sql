SELECT
	category, MAX(price) AS max_price
FROM
	products
GROUP BY category;

SELECT
	p.product_id,
	p.name,
    p.price
FROM
	products p
INNER JOIN
	(SELECT
		category, 
        MAX(price) AS max_price
	FROM
		products
	GROUP BY category) AS cmp
ON p.category = p.category AND p.price = cmp.max_price;



