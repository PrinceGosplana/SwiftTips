//: [Previous](@previous)

import UIKit

class MyView: UIView {

    enum State {
        case idle
        case loading
        case data(String)
    }

    private let dataLabel: UILabel = .init()
    private var state: State = .idle

    private func update() {
        let showLabel: Bool

        switch state {
        case .idle:
            showLabel = false
        case .loading:
            showLabel = true
        case .data(let str):
            dataLabel.text = str
            if str.isEmpty {
                showLabel = false
            } else {
                showLabel = true
            }
        }

        dataLabel.isHidden = !showLabel
    }
}

//: [Next](@next)
