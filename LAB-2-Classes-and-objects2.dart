class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  Product product = Product("Example Product", 10.99, 5);

  double totalCost = product.calculateTotalCost();

  print("Product name: ${product.name}");
  print("Price: \$${product.price}");
  print("Quantity: ${product.quantity}");
  print("Total cost: \$${totalCost.toStringAsFixed(2)}");
}