//: [Previous](@previous)

import Foundation

func showAppIntroduction() {}

extension UserDefaults {
    public enum Keys {
        static let hasSeenAppIntroduction = "has_seen_app_introduction"
    }

    var hasSeenAppIntroduction: Bool {
        set {
            set(newValue, forKey: Keys.hasSeenAppIntroduction)
        }
        get {
            return bool(forKey: Keys.hasSeenAppIntroduction)
        }
    }
}

if !UserDefaults.standard.hasSeenAppIntroduction {
    showAppIntroduction()
    UserDefaults.standard.hasSeenAppIntroduction = true
}

// add wrapper
@propertyWrapper
struct UserDefault<Value> {
    let key: String
    let defaultValue: Value

    init(key: String, defaultValue: Value) {
        self.key = key
        self.defaultValue = defaultValue
    }

    var wrappedValue: Value {
        get {
            UserDefaults.standard.object(forKey: self.key) as? Value ?? self.defaultValue
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: self.key)
        }
    }

    var projectedValue: Self {
        get {
            return self
        }
    }

    func removeValue() {
        UserDefaults.standard.removeObject(forKey: self.key)
    }
}

struct UserDefaultValues {
    @UserDefault(key: "hasSeenAppIntroduction", defaultValue: false)
    static var hasSeenAppIntoduction: Bool
}

UserDefaultValues.hasSeenAppIntoduction = false
UserDefaultValues.hasSeenAppIntoduction // false

UserDefaultValues.hasSeenAppIntoduction = true
UserDefaultValues.hasSeenAppIntoduction // true

UserDefaultValues.$hasSeenAppIntoduction.removeValue()
//: [Next](@next)
