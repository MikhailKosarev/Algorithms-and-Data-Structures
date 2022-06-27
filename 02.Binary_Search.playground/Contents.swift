//MARK: - Binary search O(log n)

/// version with if/else
func binarySearch1In(_ array: [Int], for item: Int) -> Int? {
    var low = 0
    var high = array.count - 1

    while low <= high {
        let mid = (low + high) / 2

        if array[mid] > item {
            high = mid - 1
        } else if array[mid] < item {
            low = mid + 1
        } else {
            return mid
        }
    }
    return nil
}

/// version with switch/case
func binarySearch2In(_ array: [Int], for item: Int) -> Int? {
    var low = 0
    var high = array.count - 1

    while low <= high {
        let mid = (low + high) / 2

        switch (array[mid], item) {
        case let (current, item) where current > item:
            high = mid - 1
        case let (current, item) where current < item:
            low = mid + 1
        default:
            return mid
        }
    }
    return nil
}

/// array must be sorted
let sortedArray = [1, 3, 5, 7, 8, 10, 11, 12, 14, 16, 22, 23, 30, 40]

binarySearch1In(sortedArray, for: 14)
binarySearch2In(sortedArray, for: 9)
