// Chapter 4
import Cocoa

print("The maximum Int value is \(Int.max).")
print("The manimum Int value is \(Int.min)m")
print("The maximum 32-Bit Int value is \(Int32.max).")
print("The manimum 32-Bit Int value is \(Int32.min)m")
print("The maximum UInt value is \(UInt.max).")
print("The manimum UInt value is \(UInt.min)m")
print("The maximum 32-Bit UInt value is \(UInt32.max).")
print("The manimum 32-Bit UInt value is \(UInt32.min)")
let numberofPages: Int = 10 //Explicit declatation of Int
let numberOfChapters = 3 //Implicit declaration of Int
let nunberofPeople: UInt = 40
let volumeAdjustment: Int32 = -1000


//trying invalid values

// unsigned integers can't be negative
//let firstBadValue: UInt = -1
//the max value of the Int 8 is 127
//let secondBadValue: Int8 = 200

//operations on integer
print(10 + 20)
print(30 - 5)
print(5 * 6)


// order of operators
print(10 + 2 * 5)
print(30 - 5 - 5)
// using parantheses
print ((10 + 2) * 5)
print(30 - (5 - 5))

//integer division
print(11 / 3)

//remainders
print(11 % 3)
print(-11 % 3)

//operator shorthand 
// x++ and x-- is no more supporting in swift 3
var x = 10
x += 1
x -= 10
print(x)

//using an overflow operator
let y: Int8 = 120
let z = y &+ 10 // result will be -126
print("120 &+ 10 is \(z)")

//coverting between different integers to add values
let a: Int16 = 200
let b: Int8 = 20
let c = a + Int16(b)
print(c)

//declaring floating point numbers
let d1 = 1.1 //implictly double
let d2: Double = 1.1
let f1: Float  = 100.3


print(10.0 + 11.4)
print(11.0 / 3.4)
print(12.4 % 5.0)

//it's not a good idea to compare floating point numbers. It might work or might not depending on the value it holds
if d1 == d2 {
    print("d1 and d2 are the same!")
}

if d1 + 0.1 == 1.2 {
    print("Values are equal")
}

// Bronze Challenge

/// 11111111 will be representing -1
// same bit pattern will be 255 when unsigned

