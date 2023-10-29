//: [Previous](@previous)

import Foundation

func apply<Value>(_ function: (Value) -> Void, to value: Value) {
    function(value)
}

apply({ print($0)}, to: "Name")

class EventHandler<Event> {
    private var handler: (Event) -> Void

    init(_ handler: @escaping (Event) -> Void) {
        self.handler = handler
    }

    func handle(_ event: Event) {
        self.handler(event)
    }
}

//: [Next](@next)
