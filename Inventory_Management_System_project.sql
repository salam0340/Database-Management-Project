DROP DATABASE IF EXISTS DB_Lab;
CREATE DATABASE DB_Lab;
USE DB_Lab;

create table Product(
product_id int primary key auto_increment,
product_name varchar(100),
product_category varchar(100),
supplier_id int,
foreign key (supplier_id) references Supplier(supplier_id)
);

insert into Product(product_name,product_category,supplier_id)
values
('Shirt','Cloths',1),
('Fan','Electronics',2),
('Puma','Footwear',3),
('Casio','Watches',4),
('Bluestone','Jewellery',5);
select * from Product;

create table Supplier(
supplier_id int primary key auto_increment,
supplier_name varchar(100),
supplier_contact varchar(100)
);

insert into Supplier(supplier_name,supplier_contact)
values
('Rahim','Sirajgonj sadar'),
('Karim','Belkuchi'),
('Nyeem','Ullapara'),
('Ridoy','Pabna'),
('Kabir','Enayetpur');
select * from Supplier;

create table Inventory(
product_id int,
stock_quantity int not null,
foreign key (product_id) references Product(product_id)
);

insert into Inventory(product_id,stock_quantity)
values
(1,5),
(2,7),
(3,10),
(4,20),
(5,8);
select * from Inventory;

create table Transaction(
transaction_id int primary key auto_increment,
product_id int,
transaction_type varchar(50),
transaction_quantity int,
transaction_date date,
foreign key (product_id) references Product(product_id)
);

insert into Transaction(product_id,transaction_type,transaction_quantity,transaction_date)
values
(1,'Purshase',4,'2024-10-11'),
(2,'Sales',6,'2024-10-15'),
(3,'Purshase',9,'2024-11-02'),
(4,'Sales',13,'2024-11-03'),
(5,'Purshase',5,'2024-11-04');
select * from Transaction;

-- This query generate an inventory report

select P.product_name,
		P.product_category,
		S.supplier_name,
		I.stock_quantity,
		T.transaction_type,
		T.transaction_quantity,
		T.transaction_date
from Product P
join Supplier S on P.supplier_id = S.supplier_id
join Inventory I on P.product_id = I.product_id
join Transaction T on P.product_id = T.product_id 



