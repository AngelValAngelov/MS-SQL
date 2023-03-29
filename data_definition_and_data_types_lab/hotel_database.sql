CREATE DATABASE Hotel;

GO

USE Hotel;

CREATE TABLE Employees (
    Id INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR (50) NOT NULL,
    LastName VARCHAR (50) NOT NULL,
    Title VARCHAR (50) NOT NULL,
    Notes VARCHAR (200)
);

INSERT INTO Employees (Id, FirstName, LastName, Title, Notes)
VALUES
      (1, 'Gele', 'Gelev', 'Line cook', 'Super'),
      (2, 'Kiko', 'Kikov', 'Manager', 'So so'),
      (3, 'Rusi', 'Rusev', 'Doctor', 'Bad');

CREATE TABLE Customers (
    AccountNumber INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR (50) NOT NULL,
    LastName VARCHAR (50) NOT NULL,
    PhoneNumber VARCHAR (15) NOT NULL,
    EmergencyName VARCHAR (20),
    EmergencyNumber INT,
    Notes VARCHAR (200)
);

INSERT INTO Customers (AccountNumber, FirstName, LastName, PhoneNumber)
VALUES
      (1, 'Ceci', 'Cecov', '+359873942345'),
      (2, 'Ceco', 'Cecev', '+359873911145'),
      (3, 'Cuci', 'Cucev', '+359873922245');


CREATE TABLE RoomStatus (
    RoomStatus INT PRIMARY KEY NOT NULL,
    Notes VARCHAR (200) NOT NULL,
);

INSERT INTO RoomStatus (RoomStatus, Notes)
VALUES
      (1, 'Very good'),
      (2, 'Good'),
      (3, 'Very bad');


CREATE TABLE RoomTypes (
    RoomType VARCHAR (20) PRIMARY KEY NOT NULL,
    Notes VARCHAR (200) NOT NULL
);

INSERT INTO RoomTypes (RoomType, Notes)
VALUES
      ('Single', 'One bed'),
      ('Double', 'Two beds'),
      ('Apartment', 'Apartment');

CREATE TABLE BedTypes (
    BedType VARCHAR (30) PRIMARY KEY NOT NULL,
    Notes VARCHAR (200)
);

INSERT INTO BedTypes (BedType)
VALUES
      ('Single'),
      ('Double'),
      ('King');

CREATE TABLE Rooms (
    RoomNumber INT PRIMARY KEY NOT NULL,
    RoomType VARCHAR (20) FOREIGN KEY REFERENCES RoomTypes (RoomType),
    BedType VARCHAR (30) FOREIGN KEY REFERENCES BedTypes(BedType),
    Rate INT NOT NULL,
    RoomStatus INT FOREIGN KEY REFERENCES RoomStatus (RoomStatus),
    Notes VARCHAR (200),
);

INSERT INTO Rooms (RoomNumber, RoomType, BedType, Rate, RoomStatus)
VALUES
      (1, 'Single', 'Single', 10, 1),
      (2, 'Double', 'Double', 9, 2),
      (3, 'Apartment', 'King', 8, 3);


CREATE TABLE Payments (
    Id INT PRIMARY KEY NOT NULL,
    EmployeeId INT FOREIGN KEY REFERENCES Employees (Id),
    PaymentDate DATE NOT NULL,
    AccountNumber INT NOT NULL,
    FirstDateOccupied DATE NOT NULL,
    LastDateOccupied DATE NOT NULL,
    TotalDays INT NOT NULL,
    AmountCharged NUMERIC (10, 2) NOT NULL,
    TaxRate NUMERIC (10, 2),
    TaxAmount NUMERIC (10, 2) NOT NULL,
    PaymentTotal NUMERIC (10, 2) NOT NULL,
    Notes VARCHAR (200)
);

INSERT INTO Payments (Id, EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, TaxAmount, PaymentTotal)
VALUES
       (1, 1, '01/22/2022', 1, '01/10/2022', '01/21/2022', 11, 1001.22, 200.22, 1201.44),
       (2, 2, '01/07/2022', 2, '01/09/2022', '01/11/2022', 2, 100.22, 20.22, 120.44),
       (3, 3, '01/01/2022', 3, '01/08/2022', '01/10/2022', 7, 801.22, 200.22, 1001.44);

CREATE TABLE Occupancies (
    Id INT PRIMARY KEY NOT NULL,
    EmployeeId INT FOREIGN KEY REFERENCES Employees (Id),
    DateOccupied DATE NOT NULL,
    AccountNumber INT FOREIGN KEY REFERENCES Customers (AccountNumber),
    RoomNumber INT FOREIGN KEY REFERENCES Rooms (RoomNumber),
    RateApplied INT,
    PhoneCharge INT DEFAULT 0,
    Notes VARCHAR (200)
);

INSERT INTO Occupancies (Id, EmployeeId, DateOccupied, AccountNumber, RoomNumber)
VALUES
      (1, 1, '05/22/2022', 1, 1),
      (2, 2, '07/11/2022', 2, 2),
      (3, 3, '09/12/2022', 3, 3);


-- Create Hotel database

-- Set the most appropriate data types for each column. Set a primary key to each table.
-- Populate each table with only 3 records. Make sure the columns that are present in 2 tables would be of the same data type.
-- Consider which fields are always required and which are optional.
