# 트랜잭션 격리 수준(Transaction Isolation Level)
# : 격리 수준을 높이면 데이터 정합성은 올라가지만 동시성이 떨어져 성능이 저하되고,
# 격리 수준을 낮추면 성능은 올라가지만 특정 데이터 부정합 문제가 발생할 수 있다.

# 동시성 문제(Concurrency Problems)
# 1. 더티 리드(Dirty Read)
# : 한 트랜잭션이 아직 COMMIT 하지 않은, 수정 중인 데이터를 다른 트랜잭션이 읽는 것
# 2. 반복 불가능 읽기(Non-Repeatable Read)
# : 한 트랜잭션 내에서 똑같은 SELECT 쿼리를 두 번 실행했는데, 그 사이에 다른 트랜잭션이 값을 수정하고
# COMMIT 하는 바람에 두 쿼리의 결과가 다르게 나오는 현상
# 3. 유령 읽기(Phantom Read)
# : 한 트랜잭션 내에서 특정 범위의 데이터를 두 번 읽었는데, 첫 번째 조회에서는 없었던 새로운 행(유령)이
# 두 번째 조회에서 나타나는 현상. 다른 트랜잭션이 새로운 행을 INSERT 하고 COMMIT 했기 때문에 발생한다.

# 4가지 표준 격리 수준
# 격리 수준              Dirty Read        Non-Repeatable Read       Phantom Read
# READ UNCOMMITTED        발생                 발생                       발생
# READ COMMITTED          방지                 발생                       발생
# REPEATABLE READ         방지                 방지                       발생(일부 방지)
# SERIALIZABLE            방지                 방지                       방지


# 격리 수준 확인 및 변경하기
SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT @@transaction_isolation

