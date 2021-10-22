import Darwin
//func multiplica(valor1: Int, valor2: Int) -> Int {
//    var res = valor1 * valor2
//
//    return res
//}
//
//print(multiplica(valor1: 2, valor2: 2))

// EX05

//func subtrai(valor1: Float, valor2: Float) -> Int {
//    return Int(valor1 - valor2)
//}

//print(subtrai(valor1: 2.13, valor2: 1.13))

// EX06

//var frutas = ["Banana", "Laranja", "Ananás"]
//
//frutas.append("Pessego")
//frutas.append(contentsOf: ["Uva", "Maça"])
//frutas.insert("Melancia", at: 1)
//frutas.remove(at: 5)
//
//for fruta in frutas {
//    print(fruta)
//}
//
//print(frutas.count)

// EX07

let frase = "Beta is Latin for does not work"

print(frase.split(separator: " ").count)
let array = frase.split(separator: " ")

print(array.contains(where: <#T##(String.SubSequence) throws -> Bool#>))
