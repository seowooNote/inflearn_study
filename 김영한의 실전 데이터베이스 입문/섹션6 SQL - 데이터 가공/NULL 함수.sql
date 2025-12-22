# NULL 함수
SELECT name, description FROM products;

SELECT 
	name,
    IFNULL(description, '상품 설명 없음') as description
FROM
	products;
    
SELECT 
	name,
    COALESCE(description, '상품 설명 없음') as description
FROM
	products;