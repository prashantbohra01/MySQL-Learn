CREATE DATABASE Bank;

Use Bank;

CREATE TABLE Payment(
Customer_id INT PRIMARY KEY,
Cutomer VARCHAR(20),
Mode VARCHAR(20),
City VARCHAR(20)
);

INSERT INTO Payment
(Customer_id, Cutomer, Mode, City)
VALUES
(101, "Olivia Barrett", "Netbanking", "Portland"),
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hernandez", "Credit Card", "Seattle"),
(104, "Liam Donovan", "Netbanking", "Denver"),
(105, "Sophia Nguyen", "Credit Card", "New Orleans"),
(106, "Caleb Foster", "Debit Card", "Minneapolis"),
(107, "Ava Patel", "Debit Card", "Phoenix"),
(108, "Lucas Carter", "Netbanking", "Boston"),
(109, "Isabella Martinez", "Netbanking", "Nashville"),
(110, "Jackson Brooks", "Credit Card", "Boston");

Select * from Payment;

select Mode, count(Mode)
from payment
Group By mode;

ALTER TABLE Payment
CHANGE COLUMN Cutomer Customer VARCHAR(20);


