fun isPrime(number: Int): Boolean {
    if (number <= 1) {
        return false
    }

    var divisor = 2
    while (divisor * divisor <= number) {
        if (number % divisor == 0) {
            return false
        }
        divisor++
    }

    return true
}

fun main() {
    val start = 1
    val end = 50 

    println("Prime numbers between $start and $end are:")

    var currentNumber = start
    while (currentNumber <= end) {
        if (isPrime(currentNumber)) {
            println(currentNumber)
        }
        currentNumber++
    }
}