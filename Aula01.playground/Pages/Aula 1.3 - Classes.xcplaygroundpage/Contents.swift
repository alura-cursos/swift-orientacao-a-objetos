class ContaCorrente {
    var saldo: Double
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init(nome: String) {
        saldo = 0.0
        self.nome = nome
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


