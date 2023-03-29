CREATE DATABASE Softuni;

Go

USE Softuni;

CREATE TABLE Towns (
    Id INT PRIMARY KEY NOT NULL,
    Name VARCHAR (50)
);

CREATE TABLE Addresses (
    Id INT PRIMARY KEY NOT NULL,
    AddressText VARCHAR (200),
    TownId INT FOREIGN KEY REFERENCES Towns (Id)
);

CREATE TABLE Departments (
    Id INT PRIMARY KEY NOT NULL,
    Name VARCHAR (50) NOT NULL
);

CREATE TABLE Employees (
    Id INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR (30) NOT NULL,
    MiddleName VARCHAR (30) NOT NULL,
    LastName VARCHAR (30) NOT NULL,
    JobTitle VARCHAR (30) NOT NULL,
    DepartmentId INT FOREIGN KEY REFERENCES Departments (Id),
    HireDate DATE NOT NULL,
    Salary INT NOT NULL,
    AddressId INT FOREIGN KEY REFERENCES Addresses (Id)
);

-- Now create bigger database called SoftUni.
-- You will use the same database in the future tasks. It should hold information about