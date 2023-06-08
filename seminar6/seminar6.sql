-- create database seminar6;
-- use seminar6;

-- 1. Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов. Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

-- drop procedure time;

/* delimiter $$
create procedure time(seconds int)
begin
	declare days int default 0;
	declare hours int default 0;
	declare minutes int default 0;

	set days = seconds / 60 / 60 / 24;
	set hours = (seconds / 60 / 60) - (days * 24);
	set minutes = (seconds / 60) - (hours * 60) - ((days * 24) * 60);
	set seconds = seconds % 60;

select days, hours, minutes, seconds;
end $$
delimiter ;

call time(123456); */

-- 2. Выведите только четные числа от 1 до 10. Пример: 2,4,6,8,10

drop procedure time2;

delimiter $$
create procedure time2()
begin
	declare n int default 0;
    declare res varchar(100) default " ";
		while n < 10 do
		set n = n + 2;
		set res = concat(res, " ", n);
		end while;
    select res;
end $$
delimiter ;

call time2();
