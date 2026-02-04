# UNION 에서의 정렬은 첫번째 쿼리의 컬럼을 인식한다.
SELECT name, email FROM users
UNION
SELECT name, email FROM retired_users
ORDER BY name;

SELECT name, email, created_at AS event_date FROM users
UNION
SELECT name, email, retired_date AS event_date FROM retired_users
ORDER BY event_date;