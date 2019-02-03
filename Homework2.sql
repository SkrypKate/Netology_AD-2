SELECT 'ФИО: Скрыпникова Екатерина';
-- 1.Простые выборки
--1.1 
SELECT * 
FROM ratings 
LIMIT 10;
-- 1.2
SELECT *
FROM links
WHERE
imdbit like '%42'
AND movieid >100
AND movieid <1000
LIMIT 10;
