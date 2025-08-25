object tom {
var energiaActual = 50
var ultimoRatonComido = null
var metrosRecorridos = 0

method ultimoRatonComido() = ultimoRatonComido
method ultimoRecorrido() = metrosRecorridos
method correr(distancia) {
  energiaActual = energiaActual - (distancia / 2)
  metrosRecorridos = distancia
} 
method velocidadMaxima() = 5 + (energiaActual/10)
method comerA(unRaton) {
    energiaActual = energiaActual + 12 + unRaton.peso()
    ultimoRatonComido = unRaton
} 
method puedeCazar(distancia) = energiaActual >= distancia
 method cazarASiPuede(unRaton, distancia) {
   if (self.puedeCazar(distancia)){
    self.comerA(unRaton)
   }
 }
}

object jerry {
  var edadActual = 2
  method edad() = edadActual
  method peso() = edadActual * 20  
  method cumplirAnios() {
    edadActual = edadActual + 1
  }
}

object nibbles {
  method peso() = 35
}

// Inventar otro ratón