// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PaymentType {
  final String id;
  final String name;
  final String image;
  final String code;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  PaymentType({
    required this.id,
    required this.name,
    required this.image,
    required this.code,
    this.createdAt,
    this.updatedAt,
  });

  PaymentType copyWith({
    String? id,
    String? name,
    String? image,
    DateTime? createdAt,
    String? code,
    DateTime? updatedAt,
  }) {
    return PaymentType(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      code: code??this.code
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
    };
  }

  factory PaymentType.fromMap(Map<String, dynamic> map) {
    return PaymentType(
      id: map['id'] as String,
      name: map['name'] as String,
      code: map['code'] as String,
      image: map['image'] as String,
      createdAt:
          map['createdAt'] != null ? DateTime.parse(map["createdAt"]) : null,
      updatedAt:
          map['updatedAt'] != null ? DateTime.parse(map["updatedAt"]) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentType.fromJson(String source) =>
      PaymentType.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PaymentType(id: $id, name: $name, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(covariant PaymentType other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.image == image &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        image.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}

/* final List<PaymentType> demoType = [
  PaymentType(
      id: "1",
      name: "MTN Momo",
      image: "assets/icons/Frame 21438.png",
      createdAt: DateTime.now(),
      updatedAt: DateTime.now()),
  PaymentType(
      id: "2",
      name: "My Celtiis cash",
      image: "assets/icons/Frame 21440.png",
      createdAt: DateTime.now(),
      updatedAt: DateTime.now()),
  PaymentType(
      id: "3",
      name: "MOOV Money",
      image: "assets/icons/Frame 21439.png",
      createdAt: DateTime.now(),
      updatedAt: DateTime.now()),
  PaymentType(
      id: "4",
      name: "Carte Bancaire",
      image: "assets/icons/Frame 21436.png",
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      code: "card"
      
      
      ),

];
   */
/* class PaymentType {
  final int id;
  final String name;
  final String image;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String code;
 final DateTime createdAt
final DateTime updatedAt
}
 */

/*

 [
  {
    "name": "BANK",
    "id": "04191713-c5db-4682-ac80-db2dea40080e",
    "image": "http://216.172.109.198/youneed/uploads/images/1709725054392-Frame 21436.png"
  },
  {
    "name": "MOOV MONEY",
    "id": "7242285a-f092-457a-ace8-d63c84f5c50b",
    "image": "http://216.172.109.198/youneed/uploads/images/1709725011012-Frame 21439.png"
  },
  {
    "name": "MY CELTIIS CASH",
    "id": "b19e2177-f523-419a-a692-730edec478a0",
    "image": "http://216.172.109.198/youneed/uploads/images/1709724940960-Frame 21440.png"
  },
  {
    "name": "BANK",
    "id": "b26313de-5bbe-47b8-8279-e966e20e1577",
    "image": "http://216.172.109.198/youneed/uploads/images/1709725054375-Frame 21436.png"
  },
  {
    "name": "MTN MOMO",
    "id": "b4260566-8cab-403d-92ba-3191d6f9263b",
    "image": "http://216.172.109.198/youneed/uploads/images/1709724979323-Frame 21438.png"
  }
]
 */


