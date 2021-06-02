import Foundation

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
        throw DataParsingError.invalidType
    }
    
    // Parsing
    
}


try? parsing(data: [:])

func handleError() throws {
    do {
        try parsing(data: [:])
    } catch {
        //        dump(error)
        if let error = error as? DataParsingError {
            switch error {
            case .invalidField:
                print("missingRequiredField error")
            default:
                print("default error")
            }
        }
        
    } 
}


try? handleError()
