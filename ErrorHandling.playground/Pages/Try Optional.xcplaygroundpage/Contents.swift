// optional try

enum DataParsingError: Error {
    case invalidType
    case invalidField
    case missingRequiredField(String)
}

func parsing(data: [String: Any]) throws {
    guard let _ = data["name"] else {
        throw DataParsingError.missingRequiredField("name")
    }
    
    guard let _ = data["age"] as? Int else {
        throw DataParsingError.invalidField
    }
}


if let _ = try? parsing(data: ["name":"hong", "age": 2]) {
    print("success")
} else {
    print("failed")
}


do {
    try parsing(data: [:])
    print("sjuccess")
} catch {
    print("fail1!")
}


print(try! parsing(data: ["name":"hong", "age": 2]))
print(try? parsing(data: [:]))

