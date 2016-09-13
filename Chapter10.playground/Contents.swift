//Chapter10

import Cocoa
//creating a dictionary
var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]

//using count
print("I have rated \(movieRatings.count) Movies")


//reading avalue
let darkoRating = movieRatings["Donnie Darko"]

//modifying a value
movieRatings["Dark City"] = 5
movieRatings

//updating a value
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, currentRating = movieRatings["Donnie Darko"] {
    print("Old rating: \(lastRating); current Rating: \(currentRating)")
}


//Adding Values
movieRatings["The Cabinet of Dr. Caligari"] = 5

//Removing Values
movieRatings.removeValueForKey("Dark City")

//setting the key value to nil
movieRatings["Dark City"] = nil

//looping through the dictionary
for (key, value) in movieRatings {
    print("The movie \(key) ws rated \(value).")
}


//using just keys
for movie in movieRatings.keys {
    print("User has rated \(movie)")
    
}

//creating imutable dictionary

let album = ["Dieat Roast Beef": 268,
             "Dubba Dubbs Stubs His Toe": 467,
             "Smokey's Carpet Cleaning Service": 187,
             "Track 4": 221]

//sending keys to an array
let watchedMovies = Array(movieRatings.keys)


//Silver challenge, what I did my own
var state = ["Oklahoma": ["pawne": [73015,73022,73035,73050,74025], "payne": [74025,74068,74069,74029,74063], "Moore":[75263, 76987, 78457, 789504, 75869]]]
print(state)

//Practiicing what I found on lecture notes
var stateCounties = [String: Array<Int>]()
stateCounties["pawne"] = [73015,73022,73035,73050,74025]
stateCounties["payne"] = [74025,74068,74069,74029,74063]
stateCounties["Moore"] = [75263,76987,78457,78904,75869]

