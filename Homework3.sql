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

LIMIT 30;

-- ETL
-- Extract
-- Проверьте, что в директории data присутствует файл с ключевыми словами по фильмам

netology@NetologyAD-2:~$  ls $NETOLOGY_DATA/raw_data | grep keywords
                                                                                                                
-- zahodim pod postgres

 netology@NetologyAD-2:~$ sudo su -l postgres

 -- vipolnyem komandu sozdat table cherez PostgreSQL
 postgres@NetologyAD-2:~$ psql -U postgres -c "CREATE TABLE IF NOT EXISTS keywords (id SERIAL, tags VARCHAR(355));"

 -- копирования данных из файла в созданную вами таблицу
  postgres@NetologyAD-2:~$ psql -U postgres -c "copy keywords FROM '/home/netology
