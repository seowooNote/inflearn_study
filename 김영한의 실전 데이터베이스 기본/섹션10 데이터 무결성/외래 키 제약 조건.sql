# 외래 키 제약 조건
# 외래 키 의 역할: 유령 데이터를 막아라
# 1. 자식 테이블에 INSERT, UPDATE 할 때 부모 테이블에 존재하지 않는 값을 자식 테이블의 컬럼에 넣으려는 시도를 막는다.
# 2. 부모 테이블에서 DELETE, UPDATE 할 때 자식 테이블에서 참조하고 있는 값을 가진 행을 함부로 삭제하거나 변경하지 못하게 막는다.
SELECT * FROM orders ORDER BY order_id DESC LIMIT 1;
SELECT * FROM users;
INSERT INTO orders(user_id, product_id, quantity) VALUES (999, 1, 1); # 외래 키 제약 조건에 실패한 에러(자식 테이블)
SELECT * FROM orders WHERE user_id = 1;
DELETE FROM users WHERE user_id = 1; # 외래 키 제약 조건에 실패한 에러(부모 테이블)

# ON DELETE / ON UPDATE 옵션
# 데이터베이스가 부모 데이터의 삭제나 수정을 무조건 막는 것이 기본값(RESTRICT)이며 가장 안전한 정책이다.
# 하지만 때로는 비즈니스 규칙에 따라 다른 정책이 필요할 수 있다.
# EX. 회원이 탈퇴하면, 그 회원의 모든 주문 기록도 함께 삭제되어야 한다. 와 같은 경우
# RESTRICT(기본값) : 자식 테이블에 참조하는 행이 있으면 부모 테이블의 행을 삭제/수정할 수 없다. 
# CASCADE : 부모 테이블의 행이 삭제/수정되면, 그를 참조하는 자식 테이블의 행도 함께 자동으로 삭제/수정된다.
# SET NULL : 부모 테이블의 행이 삭제/수정되면, 자식 테이블의 해당 외래 키 컬럼의 값을 NULL 로 설정한다.(단, 이 옵션 사용 시 자식테이블의 외래키 컬럼이 NULL 을 허용해야 한다.)
DROP TABLE orders;

CREATE TABLE orders (
    order_id BIGINT AUTO_INCREMENT,
    user_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    quantity INT NOT NULL,
    status VARCHAR(50) DEFAULT 'PENDING',
    PRIMARY KEY (order_id),

    CONSTRAINT fk_orders_users FOREIGN KEY (user_id) 
        REFERENCES users(user_id) ON DELETE CASCADE, -- CASCADE 옵션 추가

    CONSTRAINT fk_orders_products FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

select * from users;
-- 션 회원 다시 등록
INSERT INTO users(user_id, name, email, address, birth_date) VALUES
(1, '션', 'sean@example.com', '서울시 강남구', '1990-01-15');

-- 주문 데이터 다시 입력
INSERT INTO orders(user_id, product_id, quantity, status) VALUES
(1, 1, 1, 'COMPLETED'),
(1, 4, 2, 'COMPLETED'),
(2, 2, 1, 'SHIPPED');

SELECT * FROM orders;
DELETE FROM users WHERE user_id = 1;

