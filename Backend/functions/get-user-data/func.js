const fdk = require("@fnproject/fdk");
const oracledb = require("oracledb");
oracledb.outFormat = oracledb.OBJECT;
// oracledb.fetchAsString = [oracledb.CLOB];

let pool;

fdk.handle(async function(input) {
  if (!pool) {
    pool = await oracledb.createPool({
      user: process.env.DB_USER || "admin",
      password: process.env.DB_PASSWORD || "123QWEasdZXC.",
      connectString: process.env.CONNECT_STRING || "madhack2_low"
    });
  }
  const connection = await pool.getConnection();
  const records = await connection.execute(
    `select PRODUCT,POPULARITY from table(JOSUELOZANO.next_offer('${input.product}'))`
  );
  // const result = records.rows.map(row => {
  //   return {
  //     product: row.PRODUCT,
  //     popularity: row.POPULARITY
  //   };
  // });
  await connection.close();
  return records;
}, {});
