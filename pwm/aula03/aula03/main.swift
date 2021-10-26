import Foundation

var randomNumber = 1
var continueGuessing = true
var keepPlaying = true
var input = ""

while keepPlaying {
    randomNumber = Int(arc4random_uniform(101))
    print("O número aleatorio para adivinhar é: \(randomNumber) \n")
    
    while continueGuessing {
        print("Introduza um numero de 1 a 100")
        
        input = String(bytes: FileHandle.standardInput.availableData, encoding: .utf8)!
            .trimmingCharacters(in: .whitespacesAndNewlines)
        
        if let userGuess = Int(input) {
            if userGuess == randomNumber {
                continueGuessing = false
                print("Numero correto!")
            } else if userGuess > randomNumber {
                print("Numero introduzido é maior do que o gerado \n")
            } else {
                print("Numero introduzido é menor do que o gerado \n")
            }
            
        } else {
            print("Valor invalido \n")
        }
    }
    
    print("Jogar de novo? S ou N \n")
    input = String(bytes: FileHandle.standardInput.availableData, encoding: .utf8)!
        .trimmingCharacters(in: .whitespacesAndNewlines)
    
    if input == "N" || input == "n" {
        keepPlaying = false
    }
    
    continueGuessing = true
}
