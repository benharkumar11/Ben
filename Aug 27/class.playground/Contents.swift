import UIKit

var greeting = "Hello, playground"

//// Classes -> reference type
//
//class Person {
//    var name: String
//    var age: Int
//    
//    init(name: String, age: Int){
//        self.name = name
//        self.age = age
//    }
//    func printName(){
//        print("name is \(name), age is \(age)")
//    }
//}
//
//let person1 = Person(name: "Batch", age: 24)
//let person2 = person1
//
//person2.name = "Ben"
//print(person1.name)
//print(person2.name)
//
////struct -- Value type
//
//struct School {
//    var sclName: String
//    var sclType: String
//    
//    func printIt() -> String {
//        return sclName + sclType
//    }
//}
//
//let scl1 = School(sclName: "Batch", sclType: "Primary")
//scl1.printIt()
//
//print(scl1.sclName)
//
//var scl2 = scl1
//
//scl2.sclName = "DPS"
//
//print(scl1.sclName)
//print(scl2.sclName)

/* 1) Type:
 classes: reference type
 struct: value type
 
 2)memory management
 class- stored in a heap memory, Multiple reference to the same class instance point to same memory
 struct- stored in a stcak. each var or const gets a unique copy of data. modifying one dont affect all
 
 3) Inheritance:
 class- support
 struct - doesn't support
 
 4) Inheritance:
 
class - It needs
 Struct - automatically provides
 */

// using mutating func

class Person {
    var name: String
    var age: Int

    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    func printName(){
        print("name is \(name), age is \(age)")
    }
    deinit {
            print("\(name) is being deinitialized.")
        }
}
let person1 = Person(name: "Batch", age: 24)
let person2 = person1

person2.name = "Ben"
print(person1.name)
print(person2.name)

struct School {
    var sclName: String
    var sclType: String
    
    mutating func updatesclName(to newName: String){
        self.sclName = newName
    }

    func printIt() -> String {
        return sclName + sclType
    }
}

let scl1 = School(sclName: "Batch", sclType: "Primary")

//print(scl1.sclName)

var scl2 = scl1
scl1.printIt()
scl2.sclName = "DPS"

print(scl1.sclName)
print(scl2.sclName)
