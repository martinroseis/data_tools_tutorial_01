CREATE PROCEDURE [dbo].[GetTeam]
	@TeamId int
AS
	SET NOCOUNT ON;

	SELECT * 
	FROM dbo.Team
	WHERE TeamId = @TeamId

GO