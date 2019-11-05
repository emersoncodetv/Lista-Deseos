const fdk = require("@fnproject/fdk");
const oracledb = require("oracledb");
const getChromeBrowser = require("./get-chrome-browser.js");
const ecommerce = require("./ecommerce/www.homecenter.com.co.js");

oracledb.outFormat = oracledb.OBJECT;
oracledb.fetchAsString = [oracledb.CLOB];

let pool;

fdk.handle(async function(input) {
  const browser = await getChromeBrowser();
  const page = await browser.newPage();

  await page.setViewport({ width: 1920, height: 1080 });
  await page.setRequestInterception(true);
  await page.setCacheEnabled(false);

  page.on("request", req => {
    if (
      req.resourceType() == "stylesheet" ||
      req.resourceType() == "font" ||
      req.resourceType() == "image" ||
      req.resourceType() == "media" ||
      req.resourceType() == "script" ||
      req.resourceType() == "texttrack" ||
      req.resourceType() == "xhr" ||
      req.resourceType() == "fetch" ||
      req.resourceType() == "eventsource" ||
      req.resourceType() == "websocket"
    ) {
      req.abort();
    } else {
      req.continue();
    }
  });

  await page.goto(input.link);

  let data = await page.evaluate(ecommerce);

  await browser.close();

  // return data;
  if (!pool) {
    pool = await oracledb.createPool({
      user: process.env.DB_USER || "admin",
      password: process.env.DB_PASSWORD || "123QWEasdZXC.",
      connectString: process.env.CONNECT_STRING || "madhack2_low"
    });
  }

  const connection = await pool.getConnection();

  await connection.execute(
    `insert into JOSUELOZANO.SHOPPINGFREQUENCY (    
          PRODUCT,
          CUSTOMER,
          PURCHASECOUNT,
          ECOMMERCE_PRODUCT_NAME,
          CURRENT_PRICE,
          REGULAR_PRICE,
          URL
        ) values (
          :product, 
          :customer, 
          :purchasecount, 
          :ecommerceProductName, 
          :currentPrice,
          :regularPrice,
          :url
        )`,
    {
      product: input.productNameShort,
      customer: input.customer,
      purchasecount: 1,
      ecommerceProductName: data.name,
      currentPrice: data.current_price,
      regularPrice: data.regular_price,
      url: data.url
    },
    { autoCommit: true }
  );

  // const insert = await connection.execute(
  //   "insert into EXPRESSIONS (CAPTURED_AT,EXPRESSION,PROBABILITY) values (:capturedAt, :expression, :probability )",
  //   {
  //     capturedAt: getStringDate(),
  //     expression: "Feliz",
  //     probability: 0.5234523
  //   },
  //   { autoCommit: true }
  // );
  await connection.close();
  return { ...data, ...input };
}, {});

// {"current_price":"$1.299.900UND","regular_price":"$1.379.900 UND","name":"Portátil 256Gb Ram 4Gb Endless 15 Pulgadas FHD Ci3 SSD X540UA-DM891 - Asus - 411441","url":"https://www.homecenter.com.co/homecenter-co/product/411441/?cid=prdhom961309&=INTERNO"}
