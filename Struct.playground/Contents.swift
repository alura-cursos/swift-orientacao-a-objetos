import UIKit

struct Estudante {
  var nome: String
  var sobrenome: String
  var instituicaoEnsino: String
  var pontos: Int = 0
  
  mutating func marcarPonto() {
    self.pontos += 1
  }
  
  func exibeResultado() {
    print("O(a) estudante \(nome) \(sobrenome) marcou \(pontos) pontos.")
  }
}

var estudante = Estudante(nome: "Giovanna", sobrenome: "Moeller", instituicaoEnsino: "UNESP")
estudante.marcarPonto()
estudante.marcarPonto()
estudante.exibeResultado()

func boasVindas(_ estudante: Estudante) {
  print("Boas-vindas à competição, \(estudante.nome)!")
}

boasVindas(estudante)
