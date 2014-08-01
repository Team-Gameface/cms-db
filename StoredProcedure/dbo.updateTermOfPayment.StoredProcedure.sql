USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[updateTermOfPayment]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateTermOfPayment]

@name varchar(30),
@Status varchar(10),
@FreqStatus varchar(20),
@FreqValue int
AS
BEGIN
update PAYMENT_TERM set Name = @name, Status = @Status, FrequencyStatus = @FreqStatus, FrequencyValue = @FreqValue, DateModified = getdate();

END















GO
