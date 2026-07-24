class VillageModel {
  final String id;
  final String name;
  final double deliveryFee;
  final bool isActive;

  VillageModel({
    required this.id,
    required this.name,
    required this.deliveryFee,
    required this.isActive,
  });

  factory VillageModel.fromMap(Map<String, dynamic> map) {
    return VillageModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      deliveryFee: (map['deliveryFee'] ?? 0).toDouble(),
      isActive: map['isActive'] ?? true,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'deliveryFee': deliveryFee,
      'isActive': isActive,
    };
  }
}
