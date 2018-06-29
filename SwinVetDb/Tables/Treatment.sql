CREATE TABLE [dbo].[Treatment]
(
	[TreatmentId] INT NOT NULL Constraint PK_TreatmentId PRIMARY KEY (TreatmentId),
	[Date] VARCHAR(50) NOT NULL,
	[Notes] VARCHAR(50) NOT NULL,
	[PetId] INT NOT NULL Constraint FK_PetId FOREIGN KEY (PetId) REFERENCES [Pet](PetId),
	[OwnerId] INT NOT NULL FOREIGN KEY (OwnerId) REFERENCES [Owner](OwnerId),
	[ProcId] INT NOT NULL Constraint FK_ProcId FOREIGN KEY (ProcId) REFERENCES [Procedure](ProcId),
	[PricePaid] MONEY NOT NULL
)
