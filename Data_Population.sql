use testing;
create schema testing;
use testing;
CREATE TABLE Users (
    User_ID INT PRIMARY KEY NOT NULL,
    User_Name VARCHAR(255) NOT NULL,
    User_Password VARCHAR(255) NOT NULL,
    User_EmailAddress VARCHAR(255) NOT NULL
);
CREATE TABLE Manager (
    Manager_ID INT Not NULL,
    User_ID INT,
    Manager_Name VARCHAR(255) NOT NULL,
    Manager_EmailAddress VARCHAR(255) NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);
INSERT INTO Users (User_ID, User_Name, User_Password, User_EmailAddress)
VALUES  (1, 'user1', 'password1', 'user1@example.com'),
		(2, 'user2', 'password2', 'user2@example.com'),
		(3, 'user3', 'password3', 'user3@example.com'),
		(4, 'user4', 'password4', 'user4@example.com'),
		(5, 'user5', 'password5', 'user5@example.com'),
        (6, 'user6', 'password6', 'user6@example.com'),
		(7, 'user7', 'password7', 'user7@example.com'),
		(8, 'user8', 'password8', 'user8@example.com'),
		(9, 'user9', 'password9', 'user9@example.com'),
		(10, 'userq10', 'password10', 'user10@example.com');
        
INSERT INTO Manager (Manager_ID, User_ID, Manager_Name, Manager_EmailAddress)
VALUES  (1, 3, 'Manager1', 'manager1@example.com'),
		(1, 4, 'Manager1', 'manager1@example.com'),
		(1, 5, 'Manager1', 'manager1@example.com'),
		(1, 6, 'Manager1', 'manager1@example.com'),
		(2, 7, 'Manager2', 'manager2@example.com'),
		(2, 8, 'Manager2', 'manager2@example.com'),
		(2, 9, 'Manager2', 'manager2@example.com'),
		(2, 10, 'Manager2', 'manager2@example.com');
select * from users;
select* from Manager;
drop table Users;
drop table Manager;
select @@hostname;
select database();

