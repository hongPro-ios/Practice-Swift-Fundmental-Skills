//: [Previous](@previous)

import Foundation

// MARK: - Dictionary Literal

var dict = ["A": "Apple", "B": "Banana"]

dict = [:]

// MARK: - Dictionary Type
let dict1: Dictionary<String, Int> // 정식 문법
let dict2: [String: Int] // 단축 문법

// MARK: - Creating a Dictionary

let words = ["A": "Apple", "B": "Banana"]
let emptyDict: [String: String] = [:]
let emptyDict1 = Dictionary<String, String>()
let emptyDict2 = [String: String]()

// MARK: - Inspecting a Dictionary

words.count
words.isEmpty

// MARK: - Accessing Keys and Values

words["A"]

let a = words["C"]
let b = words["C", default: "Empty"]

for k in words.keys.sorted() {
    print(k)
}

for v in words.values.sorted() {
    print(v)
}



let keys = Array(words.keys)
let values = Array(words.values)

// MARK: - Setting Keys and Values



//: [Next](@next)
