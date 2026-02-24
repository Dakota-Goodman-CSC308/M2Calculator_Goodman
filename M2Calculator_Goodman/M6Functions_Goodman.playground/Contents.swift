import UIKit

print() //Built-in function
/*
 func name(parameters) -> ReturnType{ //function header
    statements //function body
 }
 
 functionName(parameters)
 */

//1. Define a function that prints "Hello"
func sayHello(){
    print("Hello")
}
sayHello()

//function: function name + argument: sayHello(with:)
//2. Get name from parameter and print next to hello
func sayHello(_ name: String){ //Formal Parameter
    // print("Hello " + name)
    print("Hello \(name)") //String Interpolation
}
sayHello("Swift") //Argument Label: Actual Parameter or Argument

//3. Define a function that takes two integers and print their sum
func add(a: Int, b: Int){
    print(a+b)
}
add(a:1, b:2)

// M6 Challenge Tasks 3
//1.
func greet(with name: String){
    print("Hello \(name)")
}
greet(with: "Ada")

//2.
func max2(_ a: Int, _ b: Int) -> Int{
    return a > b ? a : b
}

//3.
func firstChar(of s: String) -> String{
    if let ch = s.first{
        return String(ch)
    } else {
        return "-"
    }
}

let a = firstChar(of: "Hello")
let b = firstChar(of: "")
print(a)
print(b)

//4.
func f(_ a: Int, _ b: Int = 2) -> Int{
    a * b
}
print(f(3))
print(f(3,4))

//5.
func safeDivide(_ a: Int, by b: Int) -> Int?{
    if b == 0{
        return nil
    } else {
        return a/b
    }
}

if let c = safeDivide(10, by: 2){
    print(c)
}else{
    print("Cannot divide by zero")
}

