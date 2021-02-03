CREATE TABLE [dbo].[Team]
(
	[TeamId] INT NOT NULL PRIMARY KEY, 
    [TeamName] NVARCHAR(255) NOT NULL, 
    [CityName] NVARCHAR(50) NOT NULL, 
    [Country] NVARCHAR(50) NOT NULL, 
    CONSTRAINT UQ_TeamName UNIQUE (TeamName) 
)

GO

