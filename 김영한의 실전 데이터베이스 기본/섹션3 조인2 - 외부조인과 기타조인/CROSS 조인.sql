SELECT * FROM colors;
SELECT * FROM sizes;

SELECT
	*
FROM
	colors
CROSS JOIN
	sizes;
    
SELECT
	CONCAT('기본티셔츠-', c.color, '-',s.size) AS product_name, 
	color,
    size
FROM
	colors c
CROSS JOIN
	sizes s;
    
CREATE TABLE product_options (
	option_id BIGINT AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL,
    size VARCHAR(10) NOT NULL,
    color VARCHAR(20) NOT NULL,
    PRIMARY KEY (option_id)
);

INSERT INTO 
product_options 
(product_name, size, color) 
SELECT
	CONCAT('기본티셔츠-', c.color, '-',s.size) AS product_name, 
	color,
	size
FROM
	colors c
CROSS JOIN
	sizes s;
    
SELECT * FROM product_options;
