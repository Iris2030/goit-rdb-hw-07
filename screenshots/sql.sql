—------------------------------------------------ 1 ---------------------------------------------


SELECT
id,
date,
	DATE_PART ('year', date) AS year,
	DATE_PART ('month',date) As month,
	DATE_PART ('day', date) AS daY
FROM
	orders;

—------------------------------------------------ 2 ---------------------------------------------


SELECT
	id,
	date,
	date + INTERVAL '1 day' AS updated_date
FROM
	orders;


—------------------------------------------------ 3 ---------------------------------------------


SELECT id, date, EXTRACT(EPOCH FROM date) AS seconds FROM orders;

—------------------------------------------------ 4 ---------------------------------------------


SELECT COUNT (*) FROM orders WHERE date BETWEEN '1996-07-10' AND '1996-10-08';

—------------------------------------------------ 5 ---------------------------------------------


SELECT id, date, json_build_object('id', id, 'date', date) AS json_object FROM orders;