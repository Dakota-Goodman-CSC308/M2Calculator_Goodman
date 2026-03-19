import UIKit

/*
 Closure
 function(Named Closure): reuseable block
 func name(params: String) -> ReturnType{
     
 }
 Closure(Unnamed Closure): a block of code that can be stored, used, or passed as a value
 */
/*
closure 1:
{(params: String) -> ReturnType in
    
}

closure2:
{() -> ReturnType in
    
}

closure3:
{() in
    
}

closure4:
{ Code}
 
*/
func sayHello(){
    print("Named Closure 1.")
}
//() -> ()
let a: () -> Void = {() in
    print("Unnamed Closure 1.")
}

//(params) -> (ReturnType)
let sayHelloClosure: () -> () = {() in
    print("Unnamed Closure 1.")
}
sayHelloClosure()

let i = 0 //Int
let s = "hello" //String

//(Int, Int) -> Int
func add(a: Int, b: Int) -> Int {
    return a + b
}

func execute(codeBlock: () -> ()) -> Void{
    codeBlock()
}

execute(codeBlock: {() in
    print("Unnamed Closure 1.")
})
execute(codeBlock: sayHello)

let arithmetic: ((Int, Int) -> Int)? = {(a: Int, b: Int) -> Int in
    return a + b
}

func sayHello2(with name: String?) -> String{
    if let name{
        return "Hello, \(name)"
    }else{
        return "Hello Guest"
    }
}

sayHello2(with: nil)
sayHello2(with: "John")

func sayHello3(with name: String = "Guest") -> String{
    return "Hello, \(name)"
}
sayHello3(with: "John")
sayHello3()

//Q3.

func performTask(task: () -> Void){
    task()
}

let myClosure = { print("Task completed.")}
performTask(task: myClosure)

//Q4.
let countCharacters = {(text: String) -> Int in
    return text.count
}

print(countCharacters("Swift")) //no argument labels in the closure call

