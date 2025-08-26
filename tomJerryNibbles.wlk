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
method puedeCazarA(distancia) = energiaActual >= (distancia / 2)
 method cazarASiPuede(unRaton, distancia) {
   if (self.puedeCazarA(distancia)){
    self.cazarA(unRaton, distancia)
   }
 }
 method cazarA(unRaton, distancia) {
   self.correr(distancia)
   self.comerA(unRaton)
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

object glutty {
  var pesoActual = 50
  method cantidadDeQuesoParaLlenarse() = self.peso()*0.05

  method peso() = pesoActual
  method comerQueso() {
    pesoActual = pesoActual + self.cantidadDeQuesoParaLlenarse()
  }
}