// EX01
func ePar(valor: Int) -> Bool {
  if (valor % 2 == 0) {
    return true;
  }

  return false;
}

print(ePar(valor: 2))

// EX02
func floatToString(valor: Float) -> String {
    
    return String(valor)
}

print(floatToString(valor: 1.02))

// EX03
func multiplica(valor1: Int, valor2: Int) -> Int {
    var res = valor1 * valor2

    return res
}

print(multiplica(valor1: 2, valor2: 2))

// EX05
func subtrai(valor1: Float, valor2: Float) -> Int {
    return Int(valor1 - valor2)
}

print(subtrai(valor1: 2.13, valor2: 1.13))

// EX06
var frutas = ["Banana", "Laranja", "Ananás"]

frutas.append("Pessego")
frutas.append(contentsOf: ["Uva", "Maça"])
frutas.insert("Melancia", at: 1)
frutas.remove(at: 5)

for fruta in frutas {
    print(fruta)
}

print(frutas.count)

// EX07
let frase = "Beta is Latin for does not work"

print(frase.split(separator: " ").count)
let array = frase.split(separator: " ")

// EX08
var stack: [Int] = []

for _ in 1...10 {
    stack.append(Int.random(in: 1..<100))
}

print("Array -> \(stack)")

func pop() -> Array<Int> {
    stack.removeFirst()
    
    return stack
}

print("Pop \(pop())")

func push(valor: Int) -> Array<Int> {
    stack.insert(valor, at: 0)
    
    return stack
}

print("Push \(push(valor: 69))")
