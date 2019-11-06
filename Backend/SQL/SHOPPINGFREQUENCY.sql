DROP TABLE "JOSUELOZANO"."SHOPPINGFREQUENCY";

-- {"current_price":"$1.299.900UND","regular_price":"$1.379.900 UND","name":"Portátil 256Gb Ram 4Gb Endless 15 Pulgadas FHD Ci3 SSD X540UA-DM891 - Asus - 411441","url":"https://www.homecenter.com.co/homecenter-co/product/411441/?cid=prdhom961309&=INTERNO"}

CREATE TABLE "JOSUELOZANO"."SHOPPINGFREQUENCY" (
   "PRODUCT" VARCHAR(30),
   "CUSTOMER" VARCHAR(30),
   "PURCHASECOUNT" INT,
   "ECOMMERCE_PRODUCT_NAME" VARCHAR2(1000),
   "CURRENT_PRICE" VARCHAR2(1000),
   "REGULAR_PRICE" VARCHAR2(1000),
   "URL" VARCHAR2(1000)
);


INSERT INTO "JOSUELOZANO"."SHOPPINGFREQUENCY" (
   "PRODUCT",
   "CUSTOMER",
   "PURCHASECOUNT",
   "ECOMMERCE_PRODUCT_NAME",
   "CURRENT_PRICE",
   "REGULAR_PRICE",
   "URL"
)
select 'Portatil', 'Alice', 2 , 'Portatil Lenovo ThinkPad 11e Core i3 SSD 256GB Ram 8gb 11.6 " Win 10 ProLenovo','$1.459.900UND','$1.684.900 UND','https://www.homecenter.com.co/homecenter-co/product/404063/Portatil-Lenovo-ThinkPad-11e-Core-i3-SSD-256GB-Ram-8gb-11.6-Win-10-Pro/404063'from dual 
union all select 'Kits', 'Alice', 1, 'Kit Teclado Mouse Inalámbrico + Protector TecladoMymobile', '$59.900 UND','$59.900 UND','https://www.homecenter.com.co/homecenter-co/product/444683/Kit-Teclado-Mouse-Inalambrico-+-Protector-Teclado/444683' from dual
union all select 'Cable', 'Alice', 1, 'Cable Tv Adaptador de Hdmi as para Mac Book Mini', '$39.900UND', '$39.900UND', 'https://www.homecenter.com.co/homecenter-co/product/409187/Cable-Tv-Adaptador-de-Hdmi-as-para-Mac-Book-Mini?searchTerm=macbook' from dual
union all select 'Cable', 'Alice', 1 ,'Cable Micro USB De 60cmBPLUG', ' $10.900c/u', ' $10.900c/u', 'https://www.homecenter.com.co/homecenter-co/product/379057/Cable-Micro-USB-De-60cm/379057'from dual
union all select 'Portatil', 'Bryan', 2, 'Portatil Lenovo ThinkPad 11e Core i3 SSD 256GB Ram 8gb 11.6 " Win 10 ProLenovo','$1.459.900UND','$1.684.900 UND','https://www.homecenter.com.co/homecenter-co/product/404063/Portatil-Lenovo-ThinkPad-11e-Core-i3-SSD-256GB-Ram-8gb-11.6-Win-10-Pro/404063' from dual
union all select 'Kits', 'Bryan', 1, 'Kit Teclado Mouse Inalámbrico + Protector TecladoMymobile', '$59.900 UND','$59.900 UND','https://www.homecenter.com.co/homecenter-co/product/444683/Kit-Teclado-Mouse-Inalambrico-+-Protector-Teclado/444683' from dual
union all select 'Cable', 'Bryan', 1, 'Cable Tv Adaptador de Hdmi as para Mac Book Mini', '$39.900UND', '$39.900UND', 'https://www.homecenter.com.co/homecenter-co/product/409187/Cable-Tv-Adaptador-de-Hdmi-as-para-Mac-Book-Mini?searchTerm=macbook' from dual
union all select 'Cable', 'Bryan', 1 ,'Cable Micro USB De 60cmBPLUG', ' $10.900c/u', ' $10.900c/u', 'https://www.homecenter.com.co/homecenter-co/product/379057/Cable-Micro-USB-De-60cm/379057'from dual
union all select 'Portatil', 'Bob', 1, 'Portatil Lenovo ThinkPad 11e Core i3 SSD 256GB Ram 8gb 11.6 " Win 10 ProLenovo','$1.459.900UND','$1.684.900 UND','https://www.homecenter.com.co/homecenter-co/product/404063/Portatil-Lenovo-ThinkPad-11e-Core-i3-SSD-256GB-Ram-8gb-11.6-Win-10-Pro/404063' from dual
union all select 'Cable', 'Bob', 1 ,'Cable Micro USB De 60cmBPLUG', ' $10.900c/u', ' $10.900c/u', 'https://www.homecenter.com.co/homecenter-co/product/379057/Cable-Micro-USB-De-60cm/379057'from dual
union all select 'Portatil', 'Chloe', 1, 'Portatil Lenovo ThinkPad 11e Core i3 SSD 256GB Ram 8gb 11.6 " Win 10 ProLenovo','$1.459.900UND','$1.684.900 UND','https://www.homecenter.com.co/homecenter-co/product/404063/Portatil-Lenovo-ThinkPad-11e-Core-i3-SSD-256GB-Ram-8gb-11.6-Win-10-Pro/404063' from dual
union all select 'Cable', 'Chloe', 2, 'Cable Tv Adaptador de Hdmi as para Mac Book Mini', '$39.900UND', '$39.900UND', 'https://www.homecenter.com.co/homecenter-co/product/409187/Cable-Tv-Adaptador-de-Hdmi-as-para-Mac-Book-Mini?searchTerm=macbook' from dual
union all select 'Cable', 'Debbie', 2 ,'Cable Micro USB De 60cmBPLUG', ' $10.900c/u', ' $10.900c/u', 'https://www.homecenter.com.co/homecenter-co/product/379057/Cable-Micro-USB-De-60cm/379057'from dual
union all select 'Cable', 'Debbie', 2, 'Cable Tv Adaptador de Hdmi as para Mac Book Mini', '$39.900UND', '$39.900UND', 'https://www.homecenter.com.co/homecenter-co/product/409187/Cable-Tv-Adaptador-de-Hdmi-as-para-Mac-Book-Mini?searchTerm=macbook' from dual
union all select 'Kits', 'Debbie', 3, 'Kit Teclado Mouse Inalámbrico + Protector TecladoMymobile', '$59.900 UND','$59.900 UND','https://www.homecenter.com.co/homecenter-co/product/444683/Kit-Teclado-Mouse-Inalambrico-+-Protector-Teclado/444683' from dual
union all select 'Cable', 'Debbie', 1 ,'Cable Micro USB De 60cmBPLUG', ' $10.900c/u', ' $10.900c/u', 'https://www.homecenter.com.co/homecenter-co/product/379057/Cable-Micro-USB-De-60cm/379057'from dual
union all select 'TV', 'Carlos', 1 , 'TV 49" UN49RU7300KXZL-UHD CurvoSamsung','$1.329.900Und', '$1.329.900Und' , 'https://www.homecenter.com.co/homecenter-co/product/412422/TV-49-UN49RU7300KXZL-UHD-Curvo/412422'from dual
union all select 'Altavoz', 'Carlos', 1 ,'Altavoz Inteligente Echo Dot Amazon Con AlexaAmazon', '$189.900c/u', '$189.900c/u', 'https://www.homecenter.com.co/homecenter-co/product/388819/?cid=494566&=INTERNA'from dual
union all select 'TV', 'Pedro', 1 , 'TV 49" UN49RU7300KXZL-UHD CurvoSamsung','$1.329.900Und', '$1.329.900Und' , 'https://www.homecenter.com.co/homecenter-co/product/412422/TV-49-UN49RU7300KXZL-UHD-Curvo/412422'from dual
union all select 'Altavoz', 'Pedro', 1 , 'Altavoz Inteligente Google Home Mini Asistente NegroGoogle', '$159.900UND', '$199.900 UND', 'https://www.homecenter.com.co/homecenter-co/product/373034/Altavoz-Inteligente-Google-Home-Mini-Asistente-Negro/373034' from dual
union all select 'TV', 'Pablo', 1 , 'TV 49" UN49RU7300KXZL-UHD CurvoSamsung','$1.329.900Und', '$1.329.900Und' , 'https://www.homecenter.com.co/homecenter-co/product/412422/TV-49-UN49RU7300KXZL-UHD-Curvo/412422'from dual
union all select 'Altavoz', 'Pablo', 1 ,'Altavoz Inteligente Echo Dot Amazon Con AlexaAmazon', '$189.900c/u', '$189.900c/u', 'https://www.homecenter.com.co/homecenter-co/product/388819/?cid=494566&=INTERNA'from dual
union all select 'TV', 'Pepe', 2 , 'TV 49" UN49RU7300KXZL-UHD CurvoSamsung','$1.329.900Und', '$1.329.900Und' , 'https://www.homecenter.com.co/homecenter-co/product/412422/TV-49-UN49RU7300KXZL-UHD-Curvo/412422'from dual
union all select 'SoporteTV', 'Pepe', 1 ,'Soporte tv plasma 32-60" fijo con niveladorElectric Line','$69.900UND', '$69.900UND', 'https://www.homecenter.com.co/homecenter-co/product/222978/Soporte-tv-plasma-32-60-fijo-con-nivelador/222978'from dual
union all select 'TV', 'Pepa', 1 , 'TV 49" UN49RU7300KXZL-UHD CurvoSamsung','$1.329.900Und', '$1.329.900Und' , 'https://www.homecenter.com.co/homecenter-co/product/412422/TV-49-UN49RU7300KXZL-UHD-Curvo/412422'from dual
union all select 'SoporteTV', 'Pepa', 1 ,'Soporte tv plasma 32-60" fijo con niveladorElectric Line','$69.900UND', '$69.900UND', 'https://www.homecenter.com.co/homecenter-co/product/222978/Soporte-tv-plasma-32-60-fijo-con-nivelador/222978'from dual
union all select 'TV', 'Lasha', 1 , 'TV 49" UN49RU7300KXZL-UHD CurvoSamsung','$1.329.900Und', '$1.329.900Und' , 'https://www.homecenter.com.co/homecenter-co/product/412422/TV-49-UN49RU7300KXZL-UHD-Curvo/412422'from dual
union all select 'SoporteTV', 'Lasha', 1 ,'Soporte tv plasma 32-60" fijo con niveladorElectric Line','$69.900UND', '$69.900UND', 'https://www.homecenter.com.co/homecenter-co/product/222978/Soporte-tv-plasma-32-60-fijo-con-nivelador/222978'from dual
union all select 'TV', 'Juan', 1 , 'TV 49" UN49RU7300KXZL-UHD CurvoSamsung','$1.329.900Und', '$1.329.900Und' , 'https://www.homecenter.com.co/homecenter-co/product/412422/TV-49-UN49RU7300KXZL-UHD-Curvo/412422'from dual
union all select 'Altavoz', 'Juan', 1 , 'Altavoz Inteligente Google Home Mini Asistente NegroGoogle', '$159.900UND', '$199.900 UND', 'https://www.homecenter.com.co/homecenter-co/product/373034/Altavoz-Inteligente-Google-Home-Mini-Asistente-Negro/373034' from dual
union all select 'TV', 'Laura', 1 , 'TV 49" UN49RU7300KXZL-UHD CurvoSamsung','$1.329.900Und', '$1.329.900Und' , 'https://www.homecenter.com.co/homecenter-co/product/412422/TV-49-UN49RU7300KXZL-UHD-Curvo/412422'from dual
union all select 'Altavoz', 'Laura', 1 , 'Altavoz Inteligente Google Home Mini Asistente NegroGoogle', '$159.900UND', '$199.900 UND', 'https://www.homecenter.com.co/homecenter-co/product/373034/Altavoz-Inteligente-Google-Home-Mini-Asistente-Negro/373034' from dual;

--PREDICTION
SELECT B.Product,
   SUM(A.PurchaseCount * B.PurchaseCount) AS Popularity
FROM "JOSUELOZANO"."SHOPPINGFREQUENCY" A
INNER JOIN "JOSUELOZANO"."SHOPPINGFREQUENCY" B
ON A.Customer = B.Customer
   AND A.Product <> B.Product
WHERE A.Product = 'Portatil'
GROUP BY B.Product
ORDER BY Popularity DESC;