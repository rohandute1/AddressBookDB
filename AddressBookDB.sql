/*UC1*/
CREATE DATABASE AddressBookDB;
/*UC2*/
USE addressBookDB;
CREATE TABLE AddressBook
(
id INT PRIMARY KEY,
firstName VARCHAR(50),
lastName VARCHAR(50),
address VARCHAR(50),
city VARCHAR(50),
state VARCHAR(50),
zip INT,
phoneNumber VARCHAR(50),
email VARCHAR(50)
);
/*UC3*/
INSERT INTO addressBook (id, firstName, lastName, address, city, state, zip, phoneNumber, email)
VALUES (1, 'John', 'Cena','Home1', 'Mumbai', 'Maharashra', 123456, '9854763215', 'john123@gmail.com');
INSERT INTO addressBook (id, firstName, lastName, address, city, state, zip, phoneNumber, email)
VALUES (2, 'Virat', 'Kohli','Home2', 'Channi', 'TamilNadu', 654321, '8945126375', 'virat0123@gmail.com');
INSERT INTO addressBook (id, firstName, lastName, address, city, state, zip, phoneNumber, email)
VALUES (3, 'Sachine', 'Tendulakar','Home3', 'Delhi', 'Delhi', '547065', '7845963215', 'sachine@gmail.com');
INSERT INTO addressBook (id, firstName, lastName, address, city, state, zip, phoneNumber, email)
VALUES (4, 'Ms', 'Dhoni','Home4', 'Chennai', 'TamilNadu', 654321, '5152681573', 'msdhoni@gmail.com');
INSERT INTO addressBook (id, firstName, lastName, address, city, state, zip, phoneNumber, email)
VALUES (5, 'Salman', 'Khan','Home5', 'Mumbai', 'Maharashra', 123456, '4685216792', 'salman@gmail.com');

SELECT * FROM addressBook;
/*UC4*/
UPDATE addressBook 
SET city = 'Pune'
WHERE id = 1;

UPDATE addressBook 
SET city = 'Mumbai'
WHERE id = 1;

/*UC5*/
DELETE FROM addressBook
WHERE id = 3;

/*UC6*/
SELECT * FROM addressBook WHERE State = 'Maharashtra' or City = 'Mumbai';

/*UC7*/
SELECT city, state, COUNT(*) as addressCount
FROM addressBook
GROUP BY city, state;

/*UC8*/
SELECT firstName,city
FROM addressBook
WHERE city = 'Mumbai'
ORDER BY firstName;
ALTER TABLE addressBook ADD column typeId int;
ALTER TABLE addressBook ADD constraint typeId Foreign key (typeId) references type(typeId);
desc addressBook;

/*UC9*/
CREATE TABLE type(
typeId INT NOT NULL PRIMARY KEY Auto_Increment, 
tName VARCHAR(50) 
);
SELECT * FROM type;

/*UC10*/
SELECT tName, COUNT(*) as typeCount
FROM TYPE
group by tName; 

/*UC11*/
INSERT INTO type (tName)
VALUES ("Family");
INSERT INTO type (tName)
VALUES ("Friends");
INSERT INTO type (tName)
VALUES ("Profession");

UPDATE addressBook
SET typeId = 1
WHERE id = 1;
UPDATE addressBook
SET typeId = 2
WHERE id = 2;
UPDATE addressBook
SET typeId = 3
WHERE id = 4;
UPDATE addressBook
SET typeId = 2
WHERE id = 5;