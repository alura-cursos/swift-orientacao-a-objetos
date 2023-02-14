struct ContaCorrenteStruct {
    var saldo = 0.0
    var nome: String
    
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
}

var contaCorrenteStruct01 = ContaCorrenteStruct(nome: "Giovanna")
// let contaCorrenteStruct01 = ContaCorrenteStruct(nome: "Giovanna")
var contaCorrenteStruct02 = contaCorrenteStruct01
contaCorrenteStruct01.depositar(100)
contaCorrenteStruct02.depositar(50)
print("Saldo da conta corrente struct 01 = \(contaCorrenteStruct01.saldo)")
print("Saldo da conta corrente struct 02 = \(contaCorrenteStruct02.saldo)")

class ContaCorrenteClass {
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

let contaCorrenteClasse01 = ContaCorrenteClass(nome: "Ana")
let contaCorrenteClasse02 = contaCorrenteClasse01
contaCorrenteClasse01.depositar(60)
contaCorrenteClasse02.depositar(100)
print("Saldo da conta corrente classe 01 = \(contaCorrenteClasse01.saldo)")
print("Saldo da conta corrente classe 02 = \(contaCorrenteClasse02.saldo)")







