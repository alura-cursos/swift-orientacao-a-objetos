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
    var possuiCartaoDebito: Bool
    
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("O cliente está solicitando cartão débito")
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 10
    }
    
    init(nome: String, possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
    }
}

var contaPoupanca = ContaPoupanca(nome: "Giovanna", possuiCartaoDebito: false)
contaPoupanca.depositar(50)
contaPoupanca.sacar(20)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()

class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double) {
        print("O cliente está solicitando um empréstimo no valor de \(valor)")
        super.depositar(valor)
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 5
    }
}

var contaCorrente = ContaCorrente(nome: "Ana")
contaCorrente.depositar(100)
contaCorrente.sacar(20)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(20000)
// contaCorrente.solicitarDebito()

func exibeSaldoDaConta(_ conta: Conta) {
    if conta is ContaCorrente {
        print("Conta é do tipo conta corrente")
        //conta.solicitarEmprestimo()
    }
    
    if let contaCorrente = conta as? ContaCorrente {
        contaCorrente.solicitarEmprestimo(200)
    }
    
    guard let contaPoupanca = conta as? ContaPoupanca else { return }
    print(contaPoupanca.possuiCartaoDebito)
    
    //var contaCorrente02 = conta as! ContaCorrente
    //contaCorrente02.solicitarEmprestimo(100)
}

exibeSaldoDaConta(contaCorrente)
exibeSaldoDaConta(contaPoupanca)
