import UIKit

class RadioStation: NSObject {
    var name: String
    var frequency: Double
    
    override init() {
        name = "Default"
        frequency = 100
    }
    
    static var minAMFrequency: Double = 520.0
    
    static var maxAMFrequency: Double = 520.0
    
    static var minFMFrequency: Double = 520.0
    
    static var maxFMFrequency: Double = 520.0
    
    func isBandFM() -> Int {
        if frequency >= RadioStation.minFMFrequency &&
            frequency <= RadioStation.maxFMFrequency {
            return 1
        } else {
            return 0
        }
    }
}
