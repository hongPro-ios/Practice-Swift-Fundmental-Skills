//: [Previous](@previous)

import Foundation

class Sample {
    var data = 0
    static var sharedData = 123
    
    func doSometing() {
        print(data)
        Sample.sharedData
    }
    
    func call() {
        doSometing()
    }
}

let a = Sample()
a.data
a.doSometing()

class SizeClass {
    var width = 0.0
    var height = 0.0
    
    func enlarge() {
        width += 1.0
        height += 1.0
    }
}
let sc = SizeClass()
sc.enlarge()

struct SizeStruct {
    
    static var temp = 0.0
    var width = 0.0
    var height = 0.0
    
    mutating func enlarge() {
        width += 1.0
        height += 1.0
    }
    
    static func eaaa() {
        temp += 1.0
    }
}

var ss = SizeStruct()
ss.enlarge()
//: [Next](@next)
