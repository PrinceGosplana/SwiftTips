//: [Previous](@previous)

import Foundation

func getData() -> some Collection {
    [1, 2, 3, 4]
}

let data = getData()
data.count

let element = data.randomElement() as? Int

func getOneTypeOfValue() -> some Equatable {
    0
}

let firstValue = getOneTypeOfValue()
let secondValue = getOneTypeOfValue()

firstValue == secondValue // true

//: [Next](@next)
