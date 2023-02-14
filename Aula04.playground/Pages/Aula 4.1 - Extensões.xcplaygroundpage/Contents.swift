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

extension Conta {
    func transferir(_ contaDestino: Conta, _ valor: Double) {
        sacar(valor)
        contaDestino.depositar(valor)
    }
}

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.depositar(200)

var contaAna = Conta(nome: "Ana")
contaGiovanna.transferir(contaAna, 50)

print(contaGiovanna.saldo)
print(contaAna.saldo)

func contaCaracteresString(_ texto: String) -> Int {
    return texto.count
}

let texto = "Giovanna"
contaCaracteresString(texto)

extension String {
    func contaCaracteresString() -> Int {
        return self.count
    }
}

print(texto.contaCaracteresString())
