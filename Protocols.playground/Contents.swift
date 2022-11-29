import UIKit

protocol PropriedadesVeiculo {
  var peso: Int { get }
  var nome: String { get set }
}

protocol Veiculo: PropriedadesVeiculo {
  func acelerar(_ velocidade: Int)
  func parar()
}

struct Carro: Veiculo {
  var peso: Int
  var nome: String
  
  func acelerar(_ velocidade: Int) {
    print("Carro está acelerando a \(velocidade)km/h!")
  }
  
  func parar() {
    print("Carro está parado.")
  }
}


