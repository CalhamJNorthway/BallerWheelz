DROP TABLE Wheelz;
DROP TABLE Baller;
DROP TABLE Warehouse;
DROP TABLE Shipment;
DROP TABLE CreditCard;



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
cardNumber bigint NOT NULL CHECK (cardNumber  BETWEEN 1000000000000000 and 9999999999999999),
expirationDate varchar(5),
securityCode int,
PRIMARY KEY (cardNumber),
FOREIGN KEY (cid) REFERENCES Baller(id)
);

CREATE TABLE Warehouse(
name varchar(30),
City varchar(30),
Province varchar(30),
PRIMARY KEY(name)
);

CREATE TABLE Wheelz(
id int,
name varchar(30),
price int,
colour varchar(30),
topSpeed int,
accelerationTime int,
imageSrc varchar(100),
description varchar(200),
PRIMARY KEY(id)
);


CREATE TABLE Shipment(
sid int,
cid int,
name varchar(30),
address varchar(30),
PRIMARY KEY(sid),
FOREIGN KEY(cid) REFERENCES Baller(id),
FOREIGN KEY(name) REFERENCES Warehouse(name)
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

INSERT INTO Wheelz (id, name, price, imageSrc, description) VALUES(11, 'Lambo', 7400, '../../assets/blueLambo.jpg', 'There is much more to this car than just a fancy name, this cheap and affordable vehicle provides ballers with extreme comfort and state of the art performance specifications ');

INSERT INTO Wheelz (id, name, price, imageSrc, description) VALUES(12, 'Ferrari', 7000, '../../assets/redFerrari.jpg', 'This fast, furious, and incredibly economical vehicle we have dubbed the BROGATTI is the pinnacle of performance, a measurement of 10/10 on the scum scale was registered with this puppy!');

INSERT INTO Wheelz (id, name, price, imageSrc, description) VALUES(13, 'Benz', 5350, '../../assets/whiteBenz.jpg', 'This unbelievably stylish car has much more to offer than meets the eye. With world class features that are exclusive to this specific make, there really is not much to thinking to be done.');

INSERT INTO Wheelz (id, name, price, imageSrc, description) VALUES(14, 'Lambo', 7400, '../../assets/yellowLambo.jpg', 'This fast, furious, and incredibly economical vehicle we have dubbed the BROGATTI is the pinnacle of performance, a measurement of 10/10 on the scum scale was registered with this puppy!');

DELETE * FROM Baller;

INSERT INTO Baller (id, name, email, password, address) 
VALUES (0, 'Calham Northway', 'cjnorthway@shaw.ca', 'myword', '123456789 Dumb Street');

INSERT INTO Warehouse (name, city, Province) VALUES ('TheBallerHouse', 'Kelowna', 'BritishColumbia');