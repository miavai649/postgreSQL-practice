SHOW timezone;

SELECT now();

CREATE TABLE timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT INTO timeZ VALUES('2020-01-01 12:00:00', '2020-01-01 12:00:00');

SELECT * FROM timez;

SELECT CURRENT_DATE;

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(), 'DDD')

SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT age('2025-08-03', '2001-08-02')

SELECT *, age(CURRENT_DATE, dob) from student_table;

SELECT extract(year from '2020-01-01'::date);

SELECT extract(MONTH from current_date);

SELECT '1'::BOOLEAN;

SELECT country, count(*) as "Total Student", avg(age) FROM student_table GROUP BY country;


SELECT country, count(*) as "Total Student", avg(age) FROM student_table GROUP BY country HAVING avg(age) > 21;

SELECT extract(year from dob) as birth_year, count(*) 
  FROM student_table
  GROUP BY birth_year;