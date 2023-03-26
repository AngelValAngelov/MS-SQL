CREATE TABLE Teachers (
    TeacherID INT NOT NULL,
    Name VARCHAR (50),
    ManagerID INT
);

INSERT INTO Teachers (TeacherID, Name, ManagerID)
VALUES
      (101, 'John', NULL),
      (102, 'Maya', 106),
      (103, 'Silvia', 106),
      (104, 'Ted', 105),
      (105, 'Mark', 101),
      (106, 'Greta', 101);

ALTER TABLE Teachers
ADD CONSTRAINT PK_TeacherID
PRIMARY KEY (TeacherID)

ALTER TABLE Teachers
ADD CONSTRAINT FC_ManagerID
FOREIGN KEY (ManagerID) REFERENCES Teachers(TeacherID)

-- Create one table and use appropriate data types.

-- Insert the data from the example above and add primary keys and foreign keys.
-- The foreign key should be between ManagerId and TeacherId.
