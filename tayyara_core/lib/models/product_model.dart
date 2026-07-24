class ProductModel {
  final String id;
  final String storeId;
  final String name;
  final String? description;
  final double price;
  final String? imageUrl;
  final String category;
  final bool isAvailable;

  ProductModel({
    required this.id,
    required this.storeId,
    required this.name,
    this.description,
    required this.price,
    this.imageUrl,
    required this.category,
    required this.isAvailable,
  });

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] ?? '',
      storeId: map['storeId'] ?? '',
      name: map['name'] ?? '',
      description: map['description'],
      price: (map['price'] ?? 0).toDouble(),
      imageUrl: map['imageUrl'],
      category: map['category'] ?? '',
      isAvailable: map['isAvailable'] ?? true,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'storeId': storeId,
      'name': name,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'category': category,
      'isAvailable': isAvailable,
    };
  }
}
