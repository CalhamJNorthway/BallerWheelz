
Drop Table Customer;
Drop Table Warehouse;
Drop Table Shipment;
Drop Table Product;


Create Table Customer(
id int,
name varchar(30),
email varchar(30),
Password varchar(30),
address varchar(30),
paymentMethodId int,
primary key(id),
foreign key paymentMethodId references PaymentMethod(id)
);

Create Table CreditCard(
cname varchar(30),
cardNumber int,
expirationDate DATE,
securityCode int,
Primary key (cardNumber),
Foreign key (cname) Customer(name)
);

Create Table Warehouse(
Name varchar(30),
City varchar(30),
Province varchar(30),
primary key(name)
);

Create table Product(
id int,
name varchar(30),
price currency
primary Key(id)
);

Create Table PaymentMethod(
id int,
primary key(id)
);
 
