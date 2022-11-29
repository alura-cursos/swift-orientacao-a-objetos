import UIKit

struct Circulo {
    static let pi = 3.14
    let raio: Double
    
    var area: Double {
        return Circulo.pi * raio * raio
    }
}

var circulo = Circulo(raio: 10)
print(circulo.area)
// print(circulo.pi) -> Propriedades estáticas são pertencentes a classe e não a instância
print(Circulo.pi)
