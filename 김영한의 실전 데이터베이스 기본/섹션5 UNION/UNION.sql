# UNION 은 기본적으로 두 결과 집합을 합친 뒤, 완전히 중복되는 행은 자동으로 제거하여 고유한 값만 남긴다.
SELECT name, email FROM users
UNION
SELECT name, email FROM retired_users;