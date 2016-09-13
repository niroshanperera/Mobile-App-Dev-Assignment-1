//Chapter8

import Cocoa
// optionals
var errorCodeString: String?
errorCodeString = "404"
print(errorCodeString)

//adding a condition

if errorCodeString != nil {
    let theError = errorCodeString
    print(theError)
}

//optinal binding
if let theError2 = errorCodeString {
    print(theError2)
}

//nesting otpional binding
if let theError3 = errorCodeString {
    if let errorCodeInteger = Int(theError3) {
        print("\(theError3):  \(errorCodeInteger)")
    }
}

//unwrapping multiple optionals
if let theError4 = errorCodeString, errorCodeInteger1 =  Int(theError4) {
    print("\(theError4): \(errorCodeInteger1)")
}

//unwrapping multiple optionals where clause
if let theError5 = errorCodeString, errorCodeInteger2 =  Int(theError5)
    where errorCodeInteger2 == 404 {
    print("\(theError5): \(errorCodeInteger2)")
}

//optional chaining
var errorDescription: String?
if let theError6 = errorCodeString, errorCodeInteger3 =  Int(theError6)
    where errorCodeInteger3 == 404 {
    errorDescription = ("\(errorCodeInteger3 + 200): the requested resource was not found.")
}

var upCaseErrorDescription = errorDescription?.uppercaseString
//modifying an optional
upCaseErrorDescription?.appendContentsOf(" PLEASE TRY AGAIN.")


//The Nil Coalescing operator

let description: String
if let errorDescription1 = errorCodeString {
    description = errorDescription1
} else {
    description = "No error"
}

let description1 = errorDescription ?? "No error"


//Silver Challenge
var checkError: String?
print(checkError!) //this gives a fatal error: unexpectedly found nil while unwrapping an optional value



