CREATE TABLE [dbo].[Procedure]
(
	[ProcId] INT NOT NULL Constraint PK_ProcId PRIMARY KEY(ProcId),
	[Description] VARCHAR(50) NOT NULL,
	[Price] MONEY NOT NULL
)
