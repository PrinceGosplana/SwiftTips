//: [Previous](@previous)

import Foundation

extension URL {
    init(staticString: StaticString) {
        self.init(string: "\(staticString)")!
    }
}

let path = "maps"
//let url = URL(staticString: "httpS//www.google.ua/\(path)") //to expected argument type 'StaticString'
let url = URL(staticString: "https://www.google.ua/")

//: [Next](@next)
