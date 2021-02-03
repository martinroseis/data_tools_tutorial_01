/*
Vorlage für ein Skript nach der Bereitstellung							
--------------------------------------------------------------------------------------
 Diese Datei enthält SQL-Anweisungen, die an das Buildskript angefügt werden.		
 Schließen Sie mit der SQLCMD-Syntax eine Datei in das Skript nach der Bereitstellung ein.			
 Beispiel:   :r .\myfile.sql								
 Verwenden Sie die SQLCMD-Syntax, um auf eine Variable im Skript nach der Bereitstellung zu verweisen.		
 Beispiel:   :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

INSERT INTO dbo.Team(TeamId, TeamName, [CityName], Country)
SELECT 1, N'Callingmen', N'London', N'England'
WHERE NOT EXISTS (SELECT 1 FROM dbo.Team where TeamId = 1)
GO

INSERT INTO dbo.Team(TeamId, TeamName, [CityName], Country)
SELECT 2, N'Autobahns', N'Munich', N'Germany'
WHERE NOT EXISTS (SELECT 2 FROM dbo.Team where TeamId = 2)
GO
