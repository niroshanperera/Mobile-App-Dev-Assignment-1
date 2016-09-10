// Chapter 6

// for-in loops

import Cocoa

var myFirstInt: Int = 0
for i in 1...5 {
    myFirstInt += 1
    print(myFirstInt)
}

myFirstInt = 0
for i in 1...5 {
    myFirstInt += 1
    print("myFirstInt equals \(myFirstInt) at iteration \(i)")
}

//replacing i with _
myFirstInt = 0
for _ in 1...5 {
    myFirstInt += 1
    print(myFirstInt)
}


//for-in loop with case
for case let i in 1...100 where i % 3 == 0 {
    print(i)
}

//classic for loop
myFirstInt = 0
for var i = 1; i < 6; ++i {
    ++myFirstInt
    print(myFirstInt)
}


//while loops
myFirstInt = 0
var i = 1
while i < 6 {
    ++myFirstInt
    print(myFirstInt)
    ++i
}

//repeat-while loop
var shields = 100
repeat {
    //Fire balsters!
    print("Fire blasters!")
    --shields
} while shields > 0


//Control transfer statements 
// Using continue

shields = 5
var blasteroverheating = false
var blasterFireCount = 0
while shields < 0 {  //condition needed to be altered to avoid never ending loop
    if blasteroverheating {
        print("Blasters are overheated!  Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blasteroverheating = false
        blasterFireCount = 0
    }
    
    if blasterFireCount > 100 {
        blasteroverheating = true
        
        continue
        //this will go to the begining of the while. It will check the shields
    }
    //Fire blaters!
    print("Fire Blasters!")
    ++blasterFireCount
    
}

//using a break
shields = 5
blasteroverheating = false
blasterFireCount = 0
var spaceDemonsDestroyed = 0
while shields > 0 {
    if spaceDemonsDestroyed == 5 { //conditon was altered
        print("You beat the game!")
        //this will exit the while loop
        break
    }
    
    if blasteroverheating {
        print("Blasters are overheated!  Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blasteroverheating = false
        blasterFireCount = 0
    }
    
    if blasterFireCount > 100 {
        blasteroverheating = true
        
        continue
        //this will go to the begining of the while. It will check the shields
    }
    //Fire blaters!
    print("Fire Blasters!")
    ++blasterFireCount
    ++spaceDemonsDestroyed
}


//Bronze Challange
// this will print all the even values from 0 to 100 
for _ in 1...5 {
    for i in 0...100 where i%2 == 0 {
        print(i)
    }
}
