
CREATE TABLE PersonInfo(
    PersonID NUMBER(10) PRIMARY KEY,
    Name VARCHAR2(256) ,
    Age NUMBER(5),
    Gender VARCHAR2(10) ,
    Street VARCHAR2(20) ,
    ImageID NUMBER(10),
    FOREIGN KEY (ImageID) REFERENCES ImageDetection(ImageID)
);
desc PersonInfo;
INSERT INTO PersonInfo (PersonID, Name, Age, Gender, Street, ImageID) VALUES (1, 'John Doe', 30, 'Male', '123 Main St', 1);
INSERT INTO PersonInfo (PersonID, Name, Age, Gender, Street, ImageID) VALUES (2, 'Jane Smith', 25, 'Female', '456 Elm St', 2);
INSERT INTO PersonInfo (PersonID, Name, Age, Gender, Street, ImageID) VALUES (3, 'Jeni dev', 30, 'Female', '124 lin St', 3);
INSERT INTO PersonInfo (PersonID, Name, Age, Gender, Street, ImageID) VALUES (4, 'Smith Doe', 40, 'Male', '145 St', 4);
INSERT INTO PersonInfo (PersonID, Name, Age, Gender, Street, ImageID) VALUES (5, 'Doe Clark', 48, 'Male', '987 street', 5);
INSERT INTO PersonInfo (PersonID, Name, Age, Gender, Street, ImageID) VALUES (6, 'Blake', 50, 'Male', '345 lane st', 6);
INSERT INTO PersonInfo (PersonID, Name, Age, Gender, Street, ImageID) VALUES (7, 'Michel', 37, 'Male', '234 Main St', 7);
INSERT INTO PersonInfo (PersonID, Name, Age, Gender, Street, ImageID) VALUES (8, 'Jenifer', 32, 'Female', '789 Main St', 8);
INSERT INTO PersonInfo (PersonID, Name, Age, Gender, Street, ImageID) VALUES (9, 'Dev', 30, 'Male', 'lane 23', 9);
INSERT INTO PersonInfo (PersonID, Name, Age, Gender, Street, ImageID) VALUES (10, 'Daniel', 55, 'Male', '1 Main St', 10);
CREATE TABLE ImageDetection (
    ImageID NUMBER(10) PRIMARY KEY NOT NULL,
    Crime_Date DATE,
    Crime_Timestamp TIMESTAMP,
    CloudAddress VARCHAR2(256) NOT NULL,
    CriminalID NUMBER(10),
    SuspectID NUMBER(10),
    FOREIGN KEY (CriminalID) REFERENCES Criminal(CriminalID),
    FOREIGN KEY (CloudAddress) REFERENCES Database(CloudAddress),
    FOREIGN KEY (SuspectID) REFERENCES Suspect(SuspectID)
);
INSERT INTO ImageDetection (ImageID, Crime_Date, Crime_Timestamp, CloudAddress, CriminalID, SuspectID)
VALUES(1, TO_DATE('2024-04-18', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'cloud1', NULL, 1);

INSERT INTO ImageDetection (ImageID, Crime_Date, Crime_Timestamp, CloudAddress, CriminalID, SuspectID)
VALUES(2, TO_DATE('2024-04-18', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'cloud2', 2, 2);

INSERT INTO ImageDetection (ImageID, Crime_Date, Crime_Timestamp, CloudAddress, CriminalID, SuspectID)
VALUES(3, TO_DATE('2024-04-18', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'cloud3', 3, 3);

INSERT INTO ImageDetection (ImageID, Crime_Date, Crime_Timestamp, CloudAddress, CriminalID, SuspectID)
VALUES(4, TO_DATE('2024-04-18', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'cloud4', 4, 4);

INSERT INTO ImageDetection (ImageID, Crime_Date, Crime_Timestamp, CloudAddress, CriminalID, SuspectID)
VALUES(5, TO_DATE('2024-04-18', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'cloud5', 5, 5);

INSERT INTO ImageDetection (ImageID, Crime_Date, Crime_Timestamp, CloudAddress, CriminalID, SuspectID)
VALUES(6, TO_DATE('2024-04-18', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'cloud6', 6, 6);

INSERT INTO ImageDetection (ImageID, Crime_Date, Crime_Timestamp, CloudAddress, CriminalID, SuspectID)
VALUES(7, TO_DATE('2024-04-18', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'cloud7', 7, 7);

INSERT INTO ImageDetection (ImageID, Crime_Date, Crime_Timestamp, CloudAddress, CriminalID, SuspectID)
VALUES(8, TO_DATE('2024-04-18', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'cloud8', 8, 8);

INSERT INTO ImageDetection (ImageID, Crime_Date, Crime_Timestamp, CloudAddress, CriminalID, SuspectID)
VALUES(9, TO_DATE('2024-04-18', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'cloud9', 9, 9);

INSERT INTO ImageDetection (ImageID, Crime_Date, Crime_Timestamp, CloudAddress, CriminalID, SuspectID)
VALUES(10, TO_DATE('2024-04-18', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'cloud10', 10, 10);
CREATE TABLE Database (
    CloudAddress VARCHAR2(256) NOT NULL PRIMARY KEY,
    CriminalDatabase VARCHAR2(256) NOT NULL
);
desc Database;
INSERT INTO Database (CloudAddress, CriminalDatabase) VALUES ('cloud1', 'criminalDB1');
INSERT INTO Database (CloudAddress, CriminalDatabase) VALUES ('cloud2', 'criminalDB2');
INSERT INTO Database (CloudAddress, CriminalDatabase) VALUES ('cloud3', 'criminalDB3');
INSERT INTO Database (CloudAddress, CriminalDatabase) VALUES ('cloud4', 'criminalDB4');
INSERT INTO Database (CloudAddress, CriminalDatabase) VALUES ('cloud5', 'criminalDB5');
INSERT INTO Database (CloudAddress, CriminalDatabase) VALUES ('cloud6', 'criminalDB6');
INSERT INTO Database (CloudAddress, CriminalDatabase) VALUES ('cloud7', 'criminalDB7');
INSERT INTO Database (CloudAddress, CriminalDatabase) VALUES ('cloud8', 'criminalDB8');
INSERT INTO Database (CloudAddress, CriminalDatabase) VALUES ('cloud9', 'criminalDB9');
INSERT INTO Database (CloudAddress, CriminalDatabase) VALUES ('cloud10', 'criminalDB10');select * from Database;

CREATE TABLE Suspect 
(
    SuspectID NUMBER (10) PRIMARY KEY NOT NULL,
    Name VARCHAR2(256) NOT NULL ,
    Age NUMBER(5),
    Gender VARCHAR2(10) NOT NULL,
    Street VARCHAR2(20) NOT NULL,
    CriminalID NUMBER(10) NOT NULL,
    FOREIGN KEY (CriminalID) REFERENCES Criminal(CriminalID)
);
Desc Table Suspect;
INSERT INTO Suspect (SuspectID, Name, Age, Gender, Street, CriminalID) VALUES(1, 'John Doe', 30, 'Male', '123 Main St', 1);
INSERT INTO Suspect (SuspectID, Name, Age, Gender, Street, CriminalID) VALUES(2, 'Jane Smith', 25, 'Female', '456 Elm St', 2);
INSERT INTO Suspect (SuspectID, Name, Age, Gender, Street, CriminalID) VALUES(3, 'Alice Johnson', 35, 'Female', '789 Oak St', 3);
INSERT INTO Suspect (SuspectID, Name, Age, Gender, Street, CriminalID) VALUES(4, 'Bob Williams', 40, 'Male', '101 Maple Ave', 4);
INSERT INTO Suspect (SuspectID, Name, Age, Gender, Street, CriminalID) VALUES(5, 'Eve Brown', 28, 'Female', '202 Pine St', 5);
INSERT INTO Suspect (SuspectID, Name, Age, Gender, Street, CriminalID) VALUES(6, 'Michael Lee', 45, 'Male', '303 Cedar Rd', 6);
INSERT INTO Suspect (SuspectID, Name, Age, Gender, Street, CriminalID) VALUES(7, 'Sophia Garcia', 22, 'Female', '404 Birch Ln', 7);
INSERT INTO Suspect (SuspectID, Name, Age, Gender, Street, CriminalID) VALUES(8, 'Daniel Martinez', 33, 'Male', '505 Oakwood Dr', 8);
INSERT INTO Suspect (SuspectID, Name, Age, Gender, Street, CriminalID) VALUES(9, 'Olivia Rodriguez', 27, 'Female', '606 Elmwood Ave', 9);
INSERT INTO Suspect (SuspectID, Name, Age, Gender, Street, CriminalID) VALUES(10, 'Liam Smith', 32, 'Male', '707 Maplewood Blvd', 10);
CREATE TABLE Surveillance (
    CamID NUMBER(10) PRIMARY KEY,
    Image VARCHAR2(255),
    Video VARCHAR2(255),
    CloudAddress VARCHAR2(256),
    CaseID NUMBER(10),
    
    FOREIGN KEY (CaseID) REFERENCES Case(CaseID),
    
    FOREIGN KEY (CloudAddress) REFERENCES Database(CloudAddress)
);
describe Surveillance;
INSERT INTO Surveillance(CamID, Image, Video, CloudAddress, CaseID) 
VALUES (1, 'image1.jpg', 'video1.mp4', 'cloud1', 1001),
INSERT INTO Surveillance (CamID, Image, Video, CloudAddress, CaseID) 
VALUES    (2, 'image2.jpg', 'video2.mp4', 'cloud2', 1002),
 INSERT INTO Surveillance (CamID, Image, Video, CloudAddress, CaseID) 
VALUES  (3,'image3.jpg', 'video3.mp4', 'cloud3', 1003),
 INSERT INTO Surveillance (CamID, Image, Video, CloudAddress, CaseID) 
VALUES   (4, 'image4.jpg', 'video4.mp4', 'cloud4', 1004),
INSERT INTO Surveillance (CamID, Image, Video, CloudAddress, CaseID) 
VALUES    (5, 'image5.jpg', 'video5.mp4', 'cloud5', 1005),
INSERT INTO Surveillance (CamID, Image, Video, CloudAddress, CaseID) 
VALUES    (6, 'image6.jpg', 'video6.mp4', 'cloud6', 1006),
 INSERT INTO Surveillance (CamID, Image, Video, CloudAddress, CaseID) 
VALUES   (7, 'image7.jpg', 'video7.mp4', 'cloud7', 1007),
 INSERT INTO Surveillance (CamID, Image, Video, CloudAddress, CaseID) 
VALUES   (8, 'image8.jpg', 'video8.mp4', 'cloud8', 1008),
 INSERT INTO Surveillance (CamID, Image, Video, CloudAddress, CaseID) 
VALUES   (9, 'image9.jpg', 'video9.mp4', 'cloud9', 1009),
INSERT INTO Surveillance (CamID, Image, Video, CloudAddress, CaseID) 
VALUES    (10, 'image10.jpg', 'video10.mp4', 'cloud10', 1010);
CREATE TABLE Case (
    CaseID number (10)  NOT NULL PRIMARY KEY,
    Location VARCHAR(255),
    Description varchar(255),
    Evidence varchar(255),
    BadgeNO NUMBER(10) NOT NULL,
    
    FOREIGN KEY (BadgeNO) REFERENCES LawEnforcement(BadgeNo)
);
describe Case
INSERT INTO Case (CaseID, Location, Description, Evidence, BadgeNO) 
VALUES  (1001, 'Location 1', 'Description 1', 'Evidence 1', 1234567890),
 INSERT INTO Case (CaseID, Location, Description, Evidence, BadgeNO) 
VALUES    (1002, 'Location 2', 'Description 2', 'Evidence 2', 1234567891),
  INSERT INTO Case (CaseID, Location, Description, Evidence, BadgeNO) 
VALUES    (1003, 'Location 3', 'Description 3', 'Evidence 3', 1234567892),
 INSERT INTO Case (CaseID, Location, Description, Evidence, BadgeNO) 
VALUES     (1004, 'Location 4', 'Description 4', 'Evidence 4', 1234567893),
 INSERT INTO Case (CaseID, Location, Description, Evidence, BadgeNO) 
VALUES     (1005, 'Location 5', 'Description 5', 'Evidence 5', 1234567894),
 INSERT INTO Case (CaseID, Location, Description, Evidence, BadgeNO) 
VALUES     (1006, 'Location 6', 'Description 6', 'Evidence 6', 1234567895),
 INSERT INTO Case (CaseID, Location, Description, Evidence, BadgeNO) 
VALUES     (1007, 'Location 7', 'Description 7', 'Evidence 7', 1234567896),
 INSERT INTO Case (CaseID, Location, Description, Evidence, BadgeNO) 
VALUES     (1008, 'Location 8', 'Description 8', 'Evidence 8', 1234567897),
 INSERT INTO Case (CaseID, Location, Description, Evidence, BadgeNO) 
VALUES     (1009, 'Location 9', 'Description 9', 'Evidence 9', 1234567898),
INSERT INTO Case (CaseID, Location, Description, Evidence, BadgeNO) 
VALUES      (1010, 'Location 10', 'Description 10', 'Evidence 10', 1234567899);
CREATE TABLE Criminal (
    CriminalID NUMBER(10) PRIMARY KEY NOT NULL,
    Description VARCHAR2(255) NOT NULL,
    BadgeNo NUMBER(10), 
    CONSTRAINT FK_BadgeNo
    FOREIGN KEY (BadgeNo) REFERENCES LawEnforcement(BadgeNo)
);
describe Criminal
INSERT INTO Criminal (CriminalID, Description, BadgeNo) 
VALUES (1, 'Description 1', 1234567890),
 INSERT INTO Criminal (CriminalID, Description, BadgeNo) 
VALUES (2, 'Description 2', 1234567891),
 INSERT INTO Criminal (CriminalID, Description, BadgeNo) 
VALUES    (3, 'Description 3', 1234567892),
INSERT INTO Criminal (CriminalID, Description, BadgeNo) 
VALUES     (4, 'Description 4', 1234567893),
INSERT INTO Criminal (CriminalID, Description, BadgeNo) 
VALUES     (5, 'Description 5', 1234567894),
 INSERT INTO Criminal (CriminalID, Description, BadgeNo) 
VALUES    (6, 'Description 6', 1234567895),
 INSERT INTO Criminal (CriminalID, Description, BadgeNo) 
VALUES    (7, 'Description 7', 1234567896),
 INSERT INTO Criminal (CriminalID, Description, BadgeNo) 
VALUES    (8, 'Description 8', 1234567897),
  INSERT INTO Criminal (CriminalID, Description, BadgeNo) 
VALUES   (9, 'Description 9', 1234567898),
 INSERT INTO Criminal (CriminalID, Description, BadgeNo) 
VALUES    (10, 'Description 10', 1234567899);
CREATE TABLE LawEnforcement (
    BadgeNo NUMBER(10) PRIMARY KEY,
    Name VARCHAR2(255),
    Rank VARCHAR2(100),
    ContactInfo VARCHAR2(255),
    Department VARCHAR2(255)
);
describe LawEnforceement
INSERT INTO LawEnforcement (BadgeNo, Name, Rank, ContactInfo, Department) 
VALUES  (1234567890, 'Officer Smith', 'Sergeant', 'smith@example.com', 'Patrol Division'),
INSERT INTO LawEnforcement (BadgeNo, Name, Rank, ContactInfo, Department) 
VALUES        (1234567891, 'Officer Johnson', 'Detective', 'johnson@example.com', 'Investigations Division'),
  INSERT INTO LawEnforcement (BadgeNo, Name, Rank, ContactInfo, Department) 
VALUES  (1234567892, 'Officer Williams', 'Lieutenant', 'williams@example.com', 'Special Operations Unit'),
   INSERT INTO LawEnforcement (BadgeNo, Name, Rank, ContactInfo, Department) 
VALUES (1234567893, 'Officer Brown', 'Captain', 'brown@example.com', 'Administrative Division'),
   INSERT INTO LawEnforcement (BadgeNo, Name, Rank, ContactInfo, Department) 
VALUES (1234567894, 'Officer Jones', 'Officer', 'jones@example.com', 'Traffic Division'),
   INSERT INTO LawEnforcement (BadgeNo, Name, Rank, ContactInfo, Department) 
VALUES (1234567895, 'Officer Davis', 'Sergeant', 'davis@example.com', 'K-9 Unit'),
  INSERT INTO LawEnforcement (BadgeNo, Name, Rank, ContactInfo, Department) 
VALUES  (1234567896, 'Officer Miller', 'Detective', 'miller@example.com', 'Narcotics Unit'),
  INSERT INTO LawEnforcement (BadgeNo, Name, Rank, ContactInfo, Department) 
VALUES  (1234567897, 'Officer Wilson', 'Lieutenant', 'wilson@example.com', 'Community Policing Unit'),
  INSERT INTO LawEnforcement (BadgeNo, Name, Rank, ContactInfo, Department) 
VALUES  (1234567898, 'Officer Moore', 'Captain', 'moore@example.com', 'Special Investigations Unit'),
  INSERT INTO LawEnforcement (BadgeNo, Name, Rank, ContactInfo, Department) 
VALUES  (1234567899, 'Officer Taylor', 'Officer', 'taylor@example.com', 'Cybercrime Unit');
