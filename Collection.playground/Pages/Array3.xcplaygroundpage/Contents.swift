//: [Previous](@previous)

import Foundation


// MARK: - Comparing Arrays

let a = ["A", "B", "C"]
let b = ["a", "b", "c"]
let c = ["A", "B", ]

a == b
a != b
a == c

a.elementsEqual(b)
a.elementsEqual(b) { lhs, rhs -> Bool in
    print("lhs: ", lhs)
    print("rhs: ", rhs)
    print("lhs.caseInsensitiveCompare(rhs): ", lhs.caseInsensitiveCompare(rhs))
    return lhs.caseInsensitiveCompare(rhs) == .orderedSame
}

// MARK: - Finding Elements
let nums = [1, 4, 3, 4, 5, 2, 2, 2, 2]
nums.contains(1)
nums.contains(8)

nums.contains { int -> Bool in
    int.isMultiple(of: 2)
}
// 조건으로 값 찾기
nums.first { (n) -> Bool in
    return n % 2 == 0
}
// 조건으로 인덱스 찾기
nums.firstIndex { (n) -> Bool in
    return n % 2 == 0
}
// 값으로 인덱스 찾기
nums.firstIndex(of: 2)
nums.lastIndex(of: 4)

nums.filter

// MARK: - Sorting on Array - Immutable배열 정렬
// TIP: 메소드 이름이ed로 끝나면 새로운 배열로 리턴해준다.
// TIP: 메소드 이름이 동사이면 해당 배열에 작업이 일어난다.
nums.sorted()
nums

nums.sorted { (a, b) -> Bool in
    a > b
}

nums.sorted().reversed()
[Int](nums.sorted().reversed())


// MARK: - Sorting on Array - Mutable배열 정렬
// TIP: 메소드 이름이ed로 끝나면 새로운 배열로 리턴해준다.
// TIP: 메소드 이름이 동사이면 해당 배열에 작업이 일어난다.
var mutableNums = nums

mutableNums.sort()
mutableNums.reverse()

mutableNums
mutableNums.swapAt(0, 7)

mutableNums.shuffle()
//: [Next](@next)
