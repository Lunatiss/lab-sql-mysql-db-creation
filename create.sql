CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE TABLE cars (
VIN VARCHAR (30),
manufacturer VARCHAR(30),
model VARCHAR(20),
year INT,
color VARCHAR(20),
PRIMARY KEY (VIN)
)
;

CREATE TABLE customers (
cust_id INT,
cust_name VARCHAR(30),
cust_phone INT,
cust_email VARCHAR(20),
cust_address VARCHAR(20),
cust_city VARCHAR(20),
cust_state VARCHAR(20),
cust_country VARCHAR(20), 
cust_zipcode int,
PRIMARY KEY (cust_id)
)
;


CREATE TABLE salesperson (
staff_id INT,
name VARCHAR(30),
store VARCHAR(30),
PRIMARY KEY (staff_id)
)
;

CREATE TABLE invoices (
invoice_number INT,
date date,
car VARCHAR(20),
customer INT,
salesperson INT,
PRIMARY KEY (invoice_number)
)
;

ALTER TABLE invoices 
ADD FOREIGN KEY(car) #columna en invoice que sera fk
REFERENCES cars(VIN); #primary key de tabla que se va a relacionar

ALTER TABLE invoices 
ADD FOREIGN KEY(customer)
REFERENCES customers(cust_id);

ALTER TABLE invoices 
ADD FOREIGN KEY(salesperson)
REFERENCES salesperson(staff_id);


ALTER TABLE customers
MODIFY cust_phone VARCHAR(40);

ALTER TABLE customers
MODIFY cust_address VARCHAR(40);