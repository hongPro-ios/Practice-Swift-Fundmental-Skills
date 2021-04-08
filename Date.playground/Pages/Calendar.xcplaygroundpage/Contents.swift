//: [Previous](@previous)

import Foundation

Calendar.Identifier.gregorian

Calendar.current //아이폰 설정에 영향을 받는다
Calendar.autoupdatingCurrent //아이폰 설정에 영향을 받는다

// current는 사용자가 달력설정을 바꾸어도 새로운 달력으로 업데이트 되지 않음
// autoupdatingCurrent는 사용자가 달력설정을 바꾸면 새로운 달력으로 업데이트한다

// 업데이트 한다는 말의 타이밍은? 어떤거지?

// 대부분의 경우에는 Calendar.current사용한다

let now = Date()
let calendar = Calendar.current

let components = calendar.dateComponents([.year, .month, .day], from: now)


components.year
components.month

let year = calendar.component(.day, from: now)


var myBirthDateComponents = DateComponents()
myBirthDateComponents.year = 1990
myBirthDateComponents.month = 3
myBirthDateComponents.day = 12

calendar.date(from: myBirthDateComponents)





//: [Next](@next)
