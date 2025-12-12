SET FOREIGN_KEY_CHECKS = 0; 
TRUNCATE TABLE products;
TRUNCATE TABLE customers;
TRUNCATE TABLE orders;
SET FOREIGN_KEY_CHECKS = 1; 

SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM orders;

INSERT INTO customers (name, email, password, address)
VALUES ('강감찬', 'kang@example.com', 'new_password_789', '서울시 강남구');

INSERT INTO customers (name, email, password, address)
VALUES ('홍길동', 'kang@example.com', 'new_password_789', '서울시 송파구');

INSERT INTO products (name, price, stock_quantity)
VALUES ('베이직 반팔 티셔츠', 19900, 200);

INSERT INTO orders (customer_id, product_id, quantity)
VALUES (1, 1, 1);

# 외래 키 제약 조건으로 데이터 등록 불가
INSERT INTO orders (customer_id, product_id, quantity)
VALUES (999, 1, 1);

SELECT * FROM products
WHERE product_id = 1;

# 외래 키 제약 조건으로 데이터 삭제 불가
DELETE FROM products
WHERE product_id = 1;

DELETE FROM orders
WHERE product_id = 1;

# 외래 키 제약조건을 포함한 제약조건들은 INSERT 뿐만 아니라 UPDATE, DELETE 등 모든 상황의 데이터 불일치를 원천 방지


