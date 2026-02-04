SELECT
	name,
    price,
    CASE
		WHEN price >= 30000 THEN '중가'
		WHEN price >= 100000 THEN '고가'
        ELSE '저가'
	END AS price_label
FROM
	products;
    
SELECT
	name,
    price,
    CASE
		WHEN price >= 100000 THEN '고가'
		WHEN price >= 30000 THEN '중가'
        ELSE '저가'
	END AS price_label
FROM
	products
ORDER BY
	CASE
		WHEN price >= 100000 THEN 1
		WHEN price >= 30000 THEN 2
        ELSE 3
	END ASC, 
    price DESC;