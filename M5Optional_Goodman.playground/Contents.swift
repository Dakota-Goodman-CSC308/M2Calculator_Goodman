import UIKit

let name1 = 10
let name2: Int = 20
let name3: Int
name3 = 30
print(name3)

// Optionals / Optional Type

let num: Int? = nil  //nil -> no value, Optional<Int>
print(num)

let numStudents1: Int? = nil // Type Annotation
let numStudents2: Int? = 0 // Type Annotation
//let numStudents3: Int? = "" // Type Annotation

//Non-Optional and Optional
let number = 123
print(number)
//let numberOptional: Int? = 123
let numberOptional: Int? = nil
print(numberOptional)

//Forced Unwrapping: only use when you are 100% sure value is not nil
print(numberOptional!)//Crash

let numberOptional2: Int? = 123
let a = numberOptional2 // option + click
print (type(of:a))
let b = numberOptional!

let str = "123"
let num2 = Int(str) //Type Conversion -> Optional Type

let strOptional: String? = "123"
let num3 = Int(strOptional!) //Int()

//Unwrapping Optiona
//1.Forced Unwrapping
//2. Optional Binding - safely


/*
 if let name: Type = optionalExpression{ // runs once if unwrapping succeeds. the optional isn't nil
    statement
 } else{
 }
 while let name: Type = optionalExpression{
    statement
 }
 guard let name: Type = optionalExpression else
    statement
    return
 }
 */

let str2: String? = "123"
let num4 = Int(str2!)! // Forced Unwrapping


/*
//Optional Binding
if let str2: String = str2{
    if let num4 = Int(str2){
        print(num4)
    } else{
        print("Type Conversion Failed")
    }
} else{
    print("Optional Binding Failed")
}
*/


//Multiple-Optional Binding
if let str2 = str2, num4 = Int(str2){
    print(num3)
} else{
    print("Type Conversion or Optional Binding Failed")
}


