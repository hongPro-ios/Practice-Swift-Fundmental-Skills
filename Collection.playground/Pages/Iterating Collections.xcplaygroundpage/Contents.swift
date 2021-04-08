//: [Previous](@previous)

import Foundation

// MARK: - for-in
let array = [1, 2, 3]
for num in array {
    print(num)
}

let set: Set = [1, 2, 3]
for num in set {
    print(num)
}

let dictionary = [1: "A", 2: "B" ]
for (key, value) in dictionary {
    print(key, value)
}

// MARK: - forEach
array.forEach { num in
    print(num)
}
array

set.forEach { num in
    print(num)
}

dictionary.forEach { key, value in
    print("key: ", key)
    print("value : ", value)
    
}

// 반복문이기 때문에 break continue를 사용할 수 있다.
func withForIntIn() {
    print(#function)
    let arr = [1, 2, 3]
    for num in arr {
        print(num)
        return
    }
}

// 반복문이 아니기 때문에 break continue를 사용할 수 없다.
func withForEach() {
    print(#function)
    let arr = [1, 2, 3]
    arr.forEach { (num) in
        print(num)
        return
    }
}

withForIntIn()
withForEach()
//: [Next](@next)
