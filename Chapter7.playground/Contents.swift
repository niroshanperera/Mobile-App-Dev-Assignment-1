//Chapter 7

import Cocoa

let playground = "Hello, playground"
//mutable instance, means can change
var mutablePlayground = "Hello, mutable playground"

mutablePlayground += "!"
for c: Character in mutablePlayground.characters {
    print("\(c)")
}

// using a unicode scalar
let oneCoolDude = "\u{1F60E}"

//using a combining scalar
let aAcute = "\u{0061}\u{0301}"

//revealing the unicode scalars behind a string
for scalar in playground.unicodeScalars {
    print("\(scalar.value)")
}

//canonical equivalence
let aAcutePrecomposed = "\u{00E1}"

//checking equivalence
let b = (aAcute == aAcutePrecomposed) //this returns true


//counting characters (elements)
print ("aAcute: \(aAcute.characters.count); aAcuteDecomposed: \(aAcutePrecomposed.characters.count)")

//Finding the fifth character
let fromStart = playground.startIndex
let toPosition = 4 // the fifth posistion since the index is starting from 0
let end = fromStart.advancedBy(toPosition)
let fifthCharacter = playground[end]

//pulling out a range
let range = fromStart...end
let firstFive = playground[range] // This is Hello

//Silver Challenge
let replaceHello = "\u{0048}\u{0065}\u{006C}\u{006C}\u{006F}"
