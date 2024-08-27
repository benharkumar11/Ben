import UIKit

var greeting = "Hello, playground"
// removing duplicates in an array
let a = [1, 2, 3, 1, 4, 2, 5]
var b: [Int] = []

for i in a {
    if !b.contains(i) {
        b.append(i)
    }
}

print(b)

// even number from 1 to 100
for i in 1...100 {
    if i % 2 == 0 {
        print(i)
    }
}


// print the name
for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("Ben G")
    }else if i % 3 == 0 {
        print("Ben")
    }else if i % 5 == 0 {
        print("G")
    }
    
}

// arrayasfunc and print second largest

func lar_num(_ arr: [Int] ) -> Int{
    var a = 0
    var b = 0
    for i in arr {
        if i > a {
            b = a
            a = i
        }else if i > b {
            b = i
        }
    }
    return b
}
var arr = [4,7,9,13,25,11,75,43]
print(lar_num(arr))
