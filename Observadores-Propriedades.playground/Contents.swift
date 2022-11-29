import UIKit

struct Circulo {
  static let pi = 3.14
  var raio: Double {
    willSet(novoValor) {
      print("O raio está prestes a ser alterado... Seu novo valor será de \(novoValor)")
    }
    
    didSet(valorAntigo) {
      print("O raio foi alterado... O valor antigo era \(valorAntigo)")
      calcularArea()
    }
  }
  
  func calcularArea() {
    let area = Circulo.pi * raio * raio
    print("A área do círculo é de \(area)")
  }
}

var circulo = Circulo(raio: 10)
circulo.calcularArea()
circulo.raio = 20

