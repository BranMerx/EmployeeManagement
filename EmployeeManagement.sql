--Creating Departments Table:
CREATE TABLE Departments (
	DepartmentID INT PRIMARY KEY IDENTITY(1,1),
	DepartmentName VARCHAR(100) NOT NULL
);

--Creating the Positions Table:
CREATE TABLE Positions (
	PositionID INT PRIMARY KEY IDENTITY(1,1),
	PositionName VARCHAR(100) NOT NULL
);

--Creating Salaries Table:
CREATE TABLE Salaries (
	SalaryID INT PRIMARY KEY IDENTITY(1,1),
	Amount DECIMAL(10,2) NOT NULL,
	EffectiveDate DATE NOT NULL
);

--Creating Employees Table:
CREATE TABLE Employees (
	EmployeeID INT PRIMARY KEY IDENTITY(1,1),
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Gender CHAR(1) NOT NULL,
	BirthDate DATE NOT NULL,
	HireDate DATE NOT NULL,
	DepartmentID INT NOT NULL,
	PositionID INT NOT NULL,
	SalaryID INT NOT NULL,
	FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
	FOREIGN KEY (PositionID) REFERENCES Positions(PositionID),
	FOREIGN KEY (SalaryID) REFERENCES Salaries(SalaryID)
);