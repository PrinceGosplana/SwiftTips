//: [Previous](@previous)

import Foundation

struct Person {
    let name: String
    let age: Int
}

let people = [Person(name: "John", age: 22),
              Person(name: "Tony", age: 25),
              Person(name: "Sara", age: 23)]

dump(people, maxDepth: 2, maxItems: 2)
//: [Next](@next)
