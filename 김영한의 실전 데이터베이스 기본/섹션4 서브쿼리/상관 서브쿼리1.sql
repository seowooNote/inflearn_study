SELECT * FROM products;

SELECT AVG(price) FROM products WHERE category = '전자기기';
SELECT AVG(price) FROM products WHERE category = '도서';

SELECT
	*
FROM
	products p1
WHERE
	price >= (SELECT
					AVG(p2.price)
				FROM
					products p2
				WHERE
					p2.category = p1.category);