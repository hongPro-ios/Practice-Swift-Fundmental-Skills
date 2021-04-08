//: [Previous](@previous)

import Foundation

let set: Set<Int> = [1, 2, 3, 3, 3, 4, 5] // 정규 표현식
let set1 = Set<Int>()
let set2: Set = [1, 2, 3, 3, 3, 4, 5] // 단축 표현식
set.count

// MARK: - Inspecting a Set
set.count
set.isEmpty

// MARK: - Testing for Membership
set.contains(1)

// MARK: - Adding and Removing Elements
var words = Set<String>()
var insertResult = words.insert("Swift")
var insertResult2 = words.insert("Swift")

var updateResult = words.update(with: "Swift")
updateResult
updateResult = words.update(with: "Apple")
updateResult

var value = "Swift"
value.hashValue

var value2 = "Swift"
value2.hashValue


struct SampleData: Hashable {
    var hashValue: Int = 123
    var data: String
    
    init(_ data: String) {
        self.data = data
    }
    
    static func ==(lhs: SampleData, rhs: SampleData) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

var sampleSet = Set<SampleData>()

var data = SampleData("Swift")
data.hashValue

var r = sampleSet.insert(data)
r.inserted
r.memberAfterInsert
sampleSet

data.data = "hello"
data.hashValue

r = sampleSet.insert(data)
r.inserted
r.memberAfterInsert
sampleSet

sampleSet.update(with: data)
sampleSet

words
words.remove("Swift")
words

words.remove("eee")
words.removeAll()
words
//: [Next](@next)
