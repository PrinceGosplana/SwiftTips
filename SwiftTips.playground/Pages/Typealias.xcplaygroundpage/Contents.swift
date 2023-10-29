//: [Previous](@previous)

import Foundation

typealias ID = Int
typealias CompletionHandler<T> = (Result<T, Error>) -> Void

func fetchUserName(userID: ID, completion: @escaping CompletionHandler<String>) {
// some network call
}


//: [Next](@next)
