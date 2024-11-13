SELECT "Country", SUM("Bulkmail_ad") AS "Bulkmail", SUM("Twitter_ad") AS "Twitter",SUM("Instagram_ad") AS "Instagram",
SUM("Facebook_ad") AS "Facebook",SUM("Brochure_ad") AS "Brochure",SUM("LeadConvo") AS "Lead Conversations"
FROM public."ad_data" a
JOIN "marketing_data" m
USING ("ID")
GROUP BY"Country"
ORDER BY "Lead Conversations" DESC;