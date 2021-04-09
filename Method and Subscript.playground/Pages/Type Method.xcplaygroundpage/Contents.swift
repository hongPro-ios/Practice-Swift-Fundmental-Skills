//: [Previous](@previous)

import Foundation

class SuperClass {
    static let staticStr = "hoho"
// Error
//    class let classStr = "hoho"
    
    static func staticFunc() {
        print(#function)
        print(staticStr)
    }
    class func classFunc() {
        print(#function)
        print(staticStr)
    }
    func instanceFunc() {
        print(#function)
        print(SuperClass.staticStr)
    }
}

class SubClass: SuperClass {
    override class func classFunc() {
        super.classFunc()
    }
// Error
//    override class func staticFunc() {
//        super.staticFunc()
//    }
    
}

struct Struct {
    static func staticFunc() {
        print(#function)
    }
// Error
//    class func classFunc() {
//        print(#function)
//    }
}

SuperClass.staticFunc()
SuperClass.classFunc()

Struct.staticFunc()
// Error
//Struct.classFunc()


//: [Next](@next)
