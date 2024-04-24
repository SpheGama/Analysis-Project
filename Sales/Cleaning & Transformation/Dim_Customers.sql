SELECT CustomerKey
     --- ,[CustomerAlternateKey]
     --- ,[Title]
      ,FirstName as [First Name]
     --- ,[MiddleName]
      ,LastName as [Last Name]
    ---  ,[NameStyle]
    ---  ,[BirthDate]
     --- ,[MaritalStatus]
    ---  ,[Suffix]
		, FirstName + ' ' + LastName as [Full Name]    --- combined firstname with lastname to get fullname
      ,Case Gender
		  when 'M' THEN 'Male'
		  when 'F' Then 'Female'
		End As Gender
   ---   ,[EmailAddress]
    ---  ,[YearlyIncome]
   ---   ,[TotalChildren]
    ---  ,[NumberChildrenAtHome]
    ---  ,[EnglishEducation]
    ---  ,[SpanishEducation]
    ---  ,[FrenchEducation]
    ---  ,[EnglishOccupation]
   ---   ,[SpanishOccupation]
    ---  ,[FrenchOccupation]
   ---   ,[HouseOwnerFlag]
    ---  ,[NumberCarsOwned]
    ---  ,[AddressLine1]
     --- ,[AddressLine2]
   ---   ,[Phone]
      ,DateFirstPurchase
   ---   ,[CommuteDistance]
   ---  ,GeographyKey

   --- joined DimCustomer and DimGeography table to get customer city
	,g.City as [Customer City]
			
	from dbo.DimCustomer as c
	  left join dbo.DimGeography as g
	  on c.GeographyKey = g.GeographyKey
	  order by Customerkey ASC