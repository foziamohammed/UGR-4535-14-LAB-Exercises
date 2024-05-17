fun main() {
    val num1 = 10 
    val num2 = 25 
    val num3 = 15 

    val largestNumber = if (num1 > num2 && num1 > num3) {
        num1
    } else if (num2 > num1 && num2 > num3) {
        num2
    } else {
        num3
    }

    println("The largest number is: $largestNumber")
}
