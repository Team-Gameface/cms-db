USE [CMS]
GO
/****** Object:  StoredProcedure [dbo].[insertTermOfPayment]    Script Date: 08/01/2014 22:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertTermOfPayment] 

@name varchar(30),
@Status varchar(10),
@FreqStatus varchar(20),
@FreqValue int
--@DateCreated datetime,
--@DateModified datetime
As
Begin

insert into PAYMENT_TERM values(@name, @Status, @FreqStatus,@FreqValue,getdate(),getdate());

End















GO
