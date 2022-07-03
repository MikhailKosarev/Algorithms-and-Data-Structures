// MARK: - Queue using Array

/// Operations:
/// - Enqueue: To insert an item from the rear
/// - Dequeue: To delete an item from the front
/// - Front: To get the first item
/// - Rear: To get the last item

struct Queue {
    var array: [Int] = []
    
    /// check if the queue is empty
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    /// insert an item from the rear
    public mutating func enqueue(_ element: Int) {
        array.append(element)
    }
    
    /// delete an item from the front
    public mutating func dequeue() -> Int? {
        return array.removeFirst()
    }
    
    /// get the first item
    public func front() -> Int? {
        return array.first
    }
    
    /// get the last item
    public func rear() -> Int? {
        return array.last
    }
    
    // print element of the queue
    public func displayItems() {
        for element in array {
            print(element, terminator: ", ")
        }
    }
}

var myQueue = Queue()

myQueue.enqueue(1)
myQueue.enqueue(2)
myQueue.enqueue(3)
myQueue.displayItems()  // 1, 2, 3

myQueue.front() // 1
myQueue.rear()  // 3

myQueue.dequeue()   // 1
myQueue.displayItems()  // 2, 3
myQueue.isEmpty // false
