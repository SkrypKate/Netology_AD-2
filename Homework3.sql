SELECT 'ФИО: Скрыпникова Екатерина';

-- Оконные функции
SELECT
  userId, movieId, rating,
  (rating - MIN(rating) OVER (PARTITION BY userId))/(MAX(rating) OVER (PARTITION BY userId) - MIN(rating) OVER (PARTITION BY userId)) as normed_rating,
  AVG(rating) OVER (PARTITION BY userId) as avg_rating
FROM (
    SELECT DISTINCT
        userId, movieId, rating
    FROM ratings
    WHERE userId <>1 LIMIT 1000
) as sample

LIMIT 30;


