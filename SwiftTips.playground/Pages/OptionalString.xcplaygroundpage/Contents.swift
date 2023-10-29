//: [Previous](@previous)

import Foundation
import UIKit

let textField = UITextField()

textField.text // String?
textField.text ?? ""

extension Optional where Wrapped == String {
    var orEmpty: String {
        switch self {
        case .none:
            return ""
        case .some(let wrapped):
            return wrapped
        }
    }
}

textField.text.orEmpty

//: [Next](@next)
