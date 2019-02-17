-- Создаем базу данных
CREATE DATABASE courses;

-- Создаем таблицы в базе
CREATE TABLE lecturers (
id_lec 
full_name
experience
purview
cost_per_hour
);

CREATE TABLE students (
id_stud
full_name
tel
email
purview
);

CREATE TABLE timetable (
date
id_class
subject
id_lec
duration
);

CREATE TABLE classes (
date
id_class
id_lec
id_stud
cost
);
