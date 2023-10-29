//: [Previous](@previous)

import XCTest

class MyTests: XCTestCase {
    func test() throws {
        let myData = [1, 2, 3]
//        let first = myData.first!
        let first = try XCTUnwrap(myData.first)
        XCTAssert(first < 3)
    }
}

//: [Next](@next)
