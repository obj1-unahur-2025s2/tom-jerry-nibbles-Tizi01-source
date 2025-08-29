
object tom {
    var energia = 50
    method energia() = energia

    var velocidadMaxima = 5 + (energia/10)
    method velocidadMaxima() = velocidadMaxima

    method comerRaton(raton) {
      energia += (12 + raton.peso())
    }

    method correr(distancia) {
      energia -= (distancia / 2)
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

    method peso() = edad * 20

    var distanciaRaton = 30
    method distanciaRaton() = distanciaRaton
}

object nibbles {
    method edad() = 35

    method peso() = self.edad() * 20

    var distanciaRaton = 30
    method distanciaRaton() = distanciaRaton
}

// Inventar otro ratón