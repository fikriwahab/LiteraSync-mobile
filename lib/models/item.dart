class Item {
  final String name;
  final int amount;
  final String description;

  Item({required this.name, required this.amount, required this.description});

  // Fungsi untuk membuat objek Item dari data JSON
  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      name: json['name'],
      amount: json['amount'],
      description: json['description'],
    );
  }
}
