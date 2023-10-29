//: [Previous](@previous)

import Foundation
import UIKit

// Transforming an Optional with Map

let date: Date? = Bool.random() ? Date() : nil
let formatter = DateFormatter()
let label = UILabel()

if let safeDate = date {
    label.text = formatter.string(from: safeDate)
}

label.text = date.map { formatter.string(from: $0) }
//: [Next](@next)
