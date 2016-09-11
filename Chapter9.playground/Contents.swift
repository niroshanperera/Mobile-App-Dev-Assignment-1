//Chapter 9

import Cocoa

//creating an array String type
var bucketList1: Array<String>
//creating the instace of Array
var bucketList2: [String]
//Initializing the array
var bucketList3: [String] = ["Clib Mt. Everest"]
//using type inference
var bucketList = ["Climb Mt. Everest"]
bucketList.append("Fly hot air ballon to Fiji")
bucketList.append("Watch the Loard of the Rings trilogy in onday")
bucketList.append("Go on a walkabout")
bucketList.append("Scuba dive in the Great Blue Hole")
bucketList.append("Find a triple rainbow")


//removing an item from the array
bucketList.removeAtIndex(2)
bucketList

//counting items in the array
print(bucketList.count)
// Subscripting to Find top three items
print(bucketList[0...2])


//using subscripting to attend new info
bucketList[2] += " in Austrailia"
bucketList

//replacing an Array item
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList
//using a loop to append items form one arry to another
// i did the same example other way around
var newItems:[String] = ["First item of new item Array to Append"]
for item in bucketList {
    newItems.append(item)
}
newItems

// refactoring with addition and assignment operator
var newItems2: [String] = ["First item of new Item Array 2"]
newItems2 += bucketList
newItems2

//inserting a new ambition
bucketList.insert("Toboggan accros Alasca", atIndex: 2)

//Array Equality
//Modified the given code to match my program

let equal = (newItems == newItems2)
// if wanted to print true needed to have two equal arrays

//immutable arrays. (arrays that can't be changed)
let lunches = [ "Burger", "pizzza", "salad", "Chicken cesr"]



//Bronze Challenge

//Varialble arrayLength can be used
// Array.count will also do the job

//Silver Challenge
var toDoList = ["Take out garbage", "Pay bills", "Cross off finished items"]
var last: Int = toDoList.count - 1
for i in 0...(toDoList.count - 1)/2  {
    if i != last {
        swap(&toDoList[i], &toDoList[last])
        --last
    }
    
}
print(toDoList)

//the function available in swift is reverse()
toDoList.reverse()
print(toDoList)