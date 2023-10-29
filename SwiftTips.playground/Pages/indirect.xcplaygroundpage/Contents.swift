//: [Previous](@previous)

import Foundation

/*
 Before

class Box<Value> {
    let value: Value

    init(_ value: Value) {
        self.value = value
    }
}

enum LinkedList<Element> {
    case empty
    case node(Element, Box<LinkedList<Element>>)
}

let linkedList: LinkedList<Int> = .node(1, Box(LinkedList.node(4, Box(LinkedList.empty))))
 */

indirect enum LinkedList<Element> {
    case empty
    case node(Element, LinkedList<Element>)
}

let linkedList: LinkedList<Int> = .node(1, .node(4, .empty))
//: [Next](@next)
