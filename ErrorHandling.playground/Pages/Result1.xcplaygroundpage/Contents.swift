import Foundation

// Result Type

enum Invalid: Error {
    case oddNumber
    case negativeNumber
}

enum InvalidSize: Error {
    case tooLarge
}


// 짝수 곱*2
func process(number: Int) throws -> Int {
    guard number.isMultiple(of: 2) else {  throw Invalid.oddNumber }
    guard number >= 0 else { throw Invalid.negativeNumber }
    guard number < 10000 else { throw InvalidSize.tooLarge }
    
    return number * 2
}

//
//do {
//    let result = try process(number: 1000000)
//    print(result)
//} catch Invalid.oddNumber {
//    print("error")
//} catch {
//    print(error)
//}

let result = Result { try process(number: 1) }
print(result)
switch result {
case .success(let data):
    print(data)
case .failure(let error):
//    print(error.localizedDescription)
    print(error)
}


func processResult(number: Int) -> Result<Int, Invalid> {
    guard number.isMultiple(of: 2) else {  return .failure(.oddNumber) }
    guard number >= 0 else { return .failure(.negativeNumber)  }
    
    return .success(number * 2)
}

let result2 = processResult(number: 1)
switch result2 {
case .success(let data):
    print(data)
case .failure(let error):
//    print(error.localizedDescription)
    print(error)
}
