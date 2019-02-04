SELECT 'ФИО: Скрыпникова Екатерина';
-- 1. Простые выборки
-- 1.1 Выбрать 10 записей из таблицы ratings
SELECT * FROM ratings LIMIT 10;

-- 1.2 Выбрать из таблицы links всё записи, у которых imdbid оканчивается на "42", а поле movieid между 100 и 1000
SELECT * 
FROM links 
WHERE
    imdbid like '%42'
    AND movieid BETWEEN 100 AND 1000
LIMIT 10;

-- 2. Сложные выборки: JOIN
-- 2.1 Выбрать из таблицы links все imdbId, которым ставили рейтинг 5
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
FROM public.ratings
WHERE ratings.rating IS NULL;

-- 3.2 Вывести top-10 пользователей, у который средний рейтинг выше 3.5
SELECT
userId,
AVG(rating) as avg_rating
FROM public.ratings
GROUP BY userId
ORDER BY avg_rating
HAVING AVG(rating) < 3.5
LIMIT 10;

-- 4. Иерархические запросы
-- 4.1 Подзапросы: достать любые 10 imbdId из links у которых средний рейтинг больше 3.5.
SELECT
imbdId
FROM links
JOIN ratings
    ON links.movieid=ratings.movieid
WHERE (
    SELECT
    AVG(rating) as avg_rating
    FROM ratings
    ) > 3.5
LIMIT 10;

-- 4.2 Common Table Expressions: посчитать средний рейтинг по пользователям, у которых более 10 оценок. Нужно подсчитать средний рейтинг по все пользователям, которые попали под условие - то есть в ответе должно быть одно число.
