//: [Previous](@previous)

let people = ["John", "Jane", "Paul", "Markus"]

for index in people.indices {
    let person = people[index]
    print("At index \(index) we have \(person)")
}

// Enumerated
for (index, person) in people.enumerated() {
    print("At index \(index) we have \(person)")
}
//: [Next](@next)
