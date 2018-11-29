DROP TABLE Wheelz;
DROP TABLE Dude;
DROP TABLE Baller;
DROP TABLE Warehouse;
DROP TABLE Shipment;
DROP TABLE PaymentMethod;
DROP TABLE CreditCard;


CREATE TABLE Baller(
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

INSERT INTO Baller (id, name, email, password, address, salary) 
VALUES (0, 'Calham Northway', 'cjnorthway@shaw.ca', 'myword', '123456789 Dumb Street', 550000);