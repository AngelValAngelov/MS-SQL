-- 1.	Create Database

CREATE DATABASE Minions;

GO

USE Minions;

-- 2.	Create Tables

CREATE TABLE Minions(
    id INT PRIMARY KEY,
    name VARCHAR (30) NOT NULL,
    age INT NOT NULL,
);

CREATE TABLE Towns(
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR (30) NOT NULL,
);

-- 3.	Alter Minions Table

ALTER TABLE Minions
ADD TownId INT FOREIGN KEY REFERENCES Towns(id);

