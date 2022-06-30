//MARK: - Selection Sort O(n^2)

/// function to find minimum value and it's index in an array
func findMinimumValueIndexIn(_ array: [Int]) -> Int {
    
    var minValue = array[0]
    var minIndex = 0
    
    for index in 0..<array.count {
        if array[index] < minValue {
            minValue = array[index]
            minIndex = index
        }
    }
    return minIndex
}

/// function to sort an origin array with returning a new sorted array
func selectionSort(for originArray: inout [Int]) -> [Int] {
    var sortedArray = [Int]()
        while !originArray.isEmpty {
            // find the minimum value in the origin array
            let minValueIndex = findMinimumValueIndexIn(originArray)
            // add it to the new sorted array
            sortedArray.append(originArray[minValueIndex])
            // then remove it from the origin array
            originArray.remove(at: minValueIndex)
        }
    return sortedArray
}

var shuffledArray = [13, 2, 5, 30, 17, 11, 9, 6, 1, 8, 22]
selectionSort(for: &shuffledArray)
