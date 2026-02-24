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
