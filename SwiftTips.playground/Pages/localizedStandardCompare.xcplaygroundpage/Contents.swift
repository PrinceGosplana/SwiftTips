//: [Previous](@previous)

import Foundation

let fileNames = [
"File 100.txt",
"File 5.txt",
"File 20.txt"
]

fileNames.sorted()

fileNames.sorted {
    $0.localizedStandardCompare($1) == .orderedAscending
}


//: [Next](@next)
