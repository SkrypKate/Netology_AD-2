CREATE TABLE -- Создаем таблицу films с колонками title, film_id, country, box_office, release_date
films (
    title VARCHAR (500),
    film_id serial PRIMARY KEY NOT NULL,
    country VARCHAR (355),
    box_office serial,
    release_date TIMESTAMP
);

INSERT INTO films -- Добавляем в нее данные
VALUES 
('Bohemian Rhapsody',	568289,	'Great Britain',	817138799,	'2018-10-23'),
('X-Men',	886,	'USA',	296250053,	'2000-07-12'),
('The Lion King',	2360,	'USA',	987483777,	'1994-05-07'),
('The Lord of the Rings: The Return of the King',	3498,	'USA',	1119110941,	'2003-12-01'),
('Back to the Future',	476,	'USA',	381109762,	'1985-07-03');

SELECT * FROM films; -- Смотрим на результат



CREATE TABLE -- Создаем таблицу persons с колонками person_id, fio
persons (
    person_id serial PRIMARY KEY NOT NULL,
    fio VARCHAR (355)
);

INSERT INTO persons -- Добавляем в нее данные
VALUES 
(8210,	'Bryan Singer'),
(1142238,	'Lucy Boynton'),
(8213,	'Hugh Jackman'),
(7313,	'Roger Allers'),
(32383,	'Peter Jackson'),
(77429, 'Lea Thompson'),
(3514,	'Christopher Lloyd');

SELECT * FROM persons; -- Смотрим на результат


CREATE TABLE -- Создаем таблицу persons2content с колонками person_id, film_id, person_type
persons2content (
    person_id serial NOT NULL,
    film_id serial NOT NULL,
    person_type VARCHAR (355)
);

INSERT INTO persons2content -- Добавляем в нее данные
VALUES 
(8210,	568289,	'director'),
(1142238,	568289,	'actor'),
(8213,	886,	'actor'),
(7313,	2360,	'director'),
(32383,	3498,	'director'),
(77429,	476,	'actor'),
(3514,	476,	'actor');

SELECT * FROM persons2content; -- Смотрим на результат
