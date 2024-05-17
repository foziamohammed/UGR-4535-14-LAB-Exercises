class Triangle(val side1: Double, val side2: Double, val side3: Double) {
    fun isEquilateral(): Boolean {
        return side1 == side2 && side2 == side3
    }

    fun isIsosceles(): Boolean {
        return side1 == side2 || side1 == side3 || side2 == side3
    }

    fun isScalene(): Boolean {
        return !isEquilateral() && !isIsosceles()
    }
}

fun main() {
    val triangle = Triangle(5.0, 5.0, 5.0)

    if (triangle.isEquilateral()) {
        println("The triangle is equilateral.")
    } else if (triangle.isIsosceles()) {
        println("The triangle is isosceles.")
    } else if (triangle.isScalene()) {
        println("The triangle is scalene.")
    }
}