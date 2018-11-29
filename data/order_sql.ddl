DROP TABLE Wheelz;
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
name varchar(30),
City varchar(30),
Province varchar(30),
PRIMARY PRIMARY(name)
);

CREATE TABLE Wheelz(
id int,
name varchar(30),
price int,
imageSrc varchar(100),
PRIMARY KEY(id)
);

CREATE TABLE PaymentMethod(
id int,
PRIMARY KEY(id)
);

INSERT INTO Wheelz (id, name, price, imageSrc) VALUES(123, 'Benz', 5555, '../../assets/whiteBenzCoupe.jpeg');

INSERT INTO Wheelz (id, name, price, imageSrc) VALUES(321, 'Bugatto', 5555, '../../assets/redBugatti.jpeg');

DELETE * FROM Baller;

INSERT INTO Baller (id, name, email, password, address, salary) 
VALUES (0, 'Calham Northway', 'cjnorthway@shaw.ca', 'myword', '123456789 Dumb Street', 550000);