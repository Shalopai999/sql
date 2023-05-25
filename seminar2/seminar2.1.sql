use seminar2;

create table orders (
orderid int primary key auto_increment,
employeeid varchar(10) not null,
amount float(6,2) not null,
orderstatus varchar(10) not null
);

insert into orders (employeeid, amount, orderstatus) values
("e03", 15.00, "OPEN"),
("e01", 25.50, "OPEN"),
("e05", 100.70, "CLOSED"),
("e02", 22.18, "OPEN"),
("e04", 9.50, "CANCELLED"),
("e04", 99.99, "OPEN");

select * from orders;

select orderid, orderstatus,
case when orderstatus = "OPEN" then "Order is in open state"
when orderstatus = "CLOSED" then "Order is closed"
when orderstatus = "CANCELLED" then "Order is cancelled"
else "none"
end as order_summary from orders;

set sql_safe_updates = 0;

#drop table orders;