# 복합 인덱스 대원칙
# 1. 인덱스틑 순서대로 사용하라(왼쪽 접두어 규칙)
# 2. 등로(=) 조건은 앞으로, 범위 조건은(<, >) 뒤로
# 3. 정렬(ORDER BY)도 인덱스 순서를 따르라

EXPLAIN SELECT * FROM items WHERE category >= '패션' AND price = 20000;