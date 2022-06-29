//MARK: - Bubble Sort O(n^2)

func bubbleSort(for array: inout [Int]) {
    for i in 0..<array.count {

        for j in 0..<(array.count - i - 1) {
            
            let current = array[j]
            let next = array[j + 1]
            // if the current element greater than next element - then swap them
            if current > next {
                array[j] = next
                array[j + 1] = current
            }
        }
    }
}

var shuffledArray = [13, 2, 5, 30, 17, 11, 9, 6, 1, 8, 22]
bubbleSort(for: &shuffledArray) //[1, 2, 5, 6, 8, 9, 11, 13, 17, 22, 30]
