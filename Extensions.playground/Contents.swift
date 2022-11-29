import UIKit

extension Int {
    func soma(com numero: Self) -> Self {
        return self + numero
    }
}

let valor = 10
let soma = valor.soma(com: 40)
print(soma) // 50

struct Estudante {
  let nome: String
  let notas: [Double]
}

extension Estudante { // extensão que lida apenas com notas
    func calculaMedia() -> Double {
        var soma = 0.0
        for nota in notas {
            soma += nota
        }
        return soma / Double(notas.count)
    }
    
    var maiorNota: Double? {
        return notas.max()
    }
    
    var menorNota: Double? {
        return notas.min()
    }
}
