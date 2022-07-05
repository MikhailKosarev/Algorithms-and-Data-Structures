// MARK: - Queue using Linked List

/// Operations:
/// - Enqueue: To insert an item from the rear
/// - Dequeue: To delete an item from the front
/// - Front: To get the first item
/// - Rear: To get the last item

class Node {
    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

struct Queue {
    var front: Node?
    var rear: Node?
    
    var isEmpty: Bool {
        return front == nil
    }
    
    public mutating func enqueue(_ element: Int) {
        let newNode = Node(value: element, next: nil)
        guard !isEmpty else {
            front = newNode
            return
        }
        guard rear != nil else {
            front?.next = newNode
            rear = front?.next
            return
        }
        rear?.next = newNode
        rear = rear?.next
    }
    
    public mutating func dequeu() -> Int? {
        let returnValue = front?.value
        front = front?.next
        if isEmpty {
            rear = nil
        }
        return returnValue
    }
    
    public func peek() -> Int? {
        return front?.value
    }
    
    public func displayItems() {
        var current = front
        print("Queue / ", terminator: "")
        while current != nil {
            print(current?.value, terminator: ", ")
            current = current?.next
        }
        print("/ end")
    }
}

let node3 = Node(value: 3, next: nil)
let node2 = Node(value: 2, next: node3)
let node1 = Node(value: 1, next: node2)

var myQueue = Queue(front: node1, rear: node3)
myQueue.displayItems()  // 1, 2, 3
myQueue.peek()  // 1
myQueue.enqueue(4)
myQueue.displayItems()  // 1, 2, 3, 4
myQueue.dequeu()
myQueue.displayItems()  // 2, 3, 4

var myNextQueue = Queue()
myNextQueue.enqueue(1)
myNextQueue.enqueue(2)
myNextQueue.enqueue(3)
myNextQueue.displayItems()  // 1, 2, 3
myNextQueue.enqueue(10)
myNextQueue.enqueue(11)
myNextQueue.enqueue(12)
myNextQueue.dequeu()
myNextQueue.dequeu()
myNextQueue.dequeu()
myNextQueue.displayItems()  // 10, 11, 12
