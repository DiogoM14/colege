import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contador: UILabel!
    @IBOutlet weak var lotacao: UILabel!
    
    var myContador: Contador
    
    required init?(coder aDecoder: NSCoder) {
        myContador = Contador()
        myContador.valor = 0
        super.init(coder: aDecoder)
    }

    @IBAction func menos(_ sender: Any) {
        myContador.decrementar()
        contador.text = "\(myContador.getValor())"
    }
    
    @IBAction func mais(_ sender: Any) {
        myContador.incrementar()
        view.backgroundColor = UIColor.red
        contador.text = "\(myContador.getValor())"
    }
    
    @IBAction func reset(_ sender: Any) {
        myContador.resetar()
        contador.text = "\(myContador.getValor())"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myContador.resetar()
    }
}
