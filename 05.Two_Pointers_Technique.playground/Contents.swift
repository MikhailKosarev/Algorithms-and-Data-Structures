//MARK: - Two Pointers Technique

//A palindrome is a word that reads the same forward and backward. For example, ‘racecar’ is a palindrome, but ‘honda’ is not. In a valid palindrome, the first and last letter of the input must be the same, the second and second to last letter must be the same, the third and third to last must be the same, and so on until we’ve checked every letter in the input.

func isPalindrome(_ inputString: String) -> Bool {
    let charactersArray = Array(inputString)
    var leftPtr = 0
    var rightPtr = charactersArray.count - 1
    
    while leftPtr < rightPtr {
        if charactersArray[leftPtr] != charactersArray[rightPtr] {
            return false
        }
        leftPtr += 1
        rightPtr -= 1
    }
    return true
}


let palindromeExample = "racecar"
let notAPalindromeExample = "honda"

isPalindrome(palindromeExample) //true
isPalindrome(notAPalindromeExample) //false

