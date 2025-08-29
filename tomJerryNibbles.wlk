
object tom {
    var energia = 50
    method energia() = energia

    var velocidadMaxima = 5 + (energia/10)
    method velocidadMaxima() = velocidadMaxima

    method comerRaton(raton) {
      energia += (12 + raton.peso())
      return "Tom comió a" + raton
    }

    method correr(distancia) {
      energia -= (distancia / 2)
      return "Tom corrió una distancia de " + distancia + " metros"
    }

    method puedeCazar(raton) {
      return energia > raton.distanciaRaton()
    }

    method cazarRaton(raton) {
        if(self.puedeCazar(raton)){
            self.correr(raton.distanciaRaton())
            self.comerRaton(raton)
        }
    }
}

object jerry {
    var edad = 2
    method edad() = edad
    method cumpleEdad() {
      edad += 1
    }

    var distanciaRaton = 0
    method distanciaRaton() = distanciaRaton

    method peso() = edad * 20
}

object nibbles {
    method edad() = 35

    method peso() = self.edad() * 20

    var distanciaRaton = 0
    method distanciaRaton() = distanciaRaton
}

// Inventar otro ratón