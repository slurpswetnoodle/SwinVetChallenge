CREATE TABLE [dbo].[Pet]
(
	[PetId] INT NOT NULL Constraint PK_PetId PRIMARY KEY (PetId),
	[PetName] VARCHAR(10) NOT NULL,
	[Type] VARCHAR(10) NOT NULL,
	[OwnerId] INT NOT NULL Constraint FK_OwnerId FOREIGN KEY(OwnerId) References Owner(OwnerId)
)
