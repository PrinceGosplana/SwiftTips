//: [Previous](@previous)

import UIKit

extension UIView {
    func withBackgroundColor(setTo value: UIColor) -> Self {
        self.backgroundColor = value
        return self
    }

    func withCornerRadius(setTo value: CGFloat) -> Self {
        self.layer.cornerRadius = value
        return self
    }
}


let view = UIView()
    .withBackgroundColor(setTo: .blue)
    .withCornerRadius(setTo: 5.0)

extension UILabel {
    func withTextColor(setTo value: UIColor) -> UILabel {
        self.textColor = value
        return self
    }
}

let label = UILabel()
    .withBackgroundColor(setTo: .black)
    .withTextColor(setTo: .white)
//: [Next](@next)
