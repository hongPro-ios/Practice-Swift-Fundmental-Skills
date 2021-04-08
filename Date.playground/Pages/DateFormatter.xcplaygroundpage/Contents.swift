//: [Previous](@previous)

import Foundation


let now = Date()

let formatterDate = DateFormatter()
formatterDate.string(from: now)

let formatterDateStyleNone = DateFormatter()
let formatterDateStyleShort = DateFormatter()
let formatterDateStyleMedium = DateFormatter()
let formatterDateStyleLong = DateFormatter()
let formatterDateStyleFull = DateFormatter()
let formatterTimeStyleNone = DateFormatter()
let formatterTimeStyleShort = DateFormatter()
let formatterTimeStyleMedium = DateFormatter()
let formatterTimeStyleLong = DateFormatter()
let formatterTimeStyleFull = DateFormatter()
formatterDateStyleNone.dateStyle = .none
formatterDateStyleShort.dateStyle = .short
formatterDateStyleMedium.dateStyle = .medium
formatterDateStyleLong.dateStyle = .long
formatterDateStyleFull.dateStyle = .full

formatterTimeStyleNone.timeStyle = .none
formatterTimeStyleShort.timeStyle = .short
formatterTimeStyleMedium.timeStyle = .medium
formatterTimeStyleLong.timeStyle = .long
formatterTimeStyleFull.timeStyle = .full

formatterDateStyleNone.string(from: now)
formatterDateStyleShort.string(from: now)
formatterDateStyleMedium.string(from: now)
formatterDateStyleLong.string(from: now)
formatterDateStyleFull.string(from: now)

formatterTimeStyleNone.string(from: now)
formatterTimeStyleShort.string(from: now)
formatterTimeStyleMedium.string(from: now)
formatterTimeStyleLong.string(from: now)
formatterTimeStyleFull.string(from: now)

let formatterLocale = DateFormatter()
formatterLocale.dateStyle = .full
formatterLocale.timeStyle = .full
formatterLocale.string(from: now)

let formatterLocaleKr = DateFormatter()
formatterLocaleKr.dateStyle = .full
formatterLocaleKr.timeStyle = .full
formatterLocaleKr.locale = Locale(identifier: "ko_kr")
formatterLocaleKr.string(from: now)

let formatterLocaleJp = DateFormatter()
formatterLocaleJp.dateStyle = .full
formatterLocaleJp.timeStyle = .full
formatterLocaleJp.locale = Locale(identifier: "ja_jp")
formatterLocaleJp.string(from: now)
formatterLocaleJp.dateFormat


DateFormatter.localizedString(from: now, dateStyle: .full, timeStyle: .full)

let custom = DateFormatter()
custom.dateFormat = "yyyy = MM = dd HH:mm"
custom.string(from: now)
//: [Next](@next)

