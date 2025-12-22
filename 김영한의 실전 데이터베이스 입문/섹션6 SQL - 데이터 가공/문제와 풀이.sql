# 문제1 : 상품 할인 가격 계산하기
SELECT name, price, price * 0.85 AS sale_price FROM products;

# 문제2 : 고객 정보 보기 좋게 합치기
SELECT CONCAT_WS(' - ', name, address) AS customer_info FROM customers;

# 문제3 : 상품 설명이 없는 경우 처리하기
SELECT name, IFNULL(description, name) AS product_display_info FROM products;

# 문제4 : 여러 후보 값 중 유효한 값 선택하기
SELECT name, description, COALESCE(description, name, '정보없음') AS diplay_text FROM products;

# 문제5 : 이메일 주소 분리 및 분석하기
SELECT email, SUBSTRING_INDEX(email, '@', 1) AS user_id, CHAR_LENGTH(SUBSTRING_INDEX(email, '@', 1)) AS id_length FROM customers;