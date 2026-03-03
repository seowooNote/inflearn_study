# 기본 제약 조건
# NOT NULL
INSERT INTO users (name, email) VALUES ('냐옹이', NULL);

# UNIQUE
INSERT INTO users (name, email, address) VALUES ('가짜 션', 'sean@example.com', '서울시 어딘가');

# PRIMARY KEY (기본키): 행의 대표 식별자(NOT NULL + UNIQUE)
# MySQL 은 기본 키에 자동으로 고성능 인덱스를 생성한다.
INSERT INTO users (user_id, name, email) VALUES ('1', '누군가', 'someone@example.com');

# DEFAULT: 기본값 설CREATE TABLE orders (
    order_id BIGINT AUTO_INCREMENT,
    user_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    quantity INT NOT NULL,
    status VARCHAR(50) DEFAULT 'PENDING',
    PRIMARY KEY (order_id),

    CONSTRAINT fk_orders_users FOREIGN KEY (user_id)
        REFERENCES users(user_id),

    CONSTRAINT fk_orders_products FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);