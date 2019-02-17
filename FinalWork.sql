-- Создаем базу данных
CREATE DATABASE courses;

-- Создаем таблицы в базе
CREATE TABLE lecturers (
id_lec INTEGER PRIMARY KEY,
full_name VARCHAR(150),
experience INTEGER,          
purview VARCHAR(150),
cost_per_hour INTEGER
);

CREATE TABLE students (
id_stud INTEGER PRIMARY KEY,
full_name VARCHAR(150),
tel INTEGER,
email VARCHAR(150),
purview VARCHAR(150)
);

CREATE TABLE timetable (  -- выбрать primary key
date TIMESTAMP, 
id_class INTEGER,
subject VARCHAR(500),
purview VARCHAR(150),
id_lec INTEGER,
duration INTEGER
);

CREATE TABLE classes (
date TIMESTAMP,
id_class INTEGER PRIMARY KEY,
id_lec INTEGER,
id_stud INTEGER,
cost INTEGER
);

-- Добавляем данные в таблицы
INSERT INTO lecturers VALUES
();

INSERT INTO students VALUES
();

INSERT INTO timetable VALUES
();

INSERT INTO classes VALUES
();

-- Запросы
-- 1. Вычислить нагрузку каждого преподавателя в часах в текущем месяце

-- 2. Узнать количество студентов, записавшихся на конкретное мероприятие/в конкретный день

-- 3. Узнать, сколько денег мы получим от студентов за определенное занятие/или в месяц

-- 4. Сколько нужно заплатить каждому преподавателю за занятия в определенном месяце

-- 5. Вывести Топ-5 студентов, которые посетили больше всего мероприятий

-- 6. Какая предметная область наиболее интересна студентам/мероприятия какой предметной области посетило наибольшее количество студентов

-- 7. Узнать в какие даты проходят мероприятия одного лектора

-- 8. Узнать расписание определенного студента

-- 9. 









