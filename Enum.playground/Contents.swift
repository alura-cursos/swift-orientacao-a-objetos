import UIKit

func checaSemaforo(estado: Semaforo) {
  switch estado {
  case .verde: print("Pode seguir!")
  case .vermelho: print("Fique parado!")
  case .amarelo: print("Atenção!")
  default: break
  }
}

enum Semaforo {
  case verde
  case vermelho
  case amarelo
}

var verde = Semaforo.verde
checaSemaforo(estado: verde)
checaSemaforo(estado: .vermelho)

enum Mes {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}
