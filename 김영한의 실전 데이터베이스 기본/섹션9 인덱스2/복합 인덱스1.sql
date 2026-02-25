# 복합 인덱스 대원칙
# 1. 인덱스는 순선대로 사용하라! (왼쪽 접두어 규칙)
# 2. 등호(=) 조건은 앞으로, 범위 조건은 뒤로!
# 3. 정렬(ORDER BY)도 인덱스 순서를 따르라!

SHOW INDEX FROM items;

CREATE INDEX idx_items_category_price ON items (category,price);

EXPLAIN SELECT * FROM items WHERE category = '전자기기';
EXPLAIN SELECT * FROM items WHERE category = '전자기기' AND price = 120000;

# WHERE 절과 ORDER BY 절의 조건이 복합 인덱스의 순서와 일치하면, 데이터베이스는 가장 효율적인 방식으로 데이터를 찾고 정렬까지 한 번에 처리한다
# Filesort 피하는 것이야말로 복합 인덱스를 사용하는 핵심적인 이유 중 하나다. (추가적인 Filesort 를 피함)
EXPLAIN SELECT * FROM items WHERE category = '전자기기' AND price > 100000 ORDER BY price; # Using Filesort 가 없음
EXPLAIN SELECT * FROM items WHERE category = '전자기기' AND price > 100000 ORDER BY category, price; # Using Filesort 가 없음
EXPLAIN SELECT * FROM items WHERE category = '전자기기' AND price > 100000 ORDER BY item_name; # Using Filesort 가 있음