CREATE DATABASE School;
USE School;

CREATE TABLE Student(
Roll_No INT PRIMARY KEY,
Name varchar(50),
Marks Int NOT null,
Grade varchar(1),
City Varchar(20)
);

CREATE TABLE Department(
ID INT PRIMARY KEY,
Name varchar(50)
);

CREATE TABLE Teacher(
ID INT PRIMARY KEY,
Name varchar(50),
Dept_Id Int,
FOREIGN KEY (Dept_Id) REFERENCES Department(ID)
);

Insert into Student
(Roll_No, Name, Marks, Grade, City)
Values
(101, "Prashant", 80, "B", "Delhi"),
(102, "Kunak", 90, "A", "Delhi"),
(103, "Hritik", 85, "B", "UP"),
(104, "Ritik", 93, "A+", "UP"),
(105, "Karan", 96, "A+", "Uttarakhand"),
(106, "Shubham", 76, "C", "Delhi");

INSERT INTO Teacher
(ID, Name, Dept_Id)
VALUES
(101, "Adam", 101),
(102, "Bob", 103),
(103, "Casey", 102),
(104, "Donald", 102);

INSERT INTO Department
(ID, Name)
VALUES
(101, "Science"),
(102, "English"),
(103, "Hindi");

SELECT * FROM  Student;
SELECT Name, Marks From Student;
SELECT DISTINCT City from Student; 
SELECT * FROM Student Where Marks > 80;
SELECT * FROM Student Where City = "UP";
SELECT * FROM Student Where Marks > 80 AND City = "Delhi";
SELECT * FROM Student Where Marks BETWEEN 80 AND 90;

SELECT MAX(Marks) from Student;
SELECT MIN(Marks) from Student;
SELECT AVG(Marks) from Student;
SELECT COUNT(Roll_No) from Student;

SELECT DISTINCT City FROM Student;

SET SQL_SAFE_UPDATES = 0;
UPDATE Student
SET Grade = "O"
WHERE Grade = "A";

UPDATE Student
SET Marks = 32
Where Roll_No = 106;

DELETE FROM Student
WHERE Marks < 33;

SELECT * From Student; 


ALTER TABLE Student
ADD COLUMN age INT;

ALTER TABLE Student
DROP COLUMN age;

ALTER TABLE Student
RENAME TO Students_Data;

ALTER TABLE Students_Data
CHANGE COLUMN City State VARCHAR(20);

SELECT * FROM Students_Data;