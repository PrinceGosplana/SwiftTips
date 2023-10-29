//: [Previous](@previous)

import Foundation

let array = [1, 2, 3]
array[1]

extension Collection {
    subscript (safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}

print(array[safe: 5])
//: [Next](@next)
