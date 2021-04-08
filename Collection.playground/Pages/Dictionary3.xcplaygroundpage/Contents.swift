//: [Previous](@previous)

import Foundation

// MARK: - Comparing Dictionaries

let a = ["A": "Apple", "B": "Banana", "C": "City"]
let b = ["B": "Banana", "A": "Apple", "C": "City"]

// 정렬만 무시하고 key의 대소문자 뿐만 아니라 value의 값도 정확히 비교한다
a == b
a != b

// 정렬이 고려되고 있기 때문에 정확한 비교를 위해서는 정렬을 따로 해줘야한다.
//a.elementsEqual(b) { (lhs, rhs) -> Bool in
//    print("lhs: ", lhs)
//    print("rhs: ", rhs)
//    return lhs.key.caseInsensitiveCompare(rhs.key) == .orderedSame &&
//        lhs.value.caseInsensitiveCompare(rhs.value) == .orderedSame
//}

let aKeys = a.keys.sorted()
let bKeys = b.keys.sorted()
aKeys.elementsEqual(bKeys) { (lhs, rhs) -> Bool in
    guard lhs.caseInsensitiveCompare(rhs) == .orderedSame else { return false }
    
    guard
        let lv = a[lhs],
        let rv = b[rhs],
        lv.caseInsensitiveCompare(rv) == .orderedSame
    else {
        return false
    }
    return true
}

// MARK: - Finding Elements

let words = ["A": "Apple", "B": "Banana", "C": "City"]
let c: ((String, String)) -> Bool = {
    $0.0 == "B" || $0.1.contains("i")
}

words.contains(where: c)
// 순서가 바뀌기 때문에 결과값이 바뀔 수  있다
words.first(where: c)

words.filter(c)

//: [Next](@next)
