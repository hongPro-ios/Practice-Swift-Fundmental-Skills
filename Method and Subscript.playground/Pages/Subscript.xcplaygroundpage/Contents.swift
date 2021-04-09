//: [Previous](@previous)

import Foundation

let list = ["A", "B", "C"]
// Subscript 사용법!
list[0]

class List {
    var data = [1, 2, 3]
    
    subscript(index: Int) -> Int {
        get {
            return data[index]
        }
        set {
            data[index] = newValue
        }
    }
}

let l = List()
l[0]
l[1] = 123

// 서브스크립트를 쓰는 이유가 있나??
struct Matrix {
    var data = [[1, 2, 3],
                [4, 5, 6]]
    
    subscript(row: Int, col: Int) -> Int {
        data[row][col]
    }
}

let m = Matrix()
m[1,2]


//: [Next](@next)
