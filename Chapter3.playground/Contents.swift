// chapter 3

// if else
import Cocoa

var population: Int = 5422
var message: String
var hasPostOffice: Bool = true

if population < 10000 {
    message = "\(population) is small town!"
} else {
    message = "\(population) is pretty big!"
}
print(message)

if !hasPostOffice {
    print("Where do we buy stamps?")
}


// ternary operator

message = population < 10000 ? "\(population) is a small town!" : "\(population) is pretty big!"
print(message)

// restoring if/else
if population < 10000 {
    message = "\(population) is a small town!"
} else {
    message = "\(population) is pretty big!"
}
print(message)



// nested ifs
import Cocoa

var population1: Int = 5422
var message1: String
var hasPostOffice1: Bool = true

if population1 < 10000 {
    message1 = "\(population1) is small town!"
} else {
    if population1 >= 10000 && population1 < 50000 {
        message1 = "\(population1) is a medium town!"
    } else {
        message1 = "\(population1) is pretty big!"
    }
}
print(message1)

if !hasPostOffice1 {
    print("Where do we buy stamps?")
}


// else if
import Cocoa

var population2: Int = 5422
var message2: String
var hasPostOffice2: Bool = true

if population2 < 10000 {
    message2 = "\(population2) is small town!"
} else if population2 >= 10000 && population2 < 50000 {
    message2 = "\(population2) is medium town!"
} else {
    message2 = "\(population2) is pretty big!"
}
print(message2)

if !hasPostOffice2 {
    print("Where do we buy stamps?")
}


//Bronze challenge
import Cocoa

var population3: Int = 200000
var message3: String
var hasPostOffice3: Bool = true

if population3 < 10000 {
    message3 = "\(population3) is small town!"
} else if population3 >= 10000 && population3 < 50000 {
    message3 = "\(population3) is medium town!"
} else if population3 >= 50000 && population3 < 100000{
    message3 = "\(population3) is pretty big!"
} else {
    message3 = "\(population3) is very large!"
}
print(message3)

if !hasPostOffice2 {
    print("Where do we buy stamps?")
}















