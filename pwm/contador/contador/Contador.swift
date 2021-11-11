import UIKit

class Contador: NSObject {
    var valor: Int = 0
    
    func incrementar() {
        if self.valor < 50 {
            self.valor+=1
        }
        
    }
    
    func decrementar() {
        if self.valor > 0 {
            self.valor-=1
        }
    }
    
    func resetar() {
        self.valor = 0
    }
    
    func getValor() -> Int {
        return self.valor
    }
}
