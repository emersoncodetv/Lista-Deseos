const ui = new UI();
const backend = new Backend();

const filter = document.getElementById("filtrar");
const inciar_sesion = document.getElementById("iniciar-sesion");
const agregar_deseo = document.getElementById("agregar-deseo");
const sugerencias = document.querySelector(".table");

document
  .getElementById("tipo-producto")
  .addEventListener("click", e => console.log(e.target.value));

// filter tasks
function filterTasks(e) {
  const text = e.target.value.toLowerCase();

  document.querySelectorAll(".links").forEach(function(task) {
    const item = task.firstChild.textContent;
    if (item.toLowerCase().indexOf(text) != -1) {
      task.parentElement.style.display = "";
    } else {
      task.parentElement.style.display = "none";
    }
  });
  // console.log(e.target.value);
}

function getUserData(e) {
  // e.preventDefault();
  const usuario = document.getElementById("usuario").value;
  // console.log(usuario);
  backend
    .getDataUser(usuario)
    .then(data => {
      ui.listarDeseos(data.rows);
    })
    .catch(err => console.log(err));
  // weather.changeLocation(city, country);
  $("#iniciarModal").modal("hide");
}

function agregarDeseo(e) {
  const tipo = document.getElementById("tipo-producto").value;
  const link = document.getElementById("link").value;
  backend
    .newWish(tipo, link)
    .then(data => {
      ui.agregarListaDeseos(data);
    })
    .catch(err => console.log(err));
  $("#modalNuevoDeseo").modal("hide");
}

function obtenerSugerencias(e) {
  console.log(e.target.value);
  backend
    .nextBestOffer(e.target.value)
    .then(nextBestOffer => {
      console.log(nextBestOffer);
      backend
        .getFullNextBestOffer(nextBestOffer.rows.map(value => value.PRODUCT))
        .then(fullNextBestOffer =>
          ui.agregarSugerencias(fullNextBestOffer.rows, nextBestOffer.rows[0])
        )
        .catch(err => console.log(err));
      // ui.agregarListaDeseos(data);
    })
    .catch(err => console.log(err));
}

// Cargar todos los eventListeners
function loadEventListeners() {
  // filter task event
  filter.addEventListener("keyup", filterTasks);
  // Trae los datos de uno de los usuarios de la base de datos
  inciar_sesion.addEventListener("click", getUserData);
  // Guarda un nuevo deseo
  agregar_deseo.addEventListener("click", agregarDeseo);
  // invoca el algoritmo analitico de sugerencias
  sugerencias.addEventListener("click", obtenerSugerencias);
}

// Cargar todos los eventListeners
loadEventListeners();
//
