CREATE DATABASE company_db;

USE company_db;

CREATE TABLE Employees (
	EmpId INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Department VARCHAR(50) ,
    Salary DECIMAL(10,2) DEFAULT 0.00,
    ManagerId INT
);

INSERT INTO Employees (EmpId , Name , Email , Department , Salary , ManagerId)
VALUES (1 , "Arina Watts" , "Arina12@gmail.com" , "HR" , 70000.00 , NULL);

INSERT INTO Employees (EmpId , Name , Email , Department , Salary , ManagerId)
VALUES (2 , "Maxxy Abbott" , "Maxxy56@gmail.com" , NULL , 3700.00 , 1);

INSERT INTO Employees (EmpId , Name , Email , Department )
VALUES (3 , "Jack  Ford" , "Jack24@gmail.com" , "Marketing" );

INSERT INTO Employees (EmpId , Name , Email )
VALUES (4 , "Diana Kent" , "Diana07@gmail.com" );

INSERT INTO Employees (EmpId , Name , Email , Department , Salary)
SELECT 5 , "Petter Taylor" , "Petter89@gmail.com" , "Finance" , 56000.00;

UPDATE Employees
SET Department = "Sales"
WHERE EmpId = 3 ;

UPDATE Employees
SET  Salary = 94000.00
WHERE EmpId = 1 ;

DELETE FROM Employees
WHERE EmpId = 4 ;

SELECT * FROM Employees WHERE ManagerId IS NULL;
