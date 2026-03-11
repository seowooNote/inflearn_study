# START TRANSCATION(BEGIN)
# COMMIT
# ROLLBACK

DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
    id INT PRIMARY KEY,
    owner_name VARCHAR(255) NOT NULL,
    balance INT NOT NULL
);

-- 초기 데이터 입력
INSERT INTO accounts (id, owner_name, balance) VALUES
(1, 'A고객', 50000),
(2, 'B고객', 20000);

SELECT * FROM accounts;

START TRANSACTION;

UPDATE accounts SET balance = balance - 10000
WHERE id = 1;

UPDATE accounts SET balance = balance + 10000
WHERE id = 2;



SELECT * FROM accounts;
START TRANSACTION;

UPDATE accounts SET balance = balance - 5000
WHERE id = 1;

ROLLBACK;

# 세션
# 데이터베이스 클라이언트가 데이터베이스 서버에 연결된 순간부터 연결을 종료할 때까지의
# 논리적인 연결단위를 말한다.
# 각 세션은 독립적인 작업 공간을 가지며, 한 세션에서 시작된 트랜잭션은 해당 섹션 내에서만 유효하다.