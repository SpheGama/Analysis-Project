SELECT p.ProductKey
      ,p.ProductAlternateKey as ProductItemCode
      ,psub.EnglishProductSubcategoryName as [Sub Category]
	  ,pc.EnglishProductCategoryName as [Product Category]
     --- ,[WeightUnitMeasureCode]
     --- ,[WeightUnitMeasureCode]
      ---,[SizeUnitMeasureCode]
     --- ,[WeightUnitMeasureCode]
     ---,[SpanishProductName]
     --- ,[FrenchProductName]
     --- ,[StandardCost]
      ---,[FinishedGoodsFlag]
      ,p.Color as [Product Color]
      ---,[SafetyStockLevel]
      ---,[ReorderPoint]
      ---,[ListPrice]
      ,p.Size as [Product Size]
      ---,[SizeRange]
      ---,[Weight]
     --- ,[DaysToManufacture]
      ,p.ProductLine as [Product Line]
      ---,[DealerPrice]
      ---,[Class]
     --- ,[Style]
      ,p.ModelName as [Product Model Name]
      ---,[LargePhoto]
      ,p.EnglishDescription as [Product Description]
      ---,[FrenchDescription]
      ---,[ChineseDescription]
     --- ,[ArabicDescription]
      ---,[HebrewDescription]
      ---,[ThaiDescription]
      ---,[GermanDescription]
      ---,[JapaneseDescription]
      ---,[TurkishDescription]
      ---,[StartDate]
      ---,[EndDate]
      ,isnull (p.Status,'Outdated') as [Product Status]

  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
  left join dbo.DimProductSubcategory as psub
  on psub.ProductSubcategoryKey  = p.ProductSubcategoryKey

  left join dbo.DimProductCategory as pc
  on psub.ProductCategoryKey = pc.ProductCategoryKey

  order by p.ProductKey asc

  ---p is DimProduct table
  ---psub is DimProductSubCategory
  ----pc is DimProductCategory
