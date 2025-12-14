# customers 테이블에서 이메일이 yisunsin@example.com 인 고객 조회하기
SELECT * FROM customers WHERE email = 'yisunsin@example.com'; 

# products 테이블에서 가격이 10000원 이상이 상품 조회하기
SELECT * FROM products WHERE price > 10000;

# AND
SELECT * FROM products 
WHERE price >= 5000 AND stock_quantity >= 50;

# OR
SELECT * FROM products 
WHERE price = 20000 OR stock_quantity >= 100;

# NOT (!, <>)
SELECT * FROM products 
WHERE price != 20000;

SELECT * FROM products 
WHERE price <> 20000;