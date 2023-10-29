//: [Previous](@previous)

import Foundation

let ints = [1, 2, 3, 4]
let strings = ["Hello", "YouTube", "!"]

for i in 0..<min(ints.count, strings.count) {
    print("\(ints[i]) \(strings[i])")
}

for (int, string) in zip(ints, strings) {
    print("\(int) \(string)")
}

//: [Next](@next)
