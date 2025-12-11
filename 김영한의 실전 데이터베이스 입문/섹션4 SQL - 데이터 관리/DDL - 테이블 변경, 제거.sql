USE my_shop;

# 테이블 컬럼 추가
ALTER TABLE customers
ADD Column point INT NOT NULL DEFAULT 0;

# 테이블 확인
DESC customers;

# 테이블 컬럼 수정
ALTER TABLE customers
MODIFY address VARCHAR(500) NOT NULL;

# 테이블 컬럼 삭제
ALTER TABLE customers
DROP COLUMN point;

# DROP TABLE : 테이블의 존재 자체를 삭제
# TRUNCATE TABLE : 테이블의 구조는 남기고, 내부 데이터만 삭제

# 참조 당하는 테이블은 삭제할 수 없음
DROP TABLE products;
TRUNCATE TABLE products;

# FOREIGN_KEY_CHECK 를 비활성화(0) 하면 참조 당하는 테이블을 삭제할 수 있음 / 활성화(1)
SET FOREIGN_KEY_CHECK = 0;
TRUNCATE TABLE products;
SET FOREIGN_KEY_CHECK = 1;