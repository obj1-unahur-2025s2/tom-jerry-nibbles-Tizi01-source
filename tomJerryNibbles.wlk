
object tom {
    var energia = 50
    method energia() = energia
    method velocidadMaxima() = 5 + (energia/10)
    method consumoDistancia(metros) = metros / 2

    method comerRaton(raton) {
      energia += (12 + raton.peso())
    }

    method correr(distancia) {
      energia -= self.consumoDistancia(distancia)
    }

    method puedeCazar(distancia) {
      return energia >= self.consumoDistancia(distancia)
    }

    method cazarRaton(raton, distancia) {
        if(self.puedeCazar(distancia)){
            self.correr(distancia)
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
}

object nibbles {
    method edad() = 35

    method peso() = self.edad() * 20
}

// Inventar otro ratón