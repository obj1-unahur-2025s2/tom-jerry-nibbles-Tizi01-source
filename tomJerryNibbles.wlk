

object tom {
    var energia = 50
    method energia() = energia

    var velocidadMaxima = 5 + (energia/10)
    method velocidadMaxima() = velocidadMaxima

    method comerRaton(raton) {
      energia = energia + (12 + raton.peso())
      return "Tom comió a" + raton
    }

    method correr(distancia) {
      energia = energia - (distancia / 2)
      return "Tom corrió una distancia de " + distancia + " metros"
    }
}

object jerry {
    var edad = 2
    method edad() = edad

    method peso() = edad * 20
}

object nibbles {
  method edad() = 35

  method peso() = self.edad() * 20
}

// Inventar otro ratón