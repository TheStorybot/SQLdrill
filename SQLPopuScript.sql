USE [master]
GO
--Run only if Library is Present
IF Exists (Select * FROM sys.databases WHERE [name] = 'Library')
Drop Database Library
GO

Create Database Library
GO

Use Library
GO


Create Table Book
(
BookId int Primary Key,
title varchar(30) NOT NULL,
PublisherName varchar(30) NOT NULL
)
GO

Insert Into Book
Values (1,'The Lost Tribe','Tribel Books')
	,(2,'The Pet Cemetery','Lighthouse')
	,(3,'A-List Explorers','Pink Mouse Books')
	,(4,'Chumps','Block Books')
	,(5,'Champs','Green Tree Books')
	,(6,'Daring','Lord Books')
	,(7,'Dark Tree','Glennlen Books')
	,(8,'Slick Daddy','Golden Gate Pub.')
	,(9,'Greatsword','Fairwall Pub.')
	,(10,'Slime Monster','TimeLapse Pub.')
	,(11,'The Road','Flar Publishing')
	,(12,'The Time Vortex','Grandmaster Pub.')
	,(13,'Destruction','Stolen Mind Publ.')
	,(14,'Dragon','Dargon Publ.')
	,(15,'Haunted Mine','Tower Publ.')
	,(16,'Pylons','Additional Publ.')
	,(17,'My Life For','Aure Publ.')
	,(18,'Nuclear Launch','Detected Publ.')
	,(19,'Rubber Monster','Time Lapse Publ.')
	,(20,'Great Monsters','Time Lapse Publ.')
	
GO


Create table Book_copies
(
BookID int NOT NULL,
BranchID int NOT NULL,
No_Of_copies int NOT NULL
)
GO
Insert Into book_copies
Values (1,1,2)
	,(2,1,2)
	,(3,1,2)
	,(4,1,2)
	,(5,1,2)
	,(6,1,2)
	,(7,1,2)
	,(8,1,2)
	,(9,1,2)
	,(10,1,2)
	,(11,1,2)
	,(12,1,2)
	,(13,1,2)
	,(14,1,2)
	,(15,1,2)
	,(16,1,2)
	,(17,1,2)
	,(18,1,2)
	,(19,1,2)
	,(20,1,2) 
	,(1,2,2)
	,(2,2,2)
	,(3,2,2)
	,(4,2,2)
	,(5,2,2)
	,(6,2,2)
	,(7,2,2)
	,(8,2,2)
	,(9,2,2)
	,(10,2,2)
	,(11,2,2)
	,(12,2,2)
	,(13,2,2)
	,(14,2,2)
	,(15,2,2)
	,(16,2,2)
	,(17,2,2)
	,(18,2,2)
	,(19,2,2)
	,(20,2,2)
	,(1,3,2)
	,(2,3,2)
	,(3,3,2)
	,(4,3,2)
	,(5,3,2)
	,(6,3,2)
	,(7,3,2)
	,(8,3,2)
	,(9,3,2)
	,(10,3,2)
	,(11,3,2)
	,(12,3,2)
	,(13,3,2)
	,(14,3,2)
	,(15,3,2)
	,(16,3,2)
	,(17,3,2)
	,(18,3,2)
	,(19,3,2)
	,(20,3,2)
	,(1,4,2)
	,(5,4,2)
	,(6,4,2)
	,(9,4,2)
	,(12,4,2)
	,(14,4,2)
	,(15,4,2)
	,(17,4,2)
	,(18,4,2)
	,(19,4,2)

GO


Create table book_authors
(
BookID int primary KEy,
AuthorName Varchar(50) NOT NULL
)
GO

insert into book_authors
Values (1,'Ed Shapel')
	,(2,'Stephen King')
	,(3,'Alice Mark')
	,(4,'Ben Tellen')
	,(5,'Jakob Faarth')
	,(6,'Thomas Allen')
	,(7,'Alice Mark')
	,(8,'Drake Disrem')
	,(9,'Mark Eptom')
	,(10,'Alex Armest')
	,(11,'Thomas Allen')
	,(12,'Elsa Ellington')
	,(13,'Drake Disrem')
	,(14,'Drake Disrem')
	,(15,'Ben Tellen')
	,(16,'Zera Tullman')
	,(17,'Alex Armest')
	,(18,'Kerrigan Swarmen')
	,(19,'Alex Armest')
	,(20,'Alex Armest')
GO


Create Table Publisher
(
Name Varchar(30) NOT NULL,
[Address] varchar(50) NOT NULL,
Phone varchar(15) NOT NULL
)
GO

Insert Into Publisher
Values ('Tribel Books','124 Caldwell Ave',1254625954)
	,('Lighthouse','125 Caldwell Ave',3604975168)
	,('Pink Mouse Books','126 Caldwell Ave',3607619586)
	,('Block Books','127 Caldwell Ave',3609736586)
	,('Green Tree Books','128 Caldwell Ave',3601234859)
	,('Lord Books','129 Caldwell Ave',3607894535)
	,('Glennlen Books','123 Caldwell Ave',3607958642)
	,('Golden Gate Pub.','122 Caldwell Ave',3606928591)
	,('Fairwall Pub.','121 Caldwell Ave',3603691847)
	,('Time Lapse Pub.','151 Caldwell Ave',3609528467)
	,('Flar Publishing','152 Caldwell Ave',3609265847)
	,('Grandmaster Pub.','153 Caldwell Ave',3601234976)
	,('Stolen Mind Publ.','154 Caldwell Ave',3601234567)
	,('Dargon Publ.','156 Caldwell Ave',3603216547)
	,('Tower Publ.','159 Caldwell Ave',3601974354)
	,('Additional Publ.','157 Caldwell Ave',3604567891)
	,('Aure Publ.','158 Caldwell Ave',3607891239)
	,('Detected Publ.','160 Caldwell Ave',3604561827)
GO


Create Table Library_branch
(
BranchID int Primary Key,
BranchName varchar(30) NOT NULL,
[Address] varchar(40) NOT NULL
)
GO

Insert Into Library_branch
Values (1,'Plethura of Books','250 Bookington Rd.')
	,(2,'Insurmountable Books','350 Pageston ln.')
	,(3,'Sharpstown','450 Writing Ave.')
	,(4,'Central','550 Hardcover Dr.')
GO

Create Table Borrower
(
CardNo int Primary Key,
Name varchar(50) NOT NULL,
[Address] varchar(50) NOT NULL,
Phone varchar(15)
)
GO

Insert into Borrower
Values (1111,'Allen Arms','123 Arm St',5187894561)
	,(1112,'Brandon Banks','123 Bank st.',5187864913)
	,(1113,'Carl Canter','123 Cant St.',5181324567)
	,(1114,'Darryl Durnt','123 Durnt st.',5189157648)
	,(1115,'Elle Ernest','123 El St.',5181349751)
	,(1116,'Fanny Farmen','123 Fan st.',5181649751)
	,(1117,'George Gun','123 Gun ave.',5183126245)
	,(1118,'Hank Hill','123 Hill st.',5182226487)
GO


Create Table Book_Loans
(
BookID int NOT NULL,
BranchID int NOT NULL,
CardNo int NOT NULL,
DateOut varchar(20) NOT NULL,
DueDate varchar(20) NOT NULL
)
GO

Insert INTO Book_Loans
Values (1,1,1111,'02/02/92','05/02/92')
	,(2,1,1111,'02/02/92','05/02/92')
	,(3,1,1111,'02/02/92','05/02/92')
	,(4,1,1111,'02/02/92','05/02/92')
	,(5,1,1111,'02/02/92','05/02/92')
	,(6,1,1112,'02/02/92','05/02/92')
	,(7,1,1112,'02/02/92','05/02/92')
	,(8,1,1112,'02/02/92','05/02/92')
	,(9,1,1112,'02/02/92','05/02/92')
	,(10,1,1112,'02/02/92','05/02/92')
	,(11,1,1112,'02/02/92','05/02/92')
	,(12,1,1112,'02/02/92','05/02/92')
	,(13,1,1114,'02/02/92','05/02/92')
	,(14,1,1115,'02/02/92','05/02/92')
	,(15,1,1115,'02/02/92','05/02/92')
	,(16,1,1114,'02/02/92','05/02/92')
	,(17,1,1115,'02/02/92','05/02/92')
	,(18,1,1114,'02/02/92','05/02/92')
	,(19,1,1115,'02/02/92','05/02/92')
	,(20,1,1114,'02/02/92','05/02/92')
	,(1,2,1118,'02/02/92','05/02/92')
	,(2,2,1116,'02/02/92','05/02/92')
	,(3,2,1116,'02/02/92','05/02/92')
	,(4,2,1118,'02/02/92','05/02/92')
	,(5,2,1116,'02/02/92','05/02/92')
	,(6,2,1118,'02/02/92','05/02/92')
	,(7,2,1116,'02/02/92','05/02/92')
	,(8,2,1116,'02/02/92','05/02/92')
	,(9,2,1116,'02/02/92','05/02/92')
	,(10,2,1118,'02/02/92','05/02/92')
	,(1,3,1113,'02/02/92','05/02/92')
	,(2,3,1113,'02/02/92','05/02/92')
	,(3,3,1113,'02/02/92','05/02/92')
	,(4,3,1113,'02/02/92','05/02/92')
	,(5,3,1113,'02/02/92','05/02/92')
	,(6,3,1113,'02/02/92','05/02/92')
	,(7,3,1113,'02/02/92','05/02/92')
	,(8,3,1113,'02/02/92','05/02/92')
	,(9,3,1113,'02/02/92','05/02/92')
	,(10,3,1117,'02/02/92','05/02/92')
	,(11,3,1117,'02/02/92','05/02/92')
	,(12,3,1117,'02/02/92','05/02/92')
	,(13,3,1117,'02/02/92','05/02/92')
	,(14,3,1117,'02/02/92','05/02/92')
	,(15,3,1117,'02/02/92','05/02/92')
	,(16,3,1117,'02/02/92','05/02/92')
	,(1,4,1117,'02/02/92','05/02/92')
	,(2,4,1117,'02/02/92','05/02/92')
	,(3,4,1115,'02/02/92','05/02/92')
	,(4,4,1115,'02/02/92','05/02/92')
	
