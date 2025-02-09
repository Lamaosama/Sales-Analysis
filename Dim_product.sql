SELECT [ProductKey]
      ,[ProductAlternateKey] AS ProductItemCode
--      ,[ProductSubcategoryKey]
--      ,[WeightUnitMeasureCode]
--      ,[SizeUnitMeasureCode]
      ,[EnglishProductName] AS Product_Name
	  ,pc.EnglishProductCategoryName AS Product_Category 
	  ,ps.EnglishProductSubcategoryName AS Product_SubCategory
--      ,[SpanishProductName]
--      ,[FrenchProductName]
--      ,[StandardCost]
--      ,[FinishedGoodsFlag]
      ,[Color] AS Product_Colour
--      ,[SafetyStockLevel]
--      ,[ReorderPoint]
--      ,[ListPrice]
--      ,[Size] AS Product_Size
--      ,[SizeRange]
--      ,[Weight]
--      ,[DaysToManufacture]
      ,[ProductLine] AS Product_Line
--      ,[DealerPrice]
--      ,[Class]
--      ,[Style]
      ,[ModelName] AS Product_Model_Name
--      ,[LargePhoto]
      ,[EnglishDescription] AS Product_Description 
--      ,[FrenchDescription]
--      ,[ChineseDescription]
--     ,[ArabicDescription]
--      ,[HebrewDescription]
--      ,[ThaiDescription]
--      ,[GermanDescription]
--      ,[JapaneseDescription]
--      ,[TurkishDescription]
--     ,[StartDate]
--      ,[EndDate]
--      ,[Status]
   ,ISNULL (p.[Status], 'Outdated') AS Product_Status
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] p
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  