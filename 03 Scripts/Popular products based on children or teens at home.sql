SELECT SUM ("AlcLiquidAmt") AS "Total alcohol",SUM ("VegAmt") AS "Total Vegetables",
SUM("MeatAmt") AS "Total Meat",
SUM("FishAmt") AS "Total Fish",SUM("ChocolateAmt") AS "Total Chocolate",
SUM("CommoditiesAmt")AS "Total Commodities"
FROM Public."marketing_data"
WHERE "Kid home" <> 0 AND "Teen home" <> 0
