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

INSERT INTO lecturers VALUES
();

INSERT INTO students VALUES
();

INSERT INTO timetable VALUES
();

INSERT INTO classes VALUES
();


