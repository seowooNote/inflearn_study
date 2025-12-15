# 문제1: 특정 열 조회 및 별칭 사용
SELECT name AS 상품명, price AS 판매가 FROM products;

# 문제2: 간단한 조건으로 필터링하기
SELECT * FROM customers WHERE name = '장영실';

# 문제3: 복합 조건으로 필터링하기 (AND, OR)
SELECT * FROM products WHERE price >= 10000 and stock_quantity < 50;

# 문제4: 특정 범위 및 목록으로 필터링하기 (BETWEEN, IN)
SELECT name, price FROM products WHERE product_id IN (2, 3, 4);

# 문제5: 문자열 패턴으로 검색하기 (LIKE)
SELECT name, address FROM customers WHERE address like '서울특별시%';

# 문제6: NULL 값 데이터 조회하기 (IS NULL)
SELECT * FROM products WHERE description IS NULL;

# 문제7: 결과 정렬하기 (ORDER BY)
SELECT * FROM products ORDER BY price DESC;

# 문제8: 다중 기준으로 정렬하기
SELECT * FROM products ORDER BY price DESC, stock_quantity DESC;

# 문제9: 조회 결과 개수 제한하기 (LIMIT)
SELECT * FROM customers ORDER BY join_date DESC LIMIT 2;

# 문제10: 중복 값 제거하여 조회하기 (DISTINCT)
SELECT DISTINCT customer_id, product_id FROM orders;

# 문제11: 종합 실전 문제
SELECT name AS '상품 이름', stock_quantity AS '남은 수량'
FROM products
WHERE price >= 3000 and stock_quantity <= 100
ORDER BY stock_quantity DESC
LIMIT 3;