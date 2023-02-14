struct ContaCorrente {
    var saldo = 0.0
    var nome: String
    
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
}

var contaCorrenteGiovanna = ContaCorrente(nome: "Giovanna")
print(contaCorrenteGiovanna.saldo)
contaCorrenteGiovanna.depositar(1500)
print(contaCorrenteGiovanna.saldo)

var contaCorrenteCaio = ContaCorrente(nome: "Caio")
contaCorrenteCaio.depositar(200)
contaCorrenteCaio.sacar(100)
print(contaCorrenteCaio.saldo)


