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
    super.depositar(valor)
  }
  
  override func sacar(_ valor: Double) {
    if valor <= (saldo + 5) {
      self.saldo -= (valor + 5)
    }
  }
}

let contaCorrente = ContaCorrente(cpf: "99999999999")
contaCorrente.solicitarEmprestimo(valor: 1000)
contaCorrente.saldo

class ContaPoupanca: Conta {
  var possuiCartaoDebito: Bool
  
  init(cpf: String, possuiCartaoDebito: Bool) {
    self.possuiCartaoDebito = possuiCartaoDebito
    super.init(cpf: cpf) // deve ser chamado
  }
  
  func solicitarCartaoDebito() {
    possuiCartaoDebito = true
  }
  
  override func sacar(_ valor: Double) {
    if valor <= (saldo + 10) {
      self.saldo -= (valor + 10)
    }
  }
  
}

let contaPoupanca = ContaPoupanca(cpf: "11111111111", possuiCartaoDebito: false)
contaPoupanca.depositar(100)
contaPoupanca.sacar(90)
contaPoupanca.saldo

func exibeSaldoConta(_ conta: Conta) {
  print("O cliente possui saldo R$\(conta.saldo)")
}
exibeSaldoConta(conta)
exibeSaldoConta(contaCorrente)
exibeSaldoConta(contaPoupanca)

func definirTipo(_ conta: Conta) {
  if conta is ContaCorrente {
    print("A conta é corrente")
  }
  
  if let contaCorrente = conta as? ContaCorrente {
    print(contaCorrente.possuiEmprestimo)
  }
  
  guard let contaPoupanca = conta as? ContaPoupanca else { return }
  print(contaPoupanca.possuiCartaoDebito)
  
  //let tipoConta = conta as! ContaCorrente -> Não recomendado
  //print(tipoConta.possuiEmprestimo)
}

definirTipo(contaCorrente)
definirTipo(contaPoupanca)
