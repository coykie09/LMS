USE [FINAL_TESTING]
GO
/****** Object:  StoredProcedure [dbo].[usp_Login]    Script Date: 2/9/2017 12:10:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[usp_Login]
	-- Add the parameters for the stored procedure here
	@username varchar(50),
	@password varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure her
	SELECT top 1 s.DESCRIPTION as [Status], p.DESCRIPTION, ua.LAST_NAME+','+ ua.FIRST_NAME as NAME from user_account ua inner join user_password up on ua.ID = up.USER_ID inner join position p on p.ID = ua.POSITION_ID inner join user_account_status_map s on s.CODE=ua.STATUS where RTRIM(LTRIM(ua.CODE))=@username and [PASSWORD]=@password
	
END
