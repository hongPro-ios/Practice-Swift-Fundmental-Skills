import Foundation

let now = Date()

print(now)

var dt = Date(timeIntervalSinceReferenceDate: 60 * 60)


let oneSec = TimeInterval(1)
let oneMillisecond = TimeInterval(0.001)
let oneMin = TimeInterval(60)
let oneHour = TimeInterval(oneMin * 60)
let oneDay = TimeInterval(oneHour * 24)


let timeIntervalSince1970 = Date(timeIntervalSince1970: oneSec)
type(of: timeIntervalSince1970)

Date().timeIntervalSinceNow
var dateComponent = DateComponents()
dateComponent.year = 2000
dateComponent.calendar = .current
dateComponent.date



