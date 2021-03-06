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

CREATE TABLE timetable (
date DATE, 
id_class INTEGER PRIMARY KEY,
subject VARCHAR(500),
purview VARCHAR(150),
id_lec INTEGER,
duration INTEGER
);

CREATE TABLE classes (
date DATE,
id_class INTEGER,
id_stud INTEGER,
cost INTEGER
);

-- Добавляем данные в таблицы
INSERT INTO lecturers VALUES
('1','Куравлева Марина Александровна','10','Бухучет','1500'),
('2','Бабаева Мария Александровна','12','Бухучет','1700'),
('3','Радченко Галина Дмитриевна','7','Бухучет','1500'),
('4','Гумбальд Мария Алексеевна','29','Бухучет','2700'),
('5','Петрова Людмила Геннадьевна','10','Бухучет','1200'),
('6','Караваева Светлана Викторовна','19','Кадры','2300'),
('7','Брадько Галина Васильевна','12','Кадры','1900'),
('8','Самоварова Светлана Юрьевна','16','Кадры','2200'),
('9','Петровалова Екатерина Александровна','12','Кадры','1500'),
('10','Руденко Петр Петрович','10','Кадры','2500'),
('11','Сумбальская Раиса Генриховна','25','Бухучет','2900'),
('12','Александрова Марина Сергеевна','17','Бухучет','2000'),
('13','Стенописова Любовь Александровна','10','Бухучет','1500'),
('14','Кривосевич Инна Львовна','15','Бухучет','2200'),
('15','Лебедева Марина Александровна','10','Бухучет','1500'),
('16','Буговская Маргарита Кирилловна','13','Бухучет','2300'),
('17','Иванец Геннадий Петрович','10','Бухучет','1600'),
('18','Кравченко Сергей Юрьевич','12','Юриспруденция','2900'),
('19','Литовский Игорь Зиновьевич','21','Юриспруденция','3700'),
('20','Назаров Игорь Васильевич','11','Юриспруденция','2500'),
('21','Магомедова Зульфия Рашитовна','13','Юриспруденция','2100'),
('22','Опальская Ольга Сергеевна','7','Бухучет','1700'),
('23','Заславская Инесса Львовна','15','Бухучет','2500'),
('24','Судова Карина Дмитриевна','9','Бухучет','1400');

INSERT INTO students VALUES
('1','Митрохин Сергей Сергеевич','2334547','mitr87@mail.ru','Юриспруденция'),
('2','Котов Виталий Станиславович','7832243','kotov_vs@tls.ru','Юриспруденция'),
('3','Суханова Полина Семеновна','4932044','suhanovaps@edol.ru','Бухучет'),
('4','Дьячкова Наталья Максимовна','5350927','danata@mail.ru','Бухучет'),
('5','Киселева Оксана Андреевна','1940872','kisel@rambler.ru','Бухучет'),
('6','Брагина Варвара Александровна','9048155','bragina_va@jula.ru','Бухучет'),
('7','Евсеева Людмила Борисовна','2459024','evseeva.lb@dart.ru','Бухучет'),
('8','Устинова Татьяна Георгиевна','2426454','ustinovatanja@edol.ru','Бухучет'),
('9','Мамонтова Евгения Михайловна','9210300','mamontenok@ya.ru','Бухучет'),
('10','Блинова Юлия Львовна','9656453','blinovayl@marut.ru','Бухучет'),
('11','Авдеева Людмила Ипатовна','6315498','avdeeva@edol.ru','Бухучет'),
('12','Гендрикова Оксана Семеновна','3244216','gendrikovaos@detromed.ru','Кадры'),
('13','Введенская Инна Владимировна','9792438','vvedenskaya@sandul.ru','Юриспруденция'),
('14','Колосовская Надежда Дмитриевна','2137855','kolosovskaya@polet.ru','Бухучет'),
('15','Кравец Игорь Петрович','2144322','kravets@remont.com','Юриспруденция'),
('16','Шпигель Алиса Васильевна','6578955','shpigel@remont.com','Юриспруденция'),
('17','Сахонова Яна Матвеевна','1232133','sahonova@edol.ru','Кадры'),
('18','Якушева Полина Владимировна','6561678','yakusheva.pv@top.ru','Кадры'),
('19','Зимина Ирина Петровна','9110345','zimina.ip@dart.ru','Кадры'),
('20','Никонов Тимофей Сергеевич','3678765','nikonov@tls.ru','Юриспруденция'),
('21','Орехова Анна Юрьевна','7654434','orehova@tls.ru','Кадры'),
('22','Громова Наталья Тимофеевна','8765543','gromova@edol.ru','Кадры'),
('23','Сысоева Александра Юрьевна','4569876','sysoeva@polet.ru','Кадры'),
('24','Шарапова Надежда Романовна','6453423','sharapova@polet.ru','Бухучет'),
('25','Фельдман Валентина Денисовна','2398765','feldman@sandul.ru','Бухучет'),
('26','Гусева Любовь Тимуровна','9874334','guseva@retro.ru','Бухучет'),
('27','Тетерина Елена Олеговна','6245767','teterina@retro.ru','Бухучет'),
('28','Петрова Валентина Викторовна','2098765','petrova@retro.ru','Бухучет'),
('29','Воробьев Владислав Александрович','2898760','vorobjeva@retro.ru','Юриспруденция'),
('30','Беспалова Таисия Львовна','8754234',',bespalova@retro.ru','Кадры'),
('31','Романов Евгений Сергеевич','1887653','romanov@tls.ru','Юриспруденция'),
('32','Гуляева Татьяна Васильевна','8742437','gulyaeva@tls.ru','Кадры'),
('33','Муравьева Ольга Степановна','3543145','muravjeva@kant.ru','Юриспруденция'),
('34','Терентьева Елизавета Аркадиевна','2994659','terentjeva@kant.ru','Бухучет'),
('35','Крылова Дарья Олеговна','7654346','krylova@kant.ru','Бухучет'),
('36','Дымова Татьяна Максимовна','8745357','dymova@mainy.ru','Бухучет'),
('37','Елисеева Полина Петровна','3584768','eliseeva@mainy.ru','Бухучет'),
('38','Братусь Галина Сергеевна','3489589','bratus.gs@mainy.ru','Бухучет'),
('39','Анисимова Марина Романовна','5686486','anisimova@farty.ru','Бухучет'),
('40','Жучкова Татьяна Анатольевна','5675688','dguchkova@farty.ru','Бухучет'),
('41','Ходкевич Таисия Марьяновна','4675684','hodkevich@top.ru','Юриспруденция'),
('42','Перфильева Ада Леопольдовна','8014731','perfileva@top.ru','Бухучет'),
('43','Максимова Рената Вадимовна','4710749','maksimova@wart.com','Бухучет'),
('44','Темкина Ольга Матвеевна','1347043','temkina@wart.com','Бухучет'),
('45','Варенцова Анна Константиновна','1094737','varemtsova@dario.ru','Юриспруденция'),
('46','Красовский Эдуард Ефимович','4502350','krasovskij@dario.ru','Юриспруденция'),
('47','Судленкова Ольга Леонидовна','1743055','sudlenkova@dario.ru','Юриспруденция'),
('48','Говорова Алла Васильевна','9347057','govorova@dario.ru','Юриспруденция'),
('49','Лихачева Елизавета Юрьевна','1540987','lihacheva@terra.ru','Бухучет'),
('50','Барабанова Виктория Владимировна','6327865','barabanova@terra.ru','Бухучет'),
('51','Свиридова Елена Михайловна','7543759','sviridova@terra.ru','Бухучет'),
('52','Воевода Алиса Сергеевна','7027904','voevoda@top.ru','Бухучет'),
('53','Бекетова Екатерина Борисовна','8634387','beketova@top.ru','Бухучет'),
('54','Трифонов Сергей Юрьевич','4553656','trifonov@kant.ru','Юриспруденция'),
('55','Заболодский Максим Денисович','6732535','zabolodskij@polly.ru','Юриспруденция'),
('56','Павленко Андрей Сергеевич','4577347','pavlenko@polly.ru','Юриспруденция'),
('57','Щипкова Анна Константиновна','5037857','shypkova@polly.ru','Бухучет'),
('58','Шутова Ольга Сергеевна','9483258','shutova@polly.ru','Бухучет'),
('59','Лазарева Мария Владимировна','8329443','lazareva@polly.ru','Бухучет'),
('60','Пузырь Юрий Петрович','2043704','puzyr@candy.ru','Юриспруденция'),
('61','Жаров Максим Генрихович','3245869','garov@candy.ru','Юриспруденция'),
('62','Иваненко Надежда Георгиевна','1340985','ivanenko@coltin.ru','Юриспруденция'),
('63','Харитонов Кирилл Сергеевич','2344435','haritonov@coltin.ru','Юриспруденция'),
('64','Бекетова Галина Алексеевна','3208843','beketova@coltin.ru','Юриспруденция'),
('65','Васильева Ирина Владимировна','6345793','vasiljeva@candy.ru','Юриспруденция'),
('66','Алтуфьева Ирина Юрьевна','9234054','altufjeva@candy.ru','Юриспруденция'),
('67','Тимченко Анна Алексеевна','1343580','timchenko@koltin.ru','Юриспруденция');

INSERT INTO timetable VALUES
('2019/02/25','1242','Учет операций по договорам в валюте и условных единицах. Бухгалтерский и налоговый учет','Бухучет','1','4'),
('2019/02/25','1243','Зарплатные начисления от А до Я: НДФЛ и страховые взносы','Бухучет','2','5'),
('2019/02/26','1244','Трудовые книжки: готовимся к переходу на электронную версию, применяем бумажную','Кадры','6','3'),
('2019/02/26','1245','ИП: все об отчетах за 2018 год. Риски и возможности статуса индивидуального предпринимателя','Бухучет','3','4'),
('2019/02/27','1246','НДС: правила вычитания. Условия применения вычетов в различных ситуациях, возможные претензии и характерные нарушения','Бухучет','1','3'),
('2019/03/06','1247','Практика применения СПС КонсультантПлюс в сфере договоров и обязательств','Юриспруденция','20','2'),
('2019/03/11','1248','Все о недвижимости: аренда, регистрация прав, налоговые вычеты и многие другие вопросы','Юриспруденция','18','2'),
('2019/03/26','1249','Договорная работа на предприятии: разбор типичных ошибок, совершаемых при заключении договоров','Юриспруденция','21','7'),
('2019/03/28','1250','Самовольные постройки: легализация, снос, приведение в соответствие с установленными требованиями','Юриспруденция','18','3'),
('2019/03/01','1251','Основы кадрового делопроизводства. Что изменилось в 2019 году','Кадры','8','4'),
('2019/03/04','1252','Трудовые отношения с генеральным директором','Кадры','7','3'),
('2019/03/05','1253','Проверки ГИТ: что проверяют в первую очередь','Кадры','6','2'),
('2019/03/11','1254','Аудит кадровой документации','Кадры','6','3'),
('2019/03/12','1255','Заработная плата с точки зрения трудового законодательства','Кадры','10','4'),
('2019/03/25','1256','УСН: главные изменения 2019 года. Подготовка отчета за 2018 год','Бухучет','16','6');

INSERT INTO classes VALUES
('2019/02/25','1242','7','8000'),
('2019/02/25','1242','6','8000'),
('2019/02/25','1242','24','8000'),
('2019/02/25','1242','25','8000'),
('2019/02/25','1242','26','6500'),
('2019/02/25','1242','27','6500'),
('2019/02/25','1242','28','6500'),
('2019/02/25','1242','52','8000'),
('2019/02/25','1242','53','8000'),
('2019/02/25','1243','6','10200'),
('2019/02/25','1243','24','10200'),
('2019/02/25','1243','57','9000'),
('2019/02/25','1243','58','9000'),
('2019/02/25','1243','59','9000'),
('2019/02/25','1243','39','10200'),
('2019/02/25','1243','52','10200'),
('2019/02/25','1243','40','10200'),
('2019/02/25','1243','49','10200'),
('2019/02/26','1245','49','8000'),
('2019/02/26','1245','6','8000'),
('2019/02/26','1245','52','8000'),
('2019/02/26','1245','53','8000'),
('2019/03/01','1251','17','8000'),
('2019/03/01','1251','18','8000'),
('2019/03/01','1251','19','8000'),
('2019/03/11','1248','67','5000'),
('2019/03/11','1248','54','5000'),
('2019/03/11','1248','31','5000'),
('2019/03/11','1248','60','3500'),
('2019/03/11','1248','61','3500'),
('2019/03/11','1248','62','3500'),
('2019/03/11','1248','63','3500'),
('2019/03/11','1248','64','3500'),
('2019/03/11','1248','65','3500');

SELECT * FROM lecturers;
SELECT * FROM students;
SELECT * FROM timetable;
SELECT * FROM classes;

-- Запросы

-- 1. Узнать количество студентов, записавшихся на мероприятие 1248 "Все о недвижимости: аренда, регистрация прав, налоговые вычеты и многие другие вопросы"
SELECT
COUNT(id_stud) as stud_count
FROM classes
WHERE id_class=1248;

-- 2. Вывести все мероприятий марта (дата, номер, название, лектор)
SELECT 
      timetable.date,
      timetable.id_class,
      subject,
      lecturers.full_name
FROM timetable
LEFT JOIN lecturers
ON timetable.id_lec=lecturers.id_lec
WHERE date >= '2019/03/01'
AND date <='2019/03/31'
ORDER BY date ASC;

-- 3. Вычислить нагрузку каждого преподавателя в часах в текущем месяце, выстроить по алфавиту. Вывести ID преподавателя, имя проподавателя, количество часов.
SELECT
      lecturers.id_lec,
      lecturers.full_name,
      SUM(duration) as num_hours
FROM lecturers
LEFT JOIN timetable
ON lecturers.id_lec=timetable.id_lec
GROUP BY 
      lecturers.id_lec,
      lecturers.full_name
ORDER BY full_name ASC;

-- 4. Узнать, сколько денег мы получим от студентов за каждое занятие. Вывести дату, ID занятия, название мероприятия, сумма. Вывести в порядке убывания суммы.
SELECT
      timetable.date,
      timetable.id_class,
      timetable.subject,
      SUM(cost) as sum_monney
FROM timetable
LEFT JOIN classes
ON classes.id_class=timetable.id_class
GROUP BY 
      timetable.date,
      timetable.id_class,
      timetable.subject
HAVING SUM(cost) > 0
ORDER BY SUM(cost) DESC;

-- 5. Сколько нужно заплатить каждому преподавателю за занятие. Вывести дату, ID занятия, ФИО преподавателя, сумму.
SELECT
      timetable.date,
      timetable.id_class,
      lecturers.full_name,
      sum(lecturers.cost_per_hour*timetable.duration) as abc
FROM timetable
LEFT JOIN lecturers
ON timetable.id_lec=lecturers.id_lec
GROUP BY 
      timetable.date,
      timetable.id_class,
      lecturers.full_name
ORDER BY timetable.date ASC;

-- 6. Кому из преподавателей заплатили больше всего за проведенные занятия. Вывести ТОП-5 (ФИО преподавателя, сумму). 
SELECT
      lecturers.full_name,
      sum(lecturers.cost_per_hour*timetable.duration) as cost_lec
FROM timetable
LEFT JOIN lecturers
ON timetable.id_lec=lecturers.id_lec
GROUP BY 
      lecturers.full_name
ORDER BY sum(lecturers.cost_per_hour*timetable.duration) DESC
LIMIT 5;

-- 7. Какая предметная область самая высокооплачиваемая (бухучет, кадры или юриспруденция)? Вывести название предметной области и среднюю стоимость часа по каждой области.
SELECT
      purview,
      round(avg(cost_per_hour)) as avg_cost
FROM lecturers
GROUP BY purview
ORDER BY avg(cost_per_hour) DESC;

-- 8. Какая предметная область наиболее интересна студентам/мероприятия какой предметной области посетило наибольшее количество студентов. Вывести предметную область и количество студентов
SELECT
     purview,
     count(id_stud) as count_stud
FROM classes
LEFT JOIN timetable
ON classes.id_class=timetable.id_class
GROUP BY purview
ORDER BY count(id_stud) DESC;           
                
-- 9. Найти самого опытного преподавателя в каждой предметной области. Вывести название предметной области, ФИО преподавателя и стаж.
WITH max_experience as (
SELECT
      purview,
	full_name,
      max(experience) as max_exp
FROM lecturers
GROUP BY purview,
	full_name
)	
SELECT * 
 FROM max_experience
 WHERE max_exp = (SELECT MAX(max_exp) FROM max_experience);	
          

-- 10. Вывести Топ-5 студентов, которые посетили больше всего мероприятий (ID и ФИО студента, количество мероприятий).
SELECT
      students.id_stud,
      students.full_name,
	count(id_class) as count_class
FROM students
LEFT JOIN classes
ON students.id_stud=classes.id_stud
GROUP BY
         students.id_stud,
      students.full_name
ORDER BY count(id_class) DESC
LIMIT 5;
