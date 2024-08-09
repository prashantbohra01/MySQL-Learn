CREATE DATABASE college;
USE college;

CREATE TABLE student (
	ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT NOT NULL
);

INSERT INTO student VALUES(1, "Prashant", 22);
INSERT INTO student VALUES(2, "Kunal", 20);

INSERT INTO STUDENT
(ID, Name, Age)
VALUES
(101, "Karan", 23),
(102, "Arjun", 24),
(103, "Ram", 21);

SELECT * FROM student;

USE college;

CREATE TABLE temp1 (
ID INT PRIMARY KEY,
PHONE_NUMBER INT UNIQUE,
AGE INT NOT NULL,
SALARY INT DEFAULT 25000
);

CREATE TABLE city (
id INT primary key,
city varchar(50),
age INT,
constraint age_check check (age>=18 AND city = "Delhi")
);

SELECT * FROM temp1;
SELECT * FROM city;