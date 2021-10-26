
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var stationFrequency: UILabel!
    @IBOutlet weak var stationBand: UILabel!
    
    var myStation: RadioStation
    
    required init?(coder aDecoder: NSCoder) {
        myStation = RadioStation()
        myStation.frequency = 101.8
        myStation.name = "Rádio clube Paços de Ferreira"
        
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


    @IBOutlet var buttonClick: UIView!
    
    @IBAction func buttonClick(_ sender: Any) {
        stationName.text = myStation.name
        stationFrequency.text = "\(myStation.frequency)"
        
        if myStation.isBandFM() == 1 {
            stationBand.text = "FM"
        } else {
            stationBand.text = "AM"
        }
    }
}

