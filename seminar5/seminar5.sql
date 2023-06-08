-- create database seminar5;

-- use seminar5;

CREATE TABLE  AUTO 
(       
	REGNUM VARCHAR(10) PRIMARY KEY, 
	MARK VARCHAR(10), 
	COLOR VARCHAR(15),
	RELEASEDT DATE, 
	PHONENUM VARCHAR(15),
    COST INT
);

 -- AUTO
INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM, COST)
VALUES(111114,'LADA', 'КРАСНЫЙ', date'2008-01-01', '9152222221', 15650);


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM, COST)
VALUES(111115,'VOLVO', 'КРАСНЫЙ', date'2013-01-01', '9173333334', 21750);


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM, COST)
VALUES(111116,'BMW', 'СИНИЙ', date'2015-01-01', '9173333334', 56900);


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM, COST)
VALUES(111121,'AUDI', 'СИНИЙ', date'2009-01-01', '9173333332', 49800);


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM, COST)
VALUES(111122,'AUDI', 'СИНИЙ', date'2011-01-01', '9213333336', 89450);


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM, COST)
VALUES(111113,'BMW', 'ЗЕЛЕНЫЙ', date'2007-01-01', '9214444444', 29990);


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM, COST)
VALUES(111126,'LADA', 'ЗЕЛЕНЫЙ', date'2005-01-01', null, 15500);


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM, COST)
VALUES(111117,'BMW', 'СИНИЙ', date'2005-01-01', null, 23700);


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM, COST)
VALUES(111119,'LADA', 'СИНИЙ', date'2017-01-01', 9213333331, 9990);


select * from AUTO;

-- 1. Создайте представление, в которое попадут автомобили 
-- стоимостью до 25 000 долларов 

CREATE VIEW CheapCars1 
AS SELECT * 
FROM AUTO 
WHERE COST<25000;

select * from CheapCars1;

-- 2. Изменить в существующем представлении порог для стоимости: 
-- пусть цена будет до 30 000 долларов 
-- (используя оператор ALTER VIEW) 

ALTER VIEW CheapCars1 
AS SELECT * FROM AUTO
WHERE Cost<30000;

select * from CheapCars1;

-- 3. Создайте представление, в котором будут только 
-- автомобили марки “Шкода” и “Ауди” (аналогично)

CREATE VIEW CheapCars2 
AS SELECT * 
FROM AUTO 
WHERE MARK = "AUDI" or MARK = "BMW";

select * from CheapCars2;