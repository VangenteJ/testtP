import UIKit

var str = "Hello, playground"

let date = Date()
let calendar = Calendar.current

let hour = calendar.component(.hour, from: date)
let minutes = calendar.component(.minute, from: date)
let seconds = calendar.component(.second, from: date)
let day = calendar.component(.day, from: date)
let month = calendar.component(.month, from: date)
print ("\(hour):\(minutes):\(seconds)")
print ("\(day)/\(month)")

