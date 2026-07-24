class OrderModel {
  final String id;
  final String customerId;
  final String? merchantId;
  final String? driverId;
  final String villageId;
  final String status;
  final double subtotal;
  final double deliveryFee;
  final double total;
  final List<OrderItem> items;
  final String? customErrandDescription;
  final String? prescriptionImageUrl;
  final DateTime createdAt;
  final DateTime updatedAt;

  OrderModel({
    required this.id,
    required this.customerId,
    this.merchantId,
    this.driverId,
    required this.villageId,
    required this.status,
    required this.subtotal,
    required this.deliveryFee,
    required this.total,
    required this.items,
    this.customErrandDescription,
    this.prescriptionImageUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      id: map['id'] ?? '',
      customerId: map['customerId'] ?? '',
      merchantId: map['merchantId'],
      driverId: map['driverId'],
      villageId: map['villageId'] ?? '',
      status: map['status'] ?? 'placed',
      subtotal: (map['subtotal'] ?? 0).toDouble(),
      deliveryFee: (map['deliveryFee'] ?? 0).toDouble(),
      total: (map['total'] ?? 0).toDouble(),
      items: (map['items'] as List<dynamic>?)
              ?.map((e) => OrderItem.fromMap(e))
              .toList() ??
          [],
      customErrandDescription: map['customErrandDescription'],
      prescriptionImageUrl: map['prescriptionImageUrl'],
      createdAt: map['createdAt']?.toDate() ?? DateTime.now(),
      updatedAt: map['updatedAt']?.toDate() ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'customerId': customerId,
      'merchantId': merchantId,
      'driverId': driverId,
      'villageId': villageId,
      'status': status,
      'subtotal': subtotal,
      'deliveryFee': deliveryFee,
      'total': total,
      'items': items.map((e) => e.toMap()).toList(),
      'customErrandDescription': customErrandDescription,
      'prescriptionImageUrl': prescriptionImageUrl,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}

class OrderItem {
  final String productId;
  final String name;
  final int quantity;
  final double price;

  OrderItem({
    required this.productId,
    required this.name,
    required this.quantity,
    required this.price,
  });

  factory OrderItem.fromMap(Map<String, dynamic> map) {
    return OrderItem(
      productId: map['productId'] ?? '',
      name: map['name'] ?? '',
      quantity: map['quantity'] ?? 0,
      price: (map['price'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'name': name,
      'quantity': quantity,
      'price': price,
    };
  }
}
