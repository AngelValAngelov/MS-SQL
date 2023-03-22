CREATE DATABASE CarRental;

GO

USE CarRental;

CREATE TABLE Categories (
    Id INT PRIMARY KEY NOT NULL,
    CategoryName VARCHAR (100) NOT NULL,
    DailyRate INT NOT NULL,
    WeeklyRate INT NOT NULL,
    MonthlyRate INT NOT NULL,
    WeekendRate INT NOT NULL
);

INSERT INTO Categories (Id, CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
VALUES
      (1, 'VAN', 3, 3, 4, 3),
      (2, 'SUV', 4, 3, 4, 4),
      (3, 'SUV', 5, 3, 4, 5);

CREATE TABLE Cars (
    Id INT PRIMARY KEY NOT NULL,
    PlateNumber VARCHAR (10) NOT NULL,
    Manufacturer VARCHAR (30) NOT NULL,
    Model VARCHAR (30) NOT NULL,
    CarYear INT NOT NULL,
    CategoryId INT FOREIGN KEY REFERENCES Categories (Id),
    Doors INT NOT NULL,
    Picture VARBINARY(1),
    Condition VARCHAR (200),
    Available BIT NOT NULL
);

INSERT INTO Cars (Id, PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Available)
VALUES
      (1, 'C4444SS', 'Opel', 'Astra', 2010, 1, 4, 'true'),
      (2, 'C1111SS', 'VW', 'Golf', 2012, 2, 5, 'false'),
      (3, 'C2222SS', 'BMW', '3', 2011, 3, 2, 'true');


CREATE TABLE Employees (
    Id INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR (50) NOT NULL,
    LastName VARCHAR (50) NOT NULL,
    Title VARCHAR (50) NOT NULL,
    Notes VARCHAR (200)
);

INSERT INTO Employees (Id, FirstName, LastName, Title)
VALUES
      (1, 'Pepo', 'Peshev', 'Manager'),
      (2, 'Pepe', 'Geshev', 'Mechanic'),
      (3, 'Pipi', 'Pesheva', 'Doctor');

CREATE TABLE Customers (
    Id INT PRIMARY KEY NOT NULL,
    DriverLicenceNumber VARCHAR (10) NOT NULL,
    FullName VARCHAR (100) NOT NULL,
    Address VARCHAR (200) NOT NULL,
    City VARCHAR (50) NOT NULL,
    ZIPCode INT,
    Notes VARCHAR (200)
);

INSERT INTO Customers (Id, DriverLicenceNumber, FullName, Address, City)
VALUES
      (1, 'qwe343d', 'Diko Dikov', '22 Pelikan str', 'Lom'),
      (2, 'qwe343e', 'Ceco Cecov', '21 Kolibri str', 'Lom'),
      (3, 'qwe343f', 'Kiko Kikov', '20 Chaika str', 'Lom');


CREATE TABLE RentalOrders (
    Id INT PRIMARY KEY NOT NULL,
    EmployeeId INT FOREIGN KEY REFERENCES Employees (Id),
    CustomerId INT FOREIGN KEY REFERENCES Customers (Id),
    CarId INT FOREIGN KEY REFERENCES Cars (Id),
    TankLevel INT,
    KilometrageStart INT,
    KilometrageEnd INT,
    TotalKilometrage INT,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    TotalDays INT NOT NULL,
    RateApplied INT NOT NULL,
    TaxRate INT NOT NULL,
    OrderStatus BIT NOT NULL,
    Notes VARCHAR (200)
);


INSERT INTO RentalOrders (Id, EmployeeId, CustomerId, CarId, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus)
VALUES
    (1, 1, 1, 1, '10/21/2020', '10/23/2020', 2, 9, 110, 'true'),
    (2, 2, 2, 2, '11/22/2020', '11/25/2020', 3, 8, 120, 'false'),
    (3, 3, 3, 3, '10/23/2020', '10/24/2020', 1, 10, 150, 'true');

-- Create CarRental database

-- Set the most appropriate data types for each column.
-- Set a primary key to each table. Populate each table with only 3 records.
-- Make sure the columns that are present in 2 tables would be of the same data type.
-- Consider which fields are always required and which are optional.
