fun isPalindrome(number: Int): Boolean {
    var reversed = 0
    var remainder: Int
    var originalNumber = number

    while (originalNumber != 0) {
        remainder = originalNumber % 10
        reversed = reversed * 10 + remainder
        originalNumber /= 10
    }

    return number == reversed
}

fun main() {
    val number = 12321 

    val isPalindromic = isPalindrome(number)
    if (isPalindromic) {
        println("The number $number is a palindrome.")
    } else {
        println("The number $number is not a palindrome.")
    }
}