SELECT
    CASE
		WHEN YEAR(birth_date) >= 1990 THEN '1990년대생'
        WHEN YEAR(birth_date) >= 1980 THEN '1980년대생'
        ELSE '그 이전 출생'
	END AS birth_decade,
    COUNT(*) AS customer_count
FROM
	users
GROUP BY
	CASE
		WHEN YEAR(birth_date) >= 1990 THEN '1990년대생'
        WHEN YEAR(birth_date) >= 1980 THEN '1980년대생'
        ELSE '그 이전 출생'
	END;

