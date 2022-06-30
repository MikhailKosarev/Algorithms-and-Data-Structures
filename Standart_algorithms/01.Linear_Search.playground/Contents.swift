//MARK: - Linear search O(n)

/// simple version
func linearSearch1In(_ array: [Int], for item: Int) -> Int? {
    for i in 0...array.count - 1 {
        if array[i] == item {
            return i
        }
    }
    return nil
}

/// more convenience version
func linearSearch2In(_ array: [Int], for item: Int) -> Int? {
    for (index, element) in array.enumerated() {
        if element == item {
            return index
        }
    }
    return nil
}

/// array must be sorted
let sortedArray = [1, 3, 5, 7, 8, 10, 11, 12, 14, 16, 22, 23, 30, 40]

linearSearch1In(sortedArray, for: 40)
linearSearch2In(sortedArray, for: 40)
