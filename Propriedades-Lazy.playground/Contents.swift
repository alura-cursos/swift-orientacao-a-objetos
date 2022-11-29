import UIKit

struct Circulo {
    static let pi = 3.14
    var raio: Double
    
    lazy var area: Double = {
        return Circulo.pi * raio * raio
    }()
}

var circulo = Circulo(raio: 10)
print(circulo.area)
circulo.raio = 20
print(circulo.area)

