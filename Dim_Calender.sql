---cleansed Dim_DateTable---
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date
  --,[DayNumberOfWeek] 
  ,[EnglishDayNameOfWeek] As Week
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear] 
    ,[WeekNumberOfYear] AS Week_Num, 
    [EnglishMonthName]  AS Month,
	LEFT([EnglishMonthName],3) AS Short_month,
  --,[SpanishMonthName]
  --,[FrenchMonthName], 
   [MonthNumberOfYear] AS Month_num, 
   [CalendarQuarter]    As Quarter , 
   [CalendarYear] AS Year
   -- ,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  -- ,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE [CalendarYear] > = 2019 
