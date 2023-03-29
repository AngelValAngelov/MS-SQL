CREATE TABLE People (
    Id INT UNIQUE IDENTITY NOT NULL,
    Name VARCHAR (200) NOT NULL,
    Picture VARBINARY,
    Height NUMERIC (10, 2),
    Weight NUMERIC (10, 2),
    Gender CHAR (1) NOT NULL,
    Birthdate DATE NOT NULL,
    Biography VARCHAR(MAX)
);

ALTER TABLE People
ADD PRIMARY KEY(Id);

ALTER TABLE People
ADD CONSTRAINT CH_PictureSize CHECK(DATALENGTH(Picture) <= 2 * 1024 * 1024);

INSERT INTO People (Name, Height, Weight, Gender, Birthdate, Biography)
VALUES ('Main Main', 1.90, 20.22, 'm', '01/01/1999', 'lalaalal'),
       ('Tiger Tiger', 1.74, 80.23, 'm', '01/21/2000', 'lalalaal'),
       ('Pinco Pinco', 1.88, 97.24 , 'm', '01/21/2001', 'lalalaal'),
       ('Pepi Pepi', 1.65, 55.25, 'f', '11/15/2003', 'lalalalal'),
       ('Polly Polly', 1.55, 50.25, 'f', '12/20/2004', 'lalalalal');

-- Using SQL query, create table People with the following columns:

-- Make the Id a primary key. Populate the table with only 5 records.
-- Submit your CREATE and INSERT statements as Run queries & check DB.
