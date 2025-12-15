# NULL 연산 - 알 수 없음
# IS NULL - 해당 열의 값이 	NULL 인 행을 찾는다.
# IS NOT NULL - 해당 열의 값이 NULL 이 아닌, 즉 데이터가 입력된 행을 찾는다.

SELECT * FROM products WHERE description = NULL; # 비교하면 안됨
SELECT * FROM products WHERE description IS NULL;

# 상품 설명을 내림차순으로 정렬하되, 설명이 없는 상품(NULL)이 제일 먼저 조회
SELECT product_id, name, description, description IS NULL FROM products ORDER BY description IS NULL DESC, description DESC;

