class StoreModel {
  final String id;
  final String name;
  final String category;
  final String? description;
  final String? imageUrl;
  final bool isOpen;
  final DateTime createdAt;

  StoreModel({
    required this.id,
    required this.name,
    required this.category,
    this.description,
    this.imageUrl,
    required this.isOpen,
    required this.createdAt,
  });

  factory StoreModel.fromMap(Map<String, dynamic> map) {
    return StoreModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      category: map['category'] ?? '',
      description: map['description'],
      imageUrl: map['imageUrl'],
      isOpen: map['isOpen'] ?? false,
      createdAt: map['createdAt']?.toDate() ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'description': description,
      'imageUrl': imageUrl,
      'isOpen': isOpen,
      'createdAt': createdAt,
    };
  }
}
