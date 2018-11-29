Drop Table Wheelz
Drop Table Customer
Drop Table Warehouse
Drop Table Shipment
Drop Table PaymentMethod
Drop Table CreditCard


CREATE TABLE Customer(
id int,
name varchar(30),
email varchar(30),
Password varchar(30),
address varchar(30),
salary int,
);

CREATE TABLE CreditCard(
cname varchar(30),
cid int,
cardNumber int,
expirationDate DATE,
securityCode int,
Primary key (cardNumber),
--Foreign key (cid) Customer(id)
);

CREATE TABLE Warehouse(
Name varchar(30),
City varchar(30),
Province varchar(30),
primary key(name)
);

CREATE TABLE Wheelz(
id int,
name varchar(30),
price int,
primary Key(id)
);

CREATE TABLE PaymentMethod(
id int,
primary key(id)
);

INSERT INTO Wheelz (id, name, price) VALUES(123, 'Benz', 5555);

INSERT Customer VALUES (0, 'Calham Northway', 'cjnorthway@shaw.ca', '1234567890', '123456789 Dumb Street', 550000);
 
