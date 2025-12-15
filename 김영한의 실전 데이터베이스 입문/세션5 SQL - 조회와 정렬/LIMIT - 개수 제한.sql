# LIMIT 조회 결과 갯수 제한
SELECT * FROM products ORDER BY price DESC LIMIT 2;

# LIMIT OFFSET 페이징 처리
# LIMIT 건너뛸개수(offset), 가져올개수(row_count)
SELECT * FROM products LIMIT 0, 2; # 1페이지
SELECT * FROM products LIMIT 2, 2; # 2페이지
SELECT * FROM products LIMIT 4, 2; # 3페이지
# offset = ((페이지 번호 - 1)) * 페이지당_게시물수