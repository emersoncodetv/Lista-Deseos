class Backend {
  constructor() {
    this.usuario = "";
  }

  async getDataUser(usuario) {
    let datos;
    if (usuario != "") {
      datos = await fetch("./getUserData", {
        method: "POST",
        headers: {
          Accept: "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
          user: usuario
        })
      });
    }
    const json = await datos.json();
    this.usuario = usuario;
    return json;
  }

  async newWish(tipo, link) {
    let datos;
    if (tipo != "" && link != "") {
      datos = await fetch("./getSaveItemWebpage", {
        method: "POST",
        headers: {
          Accept: "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
          productNameShort: tipo,
          customer: this.usuario,
          link
        })
      });
    }
    const json = await datos.json();
    return json;
  }

  async nextBestOffer(product) {
    let datos;
    if (product != "") {
      datos = await fetch("./getNextOffer", {
        method: "POST",
        headers: {
          Accept: "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
          product
        })
      });
    }
    const json = await datos.json();
    return json;
  }

  async getFullNextBestOffer(next_best_offer) {
    let datos;
    if (next_best_offer != "") {
      datos = await fetch("./getFullNextOffer", {
        method: "POST",
        headers: {
          Accept: "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
          next_best_offer
        })
      });
    }
    const json = await datos.json();
    return json;
  }
}
