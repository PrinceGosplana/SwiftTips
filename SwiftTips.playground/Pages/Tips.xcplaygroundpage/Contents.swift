//: [Previous](@previous)

import Foundation

func log(_ message: @autoclosure () -> String) {
//#if DEBUG
    print(message())
//#endif
}

let urlREsponse = URLResponse()
log("urlREsponse.debugDescription")

//: [Next](@next)
