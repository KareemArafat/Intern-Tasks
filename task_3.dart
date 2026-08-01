void main() {
  final List<Product> products = [
    Product(
      id: 1,
      name: "Laptop",
      price: 999.99,
      category: "Electronics",
      isAvailable: true,
    ),
    Product(
      id: 2,
      name: "Book",
      price: 19.99,
      category: "Education",
      isAvailable: false,
    ),
    Product(
      id: 3,
      name: "Phone",
      price: 599.99,
      category: "Electronics",
      isAvailable: true,
    ),
    Product(
      id: 4,
      name: "Shoes",
      price: 49.99,
      category: "Fashion",
      isAvailable: true,
    ),
    Product(
      id: 5,
      name: "Watch",
      price: 199.99,
      category: "Accessories",
      isAvailable: false,
    ),
  ];

  final List<String> categories = [
    "Electronics",
    "Education",
    "Fashion",
    "Accessories",
    "Electronics",
  ];

  void availableProducts() {
    print('Available Products is:');
    products.where((e) => e.isAvailable).forEach((e) => print(e.name));
  }

  void productsNames() {
    print('Products Names is:');
    products.map((e) => e.name).toList().forEach((e) => print(e));
  }

  void availableElectronicsProducts() {
    print('Available Electronics Products is:');
    products
        .where((e) => e.category == 'Electronics')
        .map((e) => e.name)
        .forEach((e) => print(e));
  }

  void totalPrice() {
    final total = products.fold(0.0, (a, b) => a + b.price);
    print('Total Price is: $total');
  }

  void availableProductsTotalPrice() {
    final total = products
        .where((e) => e.isAvailable)
        .fold(0.0, (a, b) => a + b.price);
    print('Available Products Total Price is: $total');
  }

  void priceCheck() {
    bool result = products.any((e) => e.price > 20000);
    print('Is there products with a price greater than 20000 is: $result');
  }

  void validateProducts() {
    bool result = products.every((e) => e.price > 100);
    print('Are all products with a price greater than 100 is: $result');
  }

  void firstProductInElectronics() {
    final product = products.firstWhere((e) => e.category == 'Electronics');
    print('First Product in Electronics is: ${product.name}');
  }

  void sortProductsByPrice() {
    print('Products sorted by price:');
    products.sort((a, b) => a.price.compareTo(b.price));
    products.forEach((e) => print('${e.name} - ${e.price}'));
  }

  void removeDuplicatedCategories() {
    final categoriesSet = categories.toSet();
    print('Categories without duplicates: $categoriesSet');
  }

  availableProducts();
  productsNames();
  availableElectronicsProducts();
  totalPrice();
  availableProductsTotalPrice();
  priceCheck();
  validateProducts();
  firstProductInElectronics();
  sortProductsByPrice();
  removeDuplicatedCategories();
}

class Product {
  final int id;
  final String name;
  final double price;
  final String category;
  final bool isAvailable;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
    required this.isAvailable,
  });
}
