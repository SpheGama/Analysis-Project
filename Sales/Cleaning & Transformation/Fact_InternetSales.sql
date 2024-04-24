SELECT f.ProductKey as ProductKey
	  ,CONVERT(date,convert(char(8),f.OrderdateKey)) as OrderDateKey --- convert into date
	  ---,f.OrderdateKey as ex
	  ,CONVERT(date,convert(char(8),f.DueDateKey)) as DueDateKey
	  ,CONVERT(date,convert(char(8),f.ShipDateKey)) as ShipDateKey
      ,f.CustomerKey
      ---,[PromotionKey]
      ---,[CurrencyKey]
      ---,[SalesTerritoryKey]
      ,f.SalesOrderNumber
      ---,[SalesOrderLineNumber]
      ---,[RevisionNumber]
      ---,f.OrderQuantity
      ---,[UnitPrice]
      ---,[ExtendedAmount]
      ---,[UnitPriceDiscountPct]
      ---,[DiscountAmount]
      ---,[ProductStandardCost]
      ,f.TotalProductCost
      ,f.SalesAmount
      ---,[TaxAmt]
      ---,[Freight]
      ---,[CarrierTrackingNumber]
      ---,[CustomerPONumber]
      ---,[OrderDate]
      ---,[DueDate]
      ---,[ShipDate]
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales] as f
  where left (f.OrderdateKey,4) >= YEAR(Getdate()) - 2 ---ensure that we only bring data from 2years back 
  order by OrderDateKey ASC
