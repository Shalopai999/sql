#create database seminar3;

#use seminar3;

create table SALESPEOPLE (
snum int primary key not null,
sname varchar(30) not null,
city varchar(30) not null,
comm float4 not null);

insert into SALESPEOPLE (snum, sname, city, comm) values
(1001, "Peel", "London", 0.12),
(1002, "Serres", "San Jose", 0.13),
(1004, "Motika", "London", 0.11),
(1007, "Rifkin", "Barcelona", 0.15),
(1003, "Axelrod", "New York", 0.10);

create table CUSTOMERS (
cnum int primary key not null,
cname varchar(30) not null,
city varchar(30) not null,
rating int not null,
snum int not null);

insert into CUSTOMERS (cnum, cname, city, rating, snum) values
(2001, "Hoffman", "London", 100, 1001),
(2002, "Giovanni", "Rome", 200, 1003),
(2003, "Liu", "SanJose", 200, 1002),
(2004, "Grass", "Berlin", 300, 1002),
(2006, "Clemens", "London", 100, 1001),
(2008, "Cisneros", "SanJose", 300, 1007),
(2007, "Pereira", "Rome", 100, 1004);

create table ORDERS (
onum int primary key not null,
amt float(6,2) not null,
odate varchar(30) not null,
cnum int not null,
snum int not null);

insert into ORDERS (onum, amt, odate, cnum, snum) values 
(3001, 18.69, "10.03.1990", 2008, 1007),
(3003, 767.19, "10.03.1990", 2001, 1001),
(3002, 1900.10, "10.03.1990", 2007, 1004),
(3005, 5160.45, "10.03.1990", 2003, 1002),
(3006, 1098.16, "10.03.1990", 2008, 1007),
(3009, 1713.23, "10.04.1990", 2002, 1003),
(3007, 75.75, "10.04.1990", 2004, 1002),
(3008, 4723.00, "10.05.1990", 2006, 1001),
(3010, 1309.95, "10.06.1990", 2004, 1002),
(3011, 9891.88, "10.06.1990", 2006, 1001);

set sql_safe_updates = 0;

select * from SALESPEOPLE;
select * from CUSTOMERS;
select * from ORDERS;

#drop table SALESPEOPLE;
#drop table CUSTOMERS;
#drop table ORDERS;

# 1. Напишите запрос, который вывел бы таблицу со столбцами в следующем порядке: city, sname, snum, comm. (к первой или второй таблице, используя SELECT)
select city, sname, snum, comm from SALESPEOPLE;

# 2. Напишите команду SELECT, которая вывела бы оценку(rating), сопровождаемую именем каждого заказчика в городе San Jose. (“заказчики”)
select cname, rating from CUSTOMERS where city = "SanJose";

# 3. Напишите запрос, который вывел бы значения snum всех продавцов из таблицы заказов без каких бы то ни было повторений. (уникальные значения в  “snum“ “Продавцы”)
select distinct snum from ORDERS;

# 4. Напишите запрос, который бы выбирал заказчиков, чьи имена начинаются с буквы G. Используется оператор "LIKE": (“заказчики”) https://dev.mysql.com/doc/refman/8.0/en/string-comparison-functions.html
select * from CUSTOMERS where cname like "G%";

# 5. Напишите запрос, который может дать вам все заказы со значениями суммы выше чем $1,000. (“Заказы”, “amt”  - сумма)
select * from ORDERS where amt > 1000;

# 6. Напишите запрос который выбрал бы наименьшую сумму заказа.(Из поля “amt” - сумма в таблице “Заказы” выбрать наименьшее значение)
select min(amt) from ORDERS;

# 7. Напишите запрос к таблице “Заказчики”, который может показать всех заказчиков, у которых рейтинг больше 100 и они находятся не в Риме.
select cname from CUSTOMERS where city != "Rome" and rating > 100;