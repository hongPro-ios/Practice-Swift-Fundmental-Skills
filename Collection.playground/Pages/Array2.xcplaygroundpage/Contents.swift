import Foundation

// MARK: - Adding Elements
var alphabet = ["a", "b", "c"]

// 뒤에 추가는 overhead 미발생
alphabet.append("d")
alphabet.append(contentsOf: ["e", "f"])
// overhead 발생!
alphabet.insert("1", at: 1)
alphabet.insert(contentsOf: ["2", "3"], at: 2)
alphabet[0...2] = ["x", "y", "z"]
alphabet
alphabet.replaceSubrange(0...2, with: ["x", "y", "z"])
alphabet

// MARK: -Removing Elements
alphabet = ["A", "B", "C", "D", "E"]
alphabet.remove(at: 2)
alphabet
alphabet.removeFirst()
alphabet
alphabet.removeFirst(2)
alphabet
alphabet.removeAll()
alphabet
alphabet.popLast()
alphabet
alphabet = ["A", "B", "C", "D", "E"]
alphabet.popLast()
alphabet
alphabet.removeSubrange(0...1)
alphabet
alphabet[0...1] = []
alphabet
