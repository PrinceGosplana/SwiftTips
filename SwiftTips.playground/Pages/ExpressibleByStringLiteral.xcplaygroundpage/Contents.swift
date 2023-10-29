//: [Previous](@previous)

import Foundation

let url = URL(string: "http://www.google.ua")!

extension URL: ExpressibleByStringLiteral {
    public init(stringLiteral value: StaticString) {
        self.init(string: "\(value)")!
    }
}

let url2: URL = "http://www.google.ua"
print(url2)
let request = URLRequest(url: "http://www.google.ua")
print(request)
//: [Next](@next)
