fun hasUniqueCharacters(input: String): Boolean {
    val characterSet = mutableSetOf<Char>()

    for (char in input) {
        if (characterSet.contains(char)) {
            return false
        } else {
            characterSet.add(char)
        }
    }

    return true
}

fun main() {
    val str = "abcdefg" 

    val hasUnique = hasUniqueCharacters(str)
    if (hasUnique) {
        println("The string '$str' contains only unique characters.")
    } else {
        println("The string '$str' does not contain only unique characters.")
    }
}