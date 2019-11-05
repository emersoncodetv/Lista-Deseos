DROP TABLE "JOSUELOZANO"."SHOPPINGFREQUENCY";

CREATE TABLE "JOSUELOZANO"."SHOPPINGFREQUENCY" (
   "PRODUCT" VARCHAR(10),
   "CUSTOMER" VARCHAR(10),
   "CURRENT_PRICE"   VARCHAR2(1000),
   "REGULAR_PRICE"   VARCHAR2(1000),
   "URL"   VARCHAR2(1000),
   "PURCHASECOUNT" INT
);


INSERT INTO "JOSUELOZANO"."SHOPPINGFREQUENCY" (
   "PRODUCT",
   "CUSTOMER",
   "PURCHASECOUNT"
)
select 'MacBook', 'Alice', 2 from dual 
union all select 'KeybMacPro', 'Alice', 1 from dual
union all select 'ProtecCase', 'Alice', 1 from dual
union all select 'USBadapter', 'Alice', 1 from dual
union all select 'MacBook', 'Bryan', 2 from dual
union all select 'KeybMacPro', 'Bryan', 1 from dual
union all select 'ProtecCase', 'Bryan', 1 from dual
union all select 'USBadapter', 'Bryan', 1 from dual
union all select 'MacBook', 'Bob', 1 from dual
union all select 'USBadapter', 'Bob', 1 from dual
union all select 'MacBook', 'Chloe', 1 from dual
union all select 'ProtecCase', 'Chloe', 2 from dual
union all select 'USBadapter', 'Debbie', 2 from dual
union all select 'ProtecCase', 'Debbie', 2 from dual
union all select 'KeybMacPro', 'Debbie', 3 from dual
union all select 'Boots', 'Debbie', 1 from dual
union all select 'USBadapter', 'Debbie', 1 from dual
union all select 'TV51inch', 'Carlos', 1 from dual
union all select 'BoseSound', 'Carlos', 1 from dual
union all select 'TV51inch', 'Pedro', 1 from dual
union all select 'SonySound', 'Pedro', 1 from dual
union all select 'TV51inch', 'Pablo', 1 from dual
union all select 'BoseSound', 'Pablo', 1 from dual
union all select 'TV51inch', 'Pepe', 2 from dual
union all select 'WallAdapt', 'Pepe', 1 from dual
union all select 'TV51inch', 'Pepa', 1 from dual
union all select 'WallAdapt', 'Pepa', 1 from dual
union all select 'TV51inch', 'Lasha', 1 from dual
union all select 'WallAdapt', 'Lasha', 1 from dual
union all select 'TV51inch', 'Juan', 1 from dual
union all select 'SonySound', 'Juan', 1 from dual
union all select 'TV51inch', 'Laura', 1 from dual
union all select 'SonySound', 'Laura', 1 from dual
;

--PREDICTION
SELECT B.Product,
   SUM(A.PurchaseCount * B.PurchaseCount) AS Popularity
FROM ShoppingFrequency A
INNER JOIN ShoppingFrequency B
ON A.Customer = B.Customer
   AND A.Product <> B.Product
WHERE A.Product = 'MacBook'
GROUP BY B.Product
ORDER BY Popularity DESC;