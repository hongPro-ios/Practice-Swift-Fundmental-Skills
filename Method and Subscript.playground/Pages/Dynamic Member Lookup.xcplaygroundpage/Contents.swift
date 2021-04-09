//: [Previous](@previous)

import Foundation

@dynamicMemberLookup
struct Person {
    var name: String
    var address: String
    
    subscript(dynamicMember member: String) -> String {
        switch member {
        case "nameKey":
            return name
        case "addressKey":
            return address
        default:
            return "n/a"
        }
    }
}

let p = Person(name: "hong", address: "tokyo")
p.name
p.address

p.nameKey
p.addressKey

p[dynamicMember: "nameKey"]
p[dynamicMember: "addressKey"]
//: [Next](@next)
