import UIKit

let singleLine = "Every \\one \ton a \0single line\n"
let multiLine = """

   Hello James
    We came in from behind,
   And met Joshua sleeping

   """

print(multiLine)
print(singleLine)
// special charaters in string literals
let wiseWords = "\"Imagination is more important than knowledge\""
print(wiseWords)

let dollarSign = "\u{24}"
print(dollarSign)

let blackHeart = "\u{2665}"
let whatIs = "\u{7f406}"

print(blackHeart)
print(whatIs)

let withoutEscaping = """
"Wiser words"
"""

print(withoutEscaping)

let hashDelimter = ##"Hello, \##nworld"##
print(hashDelimter)

let threeMoreDoubleQuotationMark = #"""
Here are the three more quotes: """

"""#
print(threeMoreDoubleQuotationMark)

var emptyString = ""
var anotherEmptyString = String()

if emptyString == anotherEmptyString {
    print("YES")
}

let sampleString = "exodus"
//for index in sampleString.indices {
//    print(sampleString[index], terminator: "")
//}

var message = "Welcome"

message.insert("!", at:message.endIndex)

message.insert(contentsOf: " Mr James", at: message.index(before: message.endIndex))

let range = message.index(message.endIndex, offsetBy: -6)..<message.index(before: message.endIndex)

message.removeSubrange(range)
//print(message)

let greetings = "Hello, Joshua"

let index = greetings.firstIndex(of: ",") ?? greetings.index(before: greetings.endIndex)

let subString = greetings[..<index]
//print(String(subString))

let fathersName = "OAMEN"

