#create database seminar3;

#use seminar3;

create table employee (
id int primary key not null auto_increment,
name varchar(30) not null,
surname varchar(30) not null,
specialty varchar(30) not null,
seniority varchar(30) not null,
salary int not null,
age int not null);

insert into employee (name, surname, specialty, seniority, salary, age) values
("Вася", "Васькин", "начальник", 40, 100000, 60),
("Петя", "Петькин", "начальник", 8, 70000, 30),
("Катя", "Каткина", "инженер", 2, 70000, 25),
("Саша", "Сашкин", "инженер", 12, 50000, 35),
("Иван", "Иванов", "рабочий", 40, 30000, 59),
("Петр", "Петров", "рабочий", 20, 25000, 40),
("Сидор", "Сидоров", "рабочий", 10, 20000, 35),
("Антон", "Антонов", "рабочий", 8, 19000, 28),
("Юра", "Юркин", "рабочий", 5, 15000, 25),
("Максим", "Воронин", "рабочий", 2, 11000, 22),
("Юра", "Галкин", "рабочий", 3, 12000, 24),
("Люся", "Люськина", "уборщик", 10, 10000, 49);

set sql_safe_updates = 0;

select * from employee;

#drop table employee;

# 1. Отсортируйте поле “зарплата” в порядке убывания и возрастания
select * from employee order by salary;
select * from employee order by salary desc;

# 2. Отсортируйте по возрастанию поле “Зарплата” и выведите 5 строк с наибольшей заработной платой (возможен подзапрос)
select * from (select * from employee order by salary desc limit 5) T order by salary;

# 3. Выполните группировку всех сотрудников по специальности , суммарная зарплата которых превышает 100000
select specialty, count(*) as specialtycount 
from employee
group by specialty
having salary > 10000;