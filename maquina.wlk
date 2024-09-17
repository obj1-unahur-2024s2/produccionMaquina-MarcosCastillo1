object maquina {
const produccion =  [43,18,49,62,33,39]
method agregarProduccion(elemento) {
  produccion.add(elemento)
  
}
method agregarProducciones(unaLista) {
  produccion.addAll(unaLista)
  
}
method algunDiaSeProdujo(cantidad) {
  produccion.contains(cantidad)
}
method maximoValorDeProduccion() = produccion.max() 
  
  
method valoresDeProduccionPares() {
 return  produccion.filter({num => num.even()})
  
}  

method produccionEsAcotada(n1,n2) {
  return produccion.all({p => p.between(n1, n2)})
}  
method produccionesSuperioresA(cuanto) {
  return produccion.filter({p => p > cuanto})
}

method produccionesSumando(n) {
return produccion.map({p => p + n})

}

method totalProducido() = produccion.sum() 

method ultimoValorDeLaProduccion() =  produccion.last() 

method cantidadProduccionesMayorALaPrimera() = produccion.filter({p => p > produccion.first()}).size()
// produccion.count({p => p > produccion.first()})


  }