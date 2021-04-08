//: [Previous](@previous)

import Foundation

// MARK: - Adding Keys and Values

var words = [String: String]()

words["A"] = "Apple"
words["B"] = "Banana"

words.count
words

words["B"] = "Ball"
words

words.updateValue("mango", forKey: "C")
words

// MARK: - Removing Keys and Values
// 오!! value가 Optional타입이 아닌데도 nil입력이 가능하다
// 게다가 삭제가 된다. 그럼 옵션널 타입이라면?
// nil값을 가지고 있는게 아니라 없어지네 키와 값자체가

words
words["B"] = nil
words["Z"] = nil
words

words.removeValue(forKey: "A")
words
words.removeValue(forKey: "A")
words
words.removeAll()
words


var words2 = [String: String?]()
words2["A"] = "Apple"
words2
words2["A"] = nil
words2

//: [Next](@next)
