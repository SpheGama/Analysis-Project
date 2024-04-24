SELECT [DateKey]
      ,[FullDateAlternateKey] As Date
      ---,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] As Day
     --- ,[SpanishDayNameOfWeek]
     --- ,[FrenchDayNameOfWeek]
      ---,[DayNumberOfMonth]
      ---,[DayNumberOfYear]
      ,[WeekNumberOfYear] As WeekNo
      ,[EnglishMonthName] As Month
	  ,left([EnglishMonthName],3) As MonthShort
      ---,[SpanishMonthName]
      ---,[FrenchMonthName]
      ,[MonthNumberOfYear] As MonthNo
      ,[CalendarQuarter] As Quarter
      ,[CalendarYear] As Year
      ---,[CalendarSemester]
      ---,[FiscalQuarter]
      ---,[FiscalYear]
      ---,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where CalendarYear >=  2019