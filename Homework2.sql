SELECT 'ФИО: Скрыпникова Екатерина';
-- 1. Простые выборки
-- 1.1 
SELECT * 
FROM ratings 
LIMIT 10;
-- 1.2
SELECT *
FROM links
WHERE
imdbid like '%42'
AND movieid BETWEEN 100 AND 1000
LIMIT 10;
-- 2. Сложные выборки: JOIN
-- 2.1
SELECT *
FROM links
JOIN ratings
ON links.movieid=ratings.movieid
WHERE ratings.rating = 5
LIMIT 10;
-- 3. Агрегация данных: базовые статистики
-- 3.1
