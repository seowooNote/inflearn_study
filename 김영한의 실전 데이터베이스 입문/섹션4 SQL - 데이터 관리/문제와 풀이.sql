# 문제1 : 데이터베이스와 테이블 생성하기
CREATE DATABASE my_test;

USE my_test;

CREATE TABLE members (
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    join_date DATE
);

DESC members;

# 문제2 : 데이터 추가 및 조회하기 (INSERT, SELECT)
INSERT INTO members (id, name, join_date) VALUES
(1, '션', '2025-01-10'),
(2, '네이트', '2025-02-15');

SELECT * FROM members;

# 문제3 : 데이터 수정 및 삭제하기 (UPDATE, DELETE)
UPDATE members SET name = '네이트2' WHERE id = 2;
DELETE FROM members WHERE id = 1;

SELECT * FROM members;

# 문제4 : 제약 조건을 포함한 테이블 생성하기
CREATE TABLE products(
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    product_code VARCHAR(20) UNIQUE,
    price INT NOT NULL,
    stock_count INT NOT NULL DEFAULT 0
);

DESC products;

# 문제5 : 외래 키(Foreign Key)로 테이블 관계 맺기
CREATE TABLE customers(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE orders(
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id)
		REFERENCES customers(customer_id)
);

INSERT INTO customers VALUES (NULL, '홍길동');
INSERT INTO orders (customer_id) VALUES (1);

SELECT * FROM customers;
SELECT * FROM orders;

# 문제6 : 제약 조건 위반 상활 만들기
INSERT INTO orders (customer_id) VALUES (999);
INSERT INTO customers (customer_id) VALUES (NULL);



