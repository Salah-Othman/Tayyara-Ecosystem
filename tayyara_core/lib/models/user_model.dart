class UserModel {
  final String uid;
  final String phoneNumber;
  final String? displayName;
  final String? villageId;
  final String? address;
  final DateTime createdAt;

  UserModel({
    required this.uid,
    required this.phoneNumber,
    this.displayName,
    this.villageId,
    this.address,
    required this.createdAt,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      displayName: map['displayName'],
      villageId: map['villageId'],
      address: map['address'],
      createdAt: map['createdAt']?.toDate() ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'phoneNumber': phoneNumber,
      'displayName': displayName,
      'villageId': villageId,
      'address': address,
      'createdAt': createdAt,
    };
  }
}
