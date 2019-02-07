SELECT 'ФИО: Скрыпникова Екатерина';

-- Оконные функции
SELECT
  userId, movieId, rating,
  (rating - MIN(rating) OVER (PARTITION BY userId))/(MAX(rating) OVER (PARTITION BY userId) - MIN(rating) OVER
(PARTITION BY userId)) as normed_rating,
  AVG(rating) OVER (PARTITION BY userId) as avg_rating
FROM (
    SELECT DISTINCT
        userId, movieId, rating
    FROM ratings
    WHERE userId <>1 LIMIT 1000
) as sample
GROUP BY userid
LIMIT 30;

-- ETL
-- Extract
-- Проверьте, что в директории data присутствует файл с ключевыми словами по фильмам
netology@NetologyAD-2:~$  ls $NETOLOGY_DATA/raw_data | grep keywords

-- Заходим под пользователем postgres
netology@NetologyAD-2:~$ sudo su -l postgres

-- Выполняем команду по созданию таблицы через PostgreSQL
postgres@NetologyAD-2:~$ psql -U postgres -c "CREATE TABLE IF NOT EXISTS keywords (id SERIAL, tags TEXT);"

-- Копируем данные из файла в созданную таблицу
postgres@NetologyAD-2:~$ psql -U postgres -c "copy keywords FROM '/usr/local/share/netology/raw_data/keywords.csv' delimiter ',' CSV HEADER"

-- Проверяем, что в таблице есть записи
SELECT COUNT(*) FROM keywords;

-- Transform
-- Запрос 1,2
WITH top_rated as (
 SELECT
 movieid, 
 AVG(rating) OVER (PARTITION BY userId) as avg_rating
 FROM public.ratings
 GROUP BY movieid 
 HAVING COUNT(userid) > 50 
 ORDER BY movieid ASC, avg_rating DESC
 LIMIT 150
)
 JOIN keywords
 ON top_rated.movieid=keywords.movieid
 LIMIT 20;
 
 
 
 
 
