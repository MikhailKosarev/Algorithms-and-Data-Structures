// MARK: - Stack using Array
// LIFO - last in first out

// Operations: Push, Peek, Pop
struct Stack {
    private var array: [Int] = []
    
    /// add the item at the end
    public mutating func push(_ element: Int) {
        array.append(element)
    }
    
    /// return the last item
    public mutating func peek() -> Int? {
        return array.last
    }
    
    /// return and delete the last item
    public mutating func pop() -> Int? {
        return array.removeLast()
    }
    
    /// print all the items in the stack
    public func displayItems() {
        print("---Stack---")
        for element in array.reversed() {

            print(element)
        }
        print("-----------")
    }
}

var myStack = Stack()

myStack.push(1)
myStack.push(2)
myStack.push(3)
myStack.push(4)
myStack.push(5)
myStack.displayItems()
// ---Stack---
//5
//4
//3
//2
//1
//-----------

myStack.peek()  // return 5
myStack.displayItems()
// ---Stack---
//5
//4
//3
//2
//1
//-----------

myStack.pop()   // return 5
myStack.displayItems()
// ---Stack---
//4
//3
//2
//1
//-----------
