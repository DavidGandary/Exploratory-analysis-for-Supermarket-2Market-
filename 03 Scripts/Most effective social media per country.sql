SELECT "Country", SUM ("AlcLiquidAmt") AS "Total alcohol",SUM ("VegAmt") AS "Total Vegetables",
SUM("MeatAmt") AS "Total Meat",
SUM("FishAmt") AS "Total Fish",SUM("ChocolateAmt") AS "Total Chocolate",
SUM("CommoditiesAmt")AS "Total Commodities",SUM("Bulkmail_ad") AS "Bulkmail", SUM("Twitter_ad") AS "Twitter",
SUM("Instagram_ad") AS "Instagram",
SUM("Facebook_ad") AS "Facebook",SUM("Brochure_ad") AS "Brochure",SUM("LeadConvo") AS "Lead Conversations"
FROM Public."marketing_data"
JOIN "ad_data"
USING ("ID")
GROUP BY "Country";

	
SELECT "Country", SUM("Bulkmail_ad") AS "Bulkmail", SUM("Twitter_ad") AS "Twitter",SUM("Instagram_ad") AS "Instagram",
SUM("Facebook_ad") AS "Facebook",SUM("Brochure_ad") AS "Brochure",SUM("LeadConvo") AS "Lead Conversations"
FROM public."ad_data" a
JOIN "marketing_data" m
USING ("ID")
GROUP BY"Country";
ORDER BY "Lead Conversations" DESC
;