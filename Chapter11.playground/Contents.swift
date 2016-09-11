//Chapter11

import Cocoa

//adding a set
var groceryBag = Set<String>()
groceryBag.insert("Apples")
groceryBag.insert("Oranges")
groceryBag.insert("Pineapple")

//looping througha set
for food in groceryBag {
    print(food)
}

//creating a set, redux
var groceryBag1 = Set(["Apples", "Oranges", "Pineapple"])
//another way
var groceryBag2: Set = ["Apples", "Oranges", "Pineapple"]

//working with sets
let hasBananas = groceryBag.contains("Bananas") // Value will be false

//union
let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)

//itersection
let roomateGroceryBag = Set (["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersect(roomateGroceryBag)

//disjoints
let yourSecondBag = Set(["Berries", "Yougurt"])
let roomateSecondBag = Set (["Graptes", "Honey"])
let disJointSet = yourSecondBag.isDisjointWith(roomateSecondBag) // this will return true


//Bronze Challenge
let myCities = Set(["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco"])
let yourCities = Set (["Chicago", "San Francisco", "Jacksonville"])

let isSuperSet:Bool = myCities.isSupersetOf(yourCities) //this will return true



//Silver Challenge
//As an alternative to the unition there add items to my grocerybag from my friends grocerybagg
groceryBag.unionInPlace(friendsGroceryBag)
print(groceryBag)

//As an alternative to the intersection modify my grocerybag
groceryBag.intersectInPlace(friendsGroceryBag)
print(groceryBag)
