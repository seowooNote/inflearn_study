USE my_shop;

# 고객 테이블 생성
CREATE TABLE customers(
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    join_date DATETIME DEFAULT CURRENT_TIMESTAMP
    # DATETIME DEFUALT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    # 새로운 데이터 행(row)이 추가될 때는 물론이고, 같은 행의 컬럼 값이 변경되어 업데이트될 때, 이 컬럼의 값은 현재 날짜와 시간으로 자동 갱신된다.
);

SHOW TABLES;

# 고객 테이블 생성 확인
DESC customers;

# 상품 테이블 생성
CREATE TABLE products(
	product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price INT NOT NULL,
    stock_quantity INT NOT NULL DEFAULT 0
);

# 상품 테이블 생성 확인
DESC products;

# 주문 테이블 생성
CREATE TABLE orders(
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) NOT NULL DEFAULT '주문접수',
	
    CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    CONSTRAINT fk_orders_products FOREIGN KEY (product_id) REFERENCES products(product_id)    
);

