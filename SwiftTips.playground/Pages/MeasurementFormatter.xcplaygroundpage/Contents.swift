//: [Previous](@previous)

import Foundation

let distanceInKiloMeters = 1.2
print("Distance is \(distanceInKiloMeters) km")

let measurement = Measurement(value: distanceInKiloMeters, unit: UnitLength.kilometers)

let formatter = MeasurementFormatter()
formatter.locale = Locale(identifier: "en_US")
print("Distance is \(formatter.string(from: measurement))")
//: [Next](@next)
