CREATE TABLE employees (
   id serial not null,
   employee_name varchar(50) not null,
   PRIMARY KEY (id)
   );


INSERT INTO employees (employee_name)  
VALUES ('viktor'), ('nadezhda'), ('vlada'), ('veta')

SELECT * FROM employees

CREATE TABLE USERS(
  Id SERIAL PRIMARY KEY,
  user_name varchar(50) not null,
  level_id INT,
  skill INT
   );
   
INSERT INTO users (user_name,level_id,skill)  
VALUES ('Anton', 1, 900000), ('Denis', 3, 4000),
('Petr', 2, 50000), ('Andrey', 4 ,20),('Olga', 1, 600000),('Anna', 1, 1600000)

SELECT * FROM users

CREATE TABLE Levels(
  Id SERIAL PRIMARY KEY,
  level_name varchar(50) not null
   );
   
   INSERT INTO Levels (Level_name)  
VALUES ('admin'), ('power_user'), ('user'), ('guest')

SELECT * FROM levels
--1. Отобрать из таблицы user всех пользователей, у которых level_id=1, skill > 799000 и в имени встречается буква а
SELECT * FROM users
WHERE level_id = 1        
AND skill > 799000     
AND user_name LIKE '%a%';

SELECT * FROM users

--2. Удалить всех пользователей, у которых skill меньше 100000
DELETE FROM users
WHERE skill < 100000

SELECT * FROM users

DROP TABLE users

--3. Вывести все данные из таблицы user в порядке убывания по полю skill
SELECT * FROM users
ORDER BY skill DESC

--4. Добавить в таблицу user нового пользователя по имени Oleg, с уровнем 4 и skill =10								
INSERT INTO users (user_name,level_id,skill)  
VALUES ('Олег', 4, 10)

SELECT * FROM users 

--5. Обновить данные в таблице user -  для пользователей с level_id меньше 2 проставить skill 2000000
UPDATE users
SET skill = 2000000
WHERE  level_id < 2

SELECT * FROM users 

--6. Выбрать user_name всех пользователей уровня admin используя подзапрос
SELECT user_name FROM users
WHERE level_id = (SELECT id FROM levels WHERE level_name = 'admin')

--7. Выбрать user_name всех пользователей уровня admin используя join
SELECT users.user_name
FROM users
JOIN levels ON users.level_id = level_id
WHERE levels.level_name = 'admin'

SELECT * FROM users 
