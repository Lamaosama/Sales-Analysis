--Cleansed Customer_DataTable--
SELECT 
  [CustomerKey]
  --[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
   ,[FirstName]
  --,[MiddleName]
  ,[LastName]
  ,[FirstName] + ' ' + [LastName] AS [FullName] 
  --,[NameStyle]
  --,[BirthDate]
  -- ,[MaritalStatus]
  --,[Suffix]
  , 
  CASE WHEN [Gender] = 'M' THEN 'Male' ELSE 'Female' END AS Gender 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --  ,[AddressLine1]
  --  ,[AddressLine2]
  -- ,[Phone]
  ,[DateFirstPurchase]
  --  ,[CommuteDistance] 
  ,g.city AS CustomerCity 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] c 
  LEFT JOIN [AdventureWorksDW2019].dbo.DIMGeography g ON g.geographykey = c.GeographyKey 
ORDER BY 
  [DateFirstPurchase] DESC

