import UIKit

var str = "Hello, playground"

let date = Date()
let calendar = Calendar.current

let hour = calendar.component(.hour, from: date)
let minutes = calendar.component(.minute, from: date)
let seconds = calendar.component(.second, from: date)
let day = calendar.component(.day, from: date)
let month = calendar.component(.month, from: date)

var a = 12
var b = hour

var ab = b - a
print ("You have spent: \(ab) seconds on your phone today!")




