SELECT 'ФИО: Скрыпникова Екатерина';
-- 1. Простые выборки
-- 1.1 выбрать 10 записей из таблицы ratings
SELECT * 
FROM ratings 
LIMIT 10;
-- 1.2 выбрать из таблицы links всё записи, у которых imdbid оканчивается на "42", а поле movieid между 100 и 1000
SELECT *
FROM links
WHERE
imdbid like '%42'
AND movieid BETWEEN 100 AND 1000
LIMIT 10;
-- 2. Сложные выборки: JOIN
-- 2.1 выбрать из таблицы links все imdbId, которым ставили рейтинг 5
SELECT *
FROM links
JOIN ratings
ON links.movieid=ratings.movieid
WHERE ratings.rating = 5
LIMIT 10;
-- 3. Агрегация данных: базовые статистики
-- 3.1 Посчитать число фильмов без оценок
SELECT
COUNT (DISTINCT movieid) as movieNull
