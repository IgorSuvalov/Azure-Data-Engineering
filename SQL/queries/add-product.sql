USE [AdventureWorksLT2022]
GO

INSERT INTO [SalesLT].[Product]
           ([Name]
           ,[ProductNumber]
           ,[Color]
           ,[StandardCost]
           ,[ListPrice]
           ,[Size]
           ,[Weight]
           ,[ProductCategoryID]
           ,[ProductModelID]
           ,[SellStartDate]
           ,[SellEndDate]
           ,[DiscontinuedDate]
           ,[ThumbNailPhoto]
           ,[ThumbnailPhotoFileName]
           ,[rowguid]
           ,[ModifiedDate])
     VALUES
           ('Abob'
           ,'PN-322'
           ,'Green'
           ,441
           ,552
           ,'L'
           ,2.5
           ,2
           ,12
           ,'2009-04-03'
           ,Null
           ,Null
           ,0x
           ,'bob2.jpg'
           ,NEWID()
           ,GETDATE())
GO
