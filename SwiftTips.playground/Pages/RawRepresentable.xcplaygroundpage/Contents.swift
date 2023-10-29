//: [Previous](@previous)

import Foundation

enum Numbers: String {
    case zero
    case one
    case two
}

Numbers.one.rawValue // "one"

enum OtherNumber: Int {
    case oneHundred = 100
    case oneThousand = 1_000
}

OtherNumber.oneThousand.rawValue // 1000

struct LocalizedKey: RawRepresentable {
    var rawValue: String

    var localizebString: String {
        NSLocalizedString(self.rawValue, comment: "")
    }
}

extension LocalizedKey {
    static let firstScreenTitle = LocalizedKey(rawValue: "first.screen")
}

LocalizedKey.firstScreenTitle.localizebString
//: [Next](@next)
