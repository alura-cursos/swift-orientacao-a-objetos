import UIKit

enum Mes: Int {
  case janeiro = 1, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

print(Mes.fevereiro.rawValue) // 2
print(Mes.setembro.rawValue) // 9

enum Moeda: Int {
  case UmCentavo = 1
  case CincoCentavos = 5
  case DezCentavos = 10
  case VinteCincoCentavos = 25
  case CinquentaCentavos = 50
}

let cinquentaCentavos = Moeda(rawValue: 50)
print(cinquentaCentavos?.rawValue)

enum ResultadoSaque {
    case sucesso(novoValor: Int)
    case erro(mensagem: String)
}

func saque(valor: Int) -> ResultadoSaque {
    if valor <= saldo {
        saldo -= valor
        return .sucesso(novoValor: saldo)
    } else {
        return .erro(mensagem: "Não há dinheiro suficiente")
    }
}

var saldo = 100
let resultado = saque(valor: 110)
switch resultado {
case .sucesso(let novoValor): print("Seu novo saldo é de \(novoValor)")
case .erro(let mensagem): print(mensagem)
}






