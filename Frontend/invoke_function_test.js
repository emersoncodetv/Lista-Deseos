var invoke = require("./invokeFunction");

// const get_full_next_offer = "ocid1.fnfunc.oc1.phx.aaaaaaaaacrewr63nzqyplhxcobvevxfuqsj3qqxcstxb4jekvhrj2paio3q";

// invoke.InsertData(
//   {
//     path: `/20181201/functions/${get_full_next_offer}/actions/invoke`,
//     host: "6q2o72e3mba.us-phoenix-1.functions.oci.oraclecloud.com"
//   },
//   {
//     next_best_offer: ["PortatilLenovo", "KitTecladoMouse"]
//   }
// );

// const get_user_data =
//   "ocid1.fnfunc.oc1.phx.aaaaaaaaacnjinnheg6jpydofeueovpvmkljncqn22vtdq4uszo7hxewgelq";

// invoke.InsertData(
//   {
//     path: `/20181201/functions/${get_user_data}/actions/invoke`,
//     host: "6q2o72e3mba.us-phoenix-1.functions.oci.oraclecloud.com"
//   },
//   {
//     user: "Alice"
//   }
// );

const get_save_item_webpage =
  "ocid1.fnfunc.oc1.phx.aaaaaaaaaaix7bo3jfoaabxwfordyw4x7thuueussy5grifoqccngaqse3lq";

invoke.InsertData(
  {
    path: `/20181201/functions/${get_save_item_webpage}/actions/invoke`,
    host: "6q2o72e3mba.us-phoenix-1.functions.oci.oraclecloud.com"
  },
  {
    productNameShort: "PortatilLenovo",
    customer: "Alice",
    link:
      "https://www.homecenter.com.co/homecenter-co/product/404063/Portatil-Lenovo-ThinkPad-11e-Core-i3-SSD-256GB-Ram-8gb-11.6-Win-10-Pro?searchTerm=portatil%20lenovo"
  }
);
