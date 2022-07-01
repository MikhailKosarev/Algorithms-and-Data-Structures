// MARK: - Stack using Linked List
// LIFO - last in first out

// Operations: Push, Peek, Pop

class Node {
    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}


struct Stack {
    var top: Node?
    
    /// add the item at the end
    public mutating func push(_ element: Int) {
        top = Node(value: element, next: top)
    }
    
    /// return the last item
    public func peek() -> Int? {
        return top?.value
    }
    
    /// print all the items in the stack
    public mutating func pop() -> Int? {
        let currentTop = top?.value
        top = top?.next
        return currentTop
    }
}

var myStack = Stack()
myStack.push(1)
myStack.push(2)
myStack.push(3)

myStack.peek()  // 3
myStack.pop()   // 2
myStack.peek()  // 2
