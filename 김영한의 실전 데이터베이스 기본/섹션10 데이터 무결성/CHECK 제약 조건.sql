# CHECK 제약 조건
# 특정 컬럼에 대해, INSERT 또는 UPDATE 가 일어날 때마다 지정된 조건식이 참(true)인지를 검사한다.
# 만약 조건식이 거짓(false)이면, 데이터베이스는 해당 데이터의 입력을 거부하고 에러를 발생시킨다.

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;

-- CHECK 제약 조건을 추가하여 products 테이블 재생성
CREATE TABLE products (
    product_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(100),
    price INT NOT NULL CHECK (price >= 0),
    stock_quantity INT NOT NULL CHECK (stock_quantity >= 0),
    discount_rate DECIMAL(5, 2) DEFAULT 0.00 CHECK (discount_rate BETWEEN 0.00 AND 100.00)
);

INSERT INTO products (name, category, price, stock_quantity)
VALUES ('오류상품', '전자기기', -5000, 10); # stock_quantity INT NOT NULL CHECK (stock_quantity >= 0)

INSERT INTO products (name, category, price, stock_quantity, discount_rate)
VALUES ('오류상품', '전자기기', 5000, 10, 120.00); # discount_rate DECIMAL(5, 2) DEFAULT 0.00 CHECK (discount_rate BETWEEN 0.00 AND 100.00)