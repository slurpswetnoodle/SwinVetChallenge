CREATE TABLE [dbo].[Owner]
(
	[OwnerId] INT NOT NULL Constraint PK_OwnerId PRIMARY KEY (OwnerId),
	[Surname] VARCHAR(20) NOT NULL,
	[GivenName] VARCHAR(20) NOT NULL,
	[Phone] INT NOT NULL
)
