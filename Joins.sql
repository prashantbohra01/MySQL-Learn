CREATE DATABASE LEARN_JOINS;
USE LEARN_JOINS;

CREATE TABLE student
(Student_id INT, Name Varchar(20));

INSERT INTO student
(Student_id, Name)
VALUES
(101, "adam"),
(102, "bob"),
(103, "casey");

SELECT * FROM student;

CREATE TABLE course
(Student_id INT, course VARCHAR(20));

INSERT INTO course
(Student_id, course)
VALUES
(102, "English"),
(105, "Math"),
(103, "Science"),
(107, "Computer Science");

SELECT * FROM course;

/* Inner Joins example */

SELECT *
FROM student as s
INNER JOIN course as c
ON s.Student_id = c.Student_id;

/* Left Join
 Returns all records from the left table, and the mathed records from the right table
 */

SELECT *
FROM student
LEFT JOIN course
ON student.Student_id = course.Student_id;

/* Right Join
 Returns all records from the right table, and the matched records from the left table
*/
 
 SELECT *
 FROM student
 RIGHT JOIN course
 ON student.Student_id = course.Student_id;
 
 /* Full Join
	Returns all records when there is a match in either left or right table
 */
 
SELECT * FROM student
LEFT JOIN course
ON student.Student_id = course.Student_id
UNION
SELECT * FROM student
RIGHT JOIN course
ON student.Student_id = course.Student_id;
 
/* Left Exclusive Join */

SELECT * 
FROM student as a
LEFT JOIN course as b
ON a.Student_id = b.Student_id
WHERE b.Student_id IS NULL;

/* Right Exclusive Join */

SELECT * 
FROM student as a
RIGHT JOIN course as b
ON a.Student_id = b.Student_id
WHERE a.Student_id IS NULL;

/* Self Join 
	It is a regular join but the table is joined with itself
*/

CREATE TABLE Employee
(id INT, Name VARCHAR(20), Manager_id INT);

INSERT INTO Employee
(id, Name, Manager_id)
VALUES
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", NULL),
(104, "donald", 103);

SELECT * FROM Employee;

SELECT a.name as manager_name, b.name
FROM Employee as a
JOIN Employee as b
ON a.id = b.Manager_id;

