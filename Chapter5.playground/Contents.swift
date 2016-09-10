//Chapter 5

import Cocoa

var statusCode: Int = 404
var errorString: String
switch statusCode {
case 400:
    errorString = "Bad request"
case 401:
    errorString = "Unauthorized"
case 403:
    errorString = "Forbidden"
case 404:
    errorString = "Not Found"
default:
    errorString = "None"
}

// swith cases when have multiple values

errorString = "The request failed with the error:"
switch statusCode {
case 400, 401, 403, 404:
    errorString = "There was something wrong with request."
    fallthrough
    //fallthrough is need to let the switch to flow to the next statment even the current satisfies
    //In someother languages we need to use a explicit break to avoid the fallthrough
    //In swift the break is default
default:
    errorString += "Please review the request and try again"
}

//Ranges
switch statusCode {
case 100, 101:
    errorString += " Informational, 1xx."
case 200:
    errorString += " Successful but no conent, 204."
case 300...307:
    errorString += " Redrection, 3xx."
case 400...417:
    errorString += " Client Error, 4xx."
case 500...505:
    errorString += " Client Error, 5xx."
default:
    errorString += "Unknown, Please review the request and try again"
}

//value binding
switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)."
case 200:
    errorString += " Successful but no conent, \(statusCode)."
case 300...307:
    errorString += " Redrection, \(statusCode)."
case 400...417:
    errorString += " Client Error, \(statusCode)."
case 500...505:
    errorString += " Client Error, \(statusCode)."
default:
    errorString += "\(statusCode), Please review the request and try again"
//case let unknownCode:  //default is replaced by the unknownCode constant
//    errorString += "\(unknownCode), Please review the request and try again"
}


//where
switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)."
case 200:
    errorString += " Successful but no conent, \(statusCode)."
case 300...307:
    errorString += " Redrection, \(statusCode)."
case 400...417:
    errorString += " Client Error, \(statusCode)."
case 500...505:
    errorString += " Client Error, \(statusCode)."
case let unknownCode where (unknownCode >= 200 && unknownCode < 300)
                                    || unknownCode > 505:
    errorString += "\(unknownCode) is not a known error code."
default:
    errorString += "Unexpected error encountered."
}

//creating a tuple
let error = (statusCode, errorString)
//accessing elements in a tuple
error.0
error.1

//naming the tuple elements
let error1 = (code: statusCode, error: errorString)
error1.code
error1.error


//pattern matching in tuples
let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case (400, 404):
    print("No items found.")
case (404, _):
    print("First item not found.")
case (_, 404):
    print("Second item not found")
default:
    print("All items found")
}


// if case , a solution for single switch case
// default is must, in default we just need to add break, therefore if case is a fine solution
let age = 25
if case 18...35 = age {
    print("Cool demograhic")
}

//if case with wehre clause
if case 18...35 = age where age >= 21 {
    print(" In cool demographic and of drinking age")
}




//Bronze challenge
//this will print the first case therefore anser is "(1,4) is in quadrant 1")
let point = (x:1, y:4)
switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")
case let q2 where (point.x < 0) && (point.y > 0):
    print("\(q2) is in quadrant 2")
case let q3 where (point.x < 0) && (point.y < 0):
    print("\(q3) is in quadrant 3")
case let q4 where (point.x > 0) && (point.y < 0):
    print("\(q4) is in quadrant 4")
case (_, 0):
    print("\(point) sits on the x-axis")
case (0, _):
    print("\(point) sits on the y-axis")
default:
    print("Case not covered")
}


