SELECT
	product_id, 
    name,
    price
FROM
	products
WHERE
	product_id IN (SELECT
						DISTINCT product_id
					FROM
						orders);
                        
# EXISTS : 서브쿼리가 반환하는 결과값 자체에는 관심이 없고, 오직 서브쿼리의 결과로 행이 하나라도 존재하는지 여부만 체크한다.
SELECT
	product_id,
    name,
    price
FROM
	products p
WHERE EXISTS (SELECT 
					1
				FROM orders o
				WHERE o.product_id = p.product_id);
                
SELECT
	product_id,
    name,
    price
FROM
	products p
WHERE NOT EXISTS (SELECT 
					1
				FROM orders o
				WHERE o.product_id = p.product_id);
                
