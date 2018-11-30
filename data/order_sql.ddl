Drop Table Wheelz
Drop Table Customer
Drop Table Warehouse
Drop Table Shipment
Drop Table PaymentMethod
Drop Table CreditCard
DROP TABLE Wheelz;
DROP TABLE Baller;
DROP TABLE Warehouse;
DROP TABLE Shipment;
DROP TABLE PaymentMethod;
DROP TABLE CreditCard;


CREATE TABLE Customer(
CREATE TABLE Baller(
id int,
name varchar(30),
email varchar(30),
Password varchar(30),
address varchar(30),
salary int,
PRIMARY KEY (id)
);

CREATE TABLE CreditCard(
cname varchar(30),	
cid int,
cardNumber int,
expirationDate DATE,
securityCode int,
PRIMARY KEY (cardNumber),
FOREIGN KEY (cid) REFERENCES Baller(id)
);

CREATE TABLE Warehouse(
Name varchar(30),
name varchar(30),
City varchar(30),
Province varchar(30),
PRIMARY KEY(name)
);

CREATE TABLE Wheelz(
id int,
name varchar(30),
price int,
primary Key(id)
imageSrc varchar(100),
description varchar(200),
PRIMARY KEY(id)
);

CREATE TABLE PaymentMethod(
id int,
PRIMARY KEY(id)
);
CREATE TABLE shipment(
Sid integer,
Cid integer,
Name varchar(50),
Address varchar(50),
PRIMARY KEY(sid),
FOREIGN KEY(cid) REFERENCES customer(cid),
FOREIGN KEY(name) REFERENCES warehouse(name)
);

Create table paypal(
confimationNum integer,
Email varchar(50),
Password varchar (30),
FOREIGN KEY(confimationNum) REFERENCES paymentMethod(confimationNum),
UNIQUE(email)
);
  
INSERT INTO Wheelz (id, name, price, imageSrc, description) VALUES(1, 'Benz', 5555, '../../assets/whiteBenzCoupe.jpeg', 'The Mlady benz is the finest of pickup tools with incredible looks and speed, you will be picking up your desired person faster than you can say..');

INSERT INTO Wheelz (id, name, price, imageSrc, description) VALUES(2, 'Bugatto', 5555, '../../assets/redBugatti.jpg', 'This fast, furious, and incredibly economical vehicle we have dubbed the BROGATTI is the pinnacle of performance, a measurement of 10/10 on the scum scale was registered with this puppy!');

INSERT INTO Wheelz (id, name, price, imageSrc, description) VALUES(3, 'Benz', 5555, '../../assets/whiteBenzCoupe.jpeg', 'The Mlady benz is the finest of pickup tools with incredible looks and speed, you will be picking up your desired person faster than you can say..');

INSERT INTO Wheelz (id, name, price, imageSrc, description) VALUES(4, 'Bugatto', 5555, '../../assets/redBugatti.jpg', 'This fast, furious, and incredibly economical vehicle we have dubbed the BROGATTI is the pinnacle of performance, a measurement of 10/10 on the scum scale was registered with this puppy!');

INSERT INTO Wheelz (id, name, price, imageSrc, description) VALUES(5, 'Benz', 5555, '../../assets/whiteBenzCoupe.jpeg', 'The Mlady benz is the finest of pickup tools with incredible looks and speed, you will be picking up your desired person faster than you can say..');

INSERT INTO Wheelz (id, name, price, imageSrc, description) VALUES(6, 'Bugatto', 5555, '../../assets/redBugatti.jpg', 'This fast, furious, and incredibly economical vehicle we have dubbed the BROGATTI is the pinnacle of performance, a measurement of 10/10 on the scum scale was registered with this puppy!');

INSERT INTO Wheelz (id, name, price, imageSrc, description) VALUES(7, 'Benz', 5555, '../../assets/whiteBenzCoupe.jpeg', 'The Mlady benz is the finest of pickup tools with incredible looks and speed, you will be picking up your desired person faster than you can say..');

INSERT INTO Wheelz (id, name, price, imageSrc, description) VALUES(8, 'Bugatto', 5555, '../../assets/redBugatti.jpg', 'This fast, furious, and incredibly economical vehicle we have dubbed the BROGATTI is the pinnacle of performance, a measurement of 10/10 on the scum scale was registered with this puppy!');

INSERT INTO Wheelz (id, name, price, imageSrc, description) VALUES(9, 'Benz', 5555, '../../assets/whiteBenzCoupe.jpeg', 'The Mlady benz is the finest of pickup tools with incredible looks and speed, you will be picking up your desired person faster than you can say..');

INSERT INTO Wheelz (id, name, price, imageSrc, description) VALUES(10, 'Bugatto', 5555, '../../assets/redBugatti.jpg', 'This fast, furious, and incredibly economical vehicle we have dubbed the BROGATTI is the pinnacle of performance, a measurement of 10/10 on the scum scale was registered with this puppy!');

DELETE * FROM Baller;

INSERT Customer VALUES (0, 'Calham Northway', 'cjnorthway@shaw.ca', '1234567890', '123456789 Dumb Street', 550000);
 
INSERT INTO Baller (id, name, email, password, address, salary) 
VALUES (0, 'Calham Northway', 'cjnorthway@shaw.ca', 'myword', '123456789 Dumb Street', 550000);