//: [Previous](@previous)

import Foundation

struct User {
    var firstName: String
    var surname: String
}

let famousUser = User(firstName: "BoJack", surname: "Horseman")

extension String.StringInterpolation {
    mutating func appendInterpolation(user: User) {
        appendInterpolation("My name is \(user.firstName) \(user.surname), obviously")
    }
}

print("\(user: famousUser)") // My name is BoJack Horseman, obviously

extension String.StringInterpolation {
    mutating func appendInterpolation(localized key: String, _ args: CVarArg...) {
        let localized = String(format: NSLocalizedString(key, comment: ""), arguments: args)
        appendLiteral(localized)
    }
}

print("\(localized: "welcome.screen.greetings", famousUser.firstName)")
//: [Next](@next)
