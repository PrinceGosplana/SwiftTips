//: [Previous](@previous)

import UIKit
import XCTest

enum ImageAsset: String, CaseIterable {
    case headIcon = "head_icon"
    case worldIcom = "world_icon"

    var image: UIImage? { UIImage(named: rawValue) }
}

enum SFSymbol: String, CaseIterable {
    case heart = "heart"
    case arrowFilled = "arrowFilled"

    var image: UIImage? { UIImage(named: rawValue) }
}

func test() {
    ImageAsset.allCases.forEach {
        XCTAssertNotNil($0.image, "Image \($0) is missing")
    }

    SFSymbol.allCases.forEach {
        XCTAssertNotNil($0.image, "SFSymbol \($0) is missing")
    }
}

//: [Next](@next)
