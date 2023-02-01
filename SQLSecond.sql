CREATE DATABASE Company

use Company

CREATE TABLE Departments(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	[Name] NVARCHAR(255) NOT NULL,
	CHECK(LEN([Name]) > 2)
);

CREATE TABLE Employees(
	Id INT,
	Fullname NVARCHAR(255) NOT NULL,
	Salary MONEY,
	Email NVARCHAR(255) NOT NULL UNIQUE,
	DepartmentId INT FOREIGN KEY REFERENCES Departments(Id),
	CHECK(Salary > 0),
	CHECK(LEN(Fullname) > 3)
);

/* Olar */

INSERT INTO Departments
	VALUES('Development')

INSERT INTO Employees
	VALUES(1,'Marahim Imamaliyev', 5, 'marahimim@code.edu.az', 2)

SELECT * FROM Departments
SELECT * FROM Employees