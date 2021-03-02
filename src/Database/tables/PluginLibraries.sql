﻿CREATE TABLE dbo.PluginLibraries
(
	Id INT IDENTITY(1, 1) NOT NULL CONSTRAINT PK_PluginLibraries PRIMARY KEY,
	PluginId INT NOT NULL CONSTRAINT FK_PluginLibraries_PluginId FOREIGN KEY REFERENCES dbo.Plugins(Id),
	FileName NVARCHAR(255) NOT NULL,
	Data VARBINARY(MAX) NOT NULL
)