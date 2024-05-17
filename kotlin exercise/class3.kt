class ShoppingCart {
    private val items = mutableListOf<Item>()

    fun addItem(item: Item) {
        items.add(item)
    }

    fun removeItem(item: Item) {
        items.remove(item)
    }

    fun calculateTotalPrice(): Double {
        var totalPrice = 0.0
        for (item in items) {
            totalPrice += item.price
        }
        return totalPrice
    }
}

class Item(val name: String, val price: Double)

fun main() {
    val cart = ShoppingCart()

    val item1 = Item("Product 1", 10.0)
    val item2 = Item("Product 2", 20.0)

    cart.addItem(item1)
    cart.addItem(item2)

    val totalPrice = cart.calculateTotalPrice()
    println("Total price: $totalPrice")
}