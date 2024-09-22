class Product {
  final String name;
  final int quantity;
  int enteredQuantity = 0;
  List<String> serials = [];

  Product({required this.name, required this.quantity});
}

class Order {
  final String orderName;
  List<Product> products;

  Order({required this.orderName, required this.products});
}
