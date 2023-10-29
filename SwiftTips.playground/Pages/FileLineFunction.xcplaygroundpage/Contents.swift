//: [Previous](@previous)

import Foundation

//func log(_ message: String,
//         _ file: String,
//         _ line: Int,
//         _ function: String) {
//    print("[\(file): \(line)] \(function) - \(message)")
//}
//func foo() {
//    log("Hello world!", "SwiftTips.playground", 12, "foo()")
//}
func log(_ message: String,
         _ file: String = #file,
         _ line: Int = #line,
         _ function: String = #function) {
    print("[\(file): \(line)] \(function) - \(message)")
}

func foo() {
    log("Hello world!")
}

foo() // [SwiftTips.playground: 25] foo() - Hello world!


//: [Next](@next)
