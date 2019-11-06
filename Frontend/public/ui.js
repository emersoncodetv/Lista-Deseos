class UI {
  constructor() {
    this.CUSTOMER;
  }

  listarDeseos(listaDeseos) {
    document.getElementById("mostrar-sugerencia").innerHTML = "";
    let HTMLListaDeseos = "";

    listaDeseos.forEach(deseo => {
      HTMLListaDeseos += `
      <tr>
        <td>${deseo.PRODUCT}</td>
        <td class="links">${deseo.ECOMMERCE_PRODUCT_NAME}</td>
        <td>${deseo.CURRENT_PRICE}</td>
        <td>${deseo.REGULAR_PRICE}</td>
        <td><a href="${deseo.URL}">Ver</a></td>
        <td>
        <button
          value="${deseo.PRODUCT}"
          type="button"
          class="btn btn-sm btn-outline-primary">
          Sugerencias
        </button>
        </td>
      </tr>
    `;
    });

    document.getElementById("lista-deseos").innerHTML = HTMLListaDeseos;
    document.getElementById("sesion").textContent = listaDeseos[0].CUSTOMER;
    this.CUSTOMER = listaDeseos[0].CUSTOMER;
  }

  agregarListaDeseos(deseo) {
    console.log(deseo);
    document.getElementById("lista-deseos").innerHTML += `<tr>
    <td>${deseo.productNameShort}</td>
    <td class="links">${deseo.name}</td>
    <td>${deseo.current_price}</td>
    <td>${deseo.regular_price || deseo.current_price}</td>
    <td><a href="${deseo.url}">Ver</a></td>
    <td>
    <button
      value="${deseo.productNameShort}"
      type="button"
      class="btn btn-sm btn-outline-primary">
      Sugerencias
    </button>
    </td>
  </tr>
  `;
  }

  agregarSugerencias(sugerencias, popularidad) {
    const mayorPopularidad = sugerencias.find(
      sugerencia => sugerencia.PRODUCT === popularidad.PRODUCT
    );
    document.getElementById("mostrar-sugerencia").innerHTML = `
      <h2>Sugerencia</h2>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <tbody>
          <tr>
          <td>${mayorPopularidad.PRODUCT}</td>
          <td class="links">${mayorPopularidad.ECOMMERCE_PRODUCT_NAME}</td>
          <td>${mayorPopularidad.CURRENT_PRICE}</td>
          <td>${mayorPopularidad.REGULAR_PRICE || mayorPopularidad.CURRENT_PRICE}</td>
          <td><a href="${mayorPopularidad.URL}">Ver</a></td>
          <td>
          </td>
        </tr>
          </tbody>
        </table>
      </div>
      `;
  }
}
