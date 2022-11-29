import UIKit

class Conta {
  var cpf: String
  var saldo: Double
  
  init(cpf: String) {
    self.cpf = cpf
    self.saldo = 0
  }
  
  func sacar(_ valor: Double) {
    if valor <= saldo {
      self.saldo -= valor
    }
  }
  
  func depositar(_ valor: Double) {
    if valor > 0 {
      self.saldo += valor
    }
  }
}

let conta = Conta(cpf: "888888888888")
conta.depositar(100)
conta.sacar(50)
conta.saldo

class ContaCorrente: Conta {
  var possuiEmprestimo: Bool = true
  
  func solicitarEmprestimo(valor: Double) {
    print("O cliente com CPF \(cpf) está requisitando um empréstimo de R$\(valor).")
    possuiEmprestimo = true
  }
}

let contaCorrente = ContaCorrente(cpf: "99999999999")
contaCorrente.solicitarEmprestimo(valor: 1000)

class ContaPoupanca: Conta {
  var possuiCartaoDebito: Bool = false
  
  func solicitarCartaoDebito() {
    possuiCartaoDebito = true
  }
}

let contaPoupanca = ContaPoupanca(cpf: "11111111111")
contaPoupanca.solicitarCartaoDebito()
contaPoupanca.possuiCartaoDebito



