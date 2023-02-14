protocol Conta {
    var saldo: Double { get set }
    
    func sacar(_ valor: Double)
    func depositar(_ valor: Double)
}

class ContaCorrente: Conta { // ou struct
    var saldo: Double = 0.0
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
}
