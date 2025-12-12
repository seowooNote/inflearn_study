SELECT * FROM products
WHERE product_id = 1;

# DML - 수정
UPDATE products
SET price = 9800, stock_quantity = 580
WHERE product_id = 1;

# 실행결과 오류발생 : SQL 안전 업데이트 모드
# SQL 안전 업데이트 모드에서는 where 절에 기본키 대상으로만 업데이트가 진행됨
UPDATE products
SET price = 9800;

# SQL 안전 업데이트 모드 활성화(1) / 비활성화(0)
# MySQL 이 제공하는 안전 업데이트 모드의 기본설정은 비활성화(0) 상태
# 그런데 MySQL 워크벤치는 이런 실수를 방지하기 위해 MySQL에 접근할 때 안전 업데이트 설정을 활성화함
SELECT @@SQL_SAFE_UPDATES;

SET SQL_SAFE_UPDATES = 1;
