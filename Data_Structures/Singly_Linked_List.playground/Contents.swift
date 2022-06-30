// MARK: - Singly Linked List
/// .isEmpty
/// .first
/// .last
/// .displayValues
/// .append
/// .remove
/// .insertInOrder
/// .setupDefaultList

class Node {
    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

class LinkedList {
    var head: Node?
    
    ///return False if the List is empty
    var isEmpty: Bool {
        return head == nil
    }
    
    ///return th first Node if it exists
    var first: Node? {
        return head
    }
    
    ///return th last Node if it exists
    var last: Node? {
        // empty list
        guard var current = head else { return nil }
        
        while let next = current.next {
            current = next
        }
        return current
    }
    
    ///print all the items in the Linked List
    func displayValues() {
        print("Items inside the List:", terminator: " ")
        var current = head
        while current != nil {
            print(current?.value ?? "", terminator: " -> ")
            current = current?.next
        }
        print("nil")
    }
    
    ///append the value at the end of the List
    func append(value: Int) {
        // empty list
        if head == nil {
            head = Node(value: value, next: nil)
            return
        }
        
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = Node(value: value, next: nil)
    }
    
    ///delete the  value from the List
    func remove(value: Int) {
        // check if the value is in the first node
        if head?.value == value {
            head = head?.next
            return
        }
        
        var prev: Node?
        var current = head
        
        while current != nil && current?.value != value {
            prev = current
            current = current?.next
        }
        prev?.next = current?.next
    }
    
    ///insert the value into the List in an orderly manner
    func insertInOrder(value: Int) {
        if head == nil {
            head = Node(value: value, next: nil)
            return
        }
        
        var current = head
        var prev: Node?
        while current != nil {
            if current?.value ?? 0 > value {
                prev?.next = Node(value: value, next: current)
                return
            }
            prev = current
            current = current?.next
        }
    }
    
    ///fill the List with the default 1->2>3 values
    func setupDefaultList() {
        let three = Node(value: 3, next: nil)
        let two = Node(value: 2, next: three)
        head = Node(value: 1, next: two)
    }
}

let sampleList = LinkedList()
sampleList.isEmpty  // true
sampleList.setupDefaultList()
sampleList.isEmpty  //false
sampleList.first?.value    // 1
sampleList.last?.value  // 3

sampleList.displayValues()   // Values inside the List: 1 -> 2 -> 3 -> nil

sampleList.append(value: 4)
sampleList.append(value: 5)
sampleList.displayValues()   // Values inside the List: 1 -> 2 -> 3 -> 4 -> 5 -> nil

sampleList.remove(value: 3)
sampleList.displayValues()   // Values inside the List: 1 -> 2 -> 4 -> 5 -> nil

sampleList.insertInOrder(value: 3)
sampleList.displayValues()  // Values inside the List: 1 -> 2 -> 3 -> 4 -> 5 -> nil



