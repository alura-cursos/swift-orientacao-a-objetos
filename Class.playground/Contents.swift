import UIKit

class Estudante {
  var nome: String
  var sobrenome: String
  var instituicaoEnsino: String
  var pontos: Int = 0
  
  init(nome: String, sobrenome: String, instituicaoEnsino: String) {
    self.nome = nome
    self.sobrenome = sobrenome
    self.instituicaoEnsino = instituicaoEnsino
  }
  
  func marcarPonto() {
    self.pontos += 1
  }
  
  func exibeResultado() {
    print("O(a) estudante \(nome) \(sobrenome) marcou \(pontos) pontos.")
  }
}

let estudante = Estudante(nome: "Giovanna", sobrenome: "Moeller", instituicaoEnsino: "UNESP")
estudante.marcarPonto()
estudante.marcarPonto()
estudante.exibeResultado()
