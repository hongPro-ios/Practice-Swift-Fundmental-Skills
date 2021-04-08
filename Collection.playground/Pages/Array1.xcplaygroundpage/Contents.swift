//: [Previous](@previous)

import Foundation


// MARK: - Array Basics
let strArray: Array<String> // 정식문법
let shortStrArray: [String] // 단축문법

let emptyArray: [Int] = []
let emptyArray2 = Array<Int>()
let emptyArray3 = [Int]()

let zeroArray = [Int](repeating: 1, count: 5)

// MARK: - Inspecting an Array
zeroArray.count
zeroArray.isEmpty

// MARK: - Accessing Elements
let fruits = ["Apple", "banana", "Melon"]
fruits[0]

fruits[0...1]

fruits[fruits.startIndex]
fruits[fruits.index(before: fruits.endIndex)]
// 주의: endIndex는 이전 인덱스가 마지막 인덱스가 된다!!
// The array's "past the end" position---that is, the position one greater

fruits.first
fruits.last

emptyArray.first
emptyArray.last

//: [Next](@next)
