class Conta {
    var saldo = 0.0
    var nome: String
    
    static var taxaTransferencia = 0.1
    
    var negativado: Bool {
        return saldo < 0
    }
    
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

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.sacar(20)
contaGiovanna.negativado
contaGiovanna.depositar(100)
contaGiovanna.negativado

// print(contaGiovanna.taxaTransferencia) -> Erro!
print(Conta.taxaTransferencia)

