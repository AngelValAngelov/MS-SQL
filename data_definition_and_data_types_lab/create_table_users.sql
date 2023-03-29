CREATE TABLE Users(
    Id INT UNIQUE IDENTITY,
    Username VARCHAR (200) UNIQUE NOT NULL,
    Password VARCHAR (26) NOT NULL,
    ProfilePicture VARBINARY(MAX),
    LastLoginTime DATETIME2,
    IsDeleted BIT NOT NULL
)

ALTER TABLE Users
ADD CONSTRAINT PK_Users PRIMARY KEY (Id);

ALTER TABLE Users
ADD CONSTRAINT CH_ProfilePicture CHECK (DATALENGTH(ProfilePicture) <= 900 * 1024);

INSERT INTO Users (Username, Password, LastLoginTime, IsDeleted)
VALUES ('Main Main', 'qwe', '01/01/1999', 'true'),
       ('Tiger Tiger', 'qwe', '01/21/2000', 'false'),
       ('Pinco Pinco', 'qwe', '01/21/2001', 'true'),
       ('Pepi Pepi', 'qwe', '11/15/2003', 'false'),
       ('Polly Polly', 'qwe', '12/20/2004', 'true');


-- Using SQL query create table Users with columns:

-- Make the Id a primary key. Populate the table with exactly 5 records.
-- Submit your CREATE and INSERT statements as Run queries & check DB.
