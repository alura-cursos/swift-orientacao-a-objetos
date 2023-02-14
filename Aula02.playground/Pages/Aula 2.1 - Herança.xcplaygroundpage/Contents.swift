class Conta {
    var saldo = 0.0
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init(nome: String) {
        self.nome = nome
    }
}

class ContaPoupanca: Conta {
    var possuiCartaoDebito = false
    
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("O cliente está solicitando cartão débito")
    }
}

var contaPoupanca = ContaPoupanca(nome: "Giovanna")
contaPoupanca.depositar(50)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()

class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double) {
        print("O cliente está solicitando um empréstimo no valor de \(valor)")
    }
}

var contaCorrente = ContaCorrente(nome: "Ana")
contaCorrente.depositar(100)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(20000)
// contaCorrente.solicitarDebito()

