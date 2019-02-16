CREATE DATABASE lab1;

CREATE TABLE department (
  id integer PRIMARY KEY,
  name VARCHAR
  );
  
CREATE TABLE employee (
  id integer PRIMARY KEY,
  department_id integer REFERENCES department(id),
  chief_doc_id integer,
  name VARCHAR,
  num_public integer
  );
  
INSERT INTO department values
('1', 'Therapy'),
('2', 'Neurology'),
('3', 'Cardiology'),
('4', 'Gastroenterology'),
('5', 'Hematology'),
('6', 'Oncology');

INSERT INTO employee values
('1', '1', '1', 'Kate', 4),
('2', '1', '1', 'Lidia', 2),
('3', '1', '1', 'Alexey', 1),
('4', '1', '2', 'Pier', 7),
('5', '1', '2', 'Aurel', 6),
('6', '1', '2', 'Klaudia', 1),
('7', '2', '3', 'Klaus', 12),
('8', '2', '3', 'Maria', 11),
('9', '2', '4', 'Kate', 10),
('10', '3', '5', 'Peter', 8),
('11', '3', '5', 'Sergey', 9),
('12', '3', '6', 'Olga', 12),
('13', '3', '6', 'Maria', 14),
('14', '4', '7', 'Irina', 2),
('15', '4', '7', 'Grit', 10),
('16', '4', '7', 'Vanessa', 16),
('17', '5', '8', 'Sascha', 21),
('18', '5', '8', 'Ben', 22),
('19', '6', '9', 'Jessy', 19),
('20', '6', '9', 'Ann', 18);



-- Вывести список названий департаментов и количество главных врачей в каждом из этих департаментов

WITH uniqe_chief_id as 
  (
  SELECT DISTINCT
    department_id,		
    chief_doc_id
  FROM employee
  )
SELECT 
	department.name,
  COUNT(chief_doc_id) as count_chief_id
FROM uniqe_chief_id
LEFT JOIN department
ON uniqe_chief_id.department_id=department.id
GROUP BY department.name;

-- Вывести список департаментов, в которых работают 3 и более сотрудников (id и название департамента, количество сотрудников)

SELECT 
	department.id,
  department.name,
	COUNT(employee.id) AS count_doc
FROM employee
LEFT JOIN department
	ON employee.department_id=department.id
GROUP BY 
	department.name,
  department.id
HAVING COUNT(employee.id)>=3
ORDER BY count_doc DESC;

-- Вывести список департаментов с максимальным количеством публикаций  (id и название департамента, количество публикаций)

WITH max_public AS (
SELECT 
	department_id,
  department.name,
  SUM(num_public) AS sum_public
FROM employee
LEFT JOIN department
	ON employee.department_id=department.id
GROUP BY 
	employee.department_id,
	department.name
)
SELECT 
	department_id,
  name,
  MAX(sum_public) OVER (partition by department_id) as max_pub
FROM max_public
ORDER BY sum_public DESC;

-- Вывести список сотрудников с минимальным количеством публикаций в своем департаменте (id и название департамента, имя сотрудника, количество публикаций)

SELECT department_id,
    department.name,
    min(num_public) AS min_pub
FROM employee
LEFT JOIN department
	ON employee.department_id=department.id
GROUP BY 	
    department_id,
    department.name
;

-- Вывести список департаментов и среднее количество публикаций для тех департаментов, в которых работает более одного главного врача (id и название департамента, среднее количество публикаций)

WITH avg_public AS (
SELECT 
	department_id,
  department.name,
  AVG(num_public) AS avg_public
FROM employee
LEFT JOIN department
	ON employee.department_id=department.id
GROUP BY 
	employee.department_id,
	department.name
)
SELECT 
	department_id,
  name,
  AVG(avg_public) OVER (partition by department_id) as avg_pub
FROM avg_public
ORDER BY avg_public DESC;
