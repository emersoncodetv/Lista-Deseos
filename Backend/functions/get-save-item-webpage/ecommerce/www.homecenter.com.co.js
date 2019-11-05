const getDataFromDocument = (context, event, callback) => {
  let data = {};
  // Precio
  data.current_price = document.querySelectorAll('p[class*="price"]')[1].innerText;
  // Precio Normal

  if (document.getElementsByClassName("line-through").length !== 0)
    data.regular_price = document.getElementsByClassName("line-through")[0].innerText;

  data.name = document.title;
  data.url = document.URL;
  // let data = [];
  // let elements = document.getElementsByClassName("myclass");
  // for (var element of elements) data.push(element.textContent);
  // return data;
  console.log(data);
  return data;
  // return "Hello World";
};

module.exports = getDataFromDocument;
