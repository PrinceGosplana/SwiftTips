//: [Previous](@previous)

import Foundation

let numbers = [1, 2, 3, 4, 5]

for numb in numbers {
    if numb.isMultiple(of: 2) {
        print(numb)
    }
}

for numb in numbers where numb.isMultiple(of: 2) {
    print(numb)
}
//: [Next](@next)
