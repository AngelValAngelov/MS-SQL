CREATE DATABASE Movies;

GO

USE Movies;

CREATE TABLE Directors (
    Id INT PRIMARY KEY NOT NULL,
    DirectorName VARCHAR (100) NOT NULL,
    Notes VARCHAR (200)
);

INSERT INTO Directors (Id, DirectorName, Notes)
VALUES
        (1, 'Peter', 'lalala'),
        (2, 'Gogo', 'lalala'),
        (3, 'Popo', 'lalala'),
        (4, 'Toto', 'lalala'),
        (5, 'Ceco', 'lalala');

CREATE TABLE Genres (
    Id INT PRIMARY KEY NOT NULL ,
    GenreName VARCHAR (100) NOT NULL,
    Notes VARCHAR (200)
);

INSERT INTO Genres (Id, GenreName, Notes)
VALUES
      (1, 'Action', 'lalala'),
      (2, 'Comedy', 'lalala'),
      (3, 'Drama', 'lalala'),
      (4, 'Action', 'lalala'),
      (5, 'Comedy', 'lalala');

CREATE TABLE Categories (
    Id INT PRIMARY KEY NOT NULL,
    CategoryName VARCHAR (100) NOT NULL,
    Notes VARCHAR (200)
);

INSERT INTO Categories (Id, CategoryName, Notes)
VALUES
        (1, 'Act', 'lalala'),
        (2, 'Act', 'lalala'),
        (3, 'Act', 'lalala'),
        (4, 'Act', 'lalala'),
        (5, 'Act', 'lalala');

CREATE TABLE Movies (
    Id INT PRIMARY KEY NOT NULL,
    Title VARCHAR (100) NOT NULL,
    DirectorId INT FOREIGN KEY REFERENCES Directors(id),
    CopyrightYear DATE,
    Length INT NOT NULL,
    GenreId INT FOREIGN KEY REFERENCES Genres(id),
    CategoryId INT FOREIGN KEY REFERENCES Categories(id),
    Rating INT,
    Notes VARCHAR (200)
);

INSERT INTO Movies (Id, Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating, Notes)
VALUES
        (1, 'People', 1, '10/11/2011', 120, 1, 1, 10, 'lalalala'),
        (2, 'Earth', 2, '11/12/2012', 110, 2, 2, 9, 'lalalala'),
        (3, 'Air', 3, '12/03/2013', 100, 3, 3, 8, 'lalalala'),
        (4, 'Sun', 4, '11/04/2014', 90, 4, 4, 7, 'lalalala'),
        (5, 'Title', 5, '11/05/2015', 70, 5, 5, 6, 'lalalala');

-- Using SQL queries create Movies database with the following entities:

-- Set the most appropriate data types for each column. Set a primary key to each table.
-- Populate each table with exactly 5 records. Make sure the columns that are present in
-- 2 tables would be of the same data type. Consider which fields are always required and
-- which are optional.
