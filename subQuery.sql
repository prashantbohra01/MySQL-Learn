CREATE DATABASE subquery;
USE subquery;

CREATE TABLE Students
(rollno INT PRIMARY KEY, Name VARCHAR(20), marks INT);

INSERT INTO Students
(rollno, Name, marks, City)
VALUES
(101, "Anil", 78, "Pune"),
(102, "Bhumika", 93, "Mumbai"),
(103, "Chetan", 85, "Mumbai"),
(104, "Dhruv", 96, "Delhi"),
(105, "Emanuel", 92, "Delhi"),
(106, "Farah", 82, "Delhi");

/* EXAMPLE 1: Get names of all the students who scored more than class average. */

SELECT AVG(marks) FROM Students;

SELECT Name, marks
FROM Students
WHERE marks > (SELECT AVG(marks) from Students);

/* EXAMPLE 2: Find the names of all the students with even roll no. */

/* Step 1: Find the even roll no. */
SELECT rollno
From Students
WHERE rollno%2 = 0;

SELECT rollno, Name 
From Students
WHERE rollno IN (SELECT rollno FROM Students WHERE rollno%2 = 0);

/* EXAMPLE 3(with FROM): Find the Maximum marks from the Students of Delhi. */



