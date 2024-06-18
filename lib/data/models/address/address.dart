// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class PaymentAddress {
  DateTime createdAt;

  String id;
  String address;
  String? paymentTypeId;
  String? walletId;
  PaymentAddress({
    required this.createdAt,
    required this.id,
    required this.address,
     this.walletId,
     this.paymentTypeId,
  });

  PaymentAddress copyWith({
    DateTime? createdAt,
    String? id,
    String? address,
    String? walletId,
    String? paymentTypeId,
  }) {
    return PaymentAddress(
      createdAt: createdAt ?? this.createdAt,
      id: id ?? this.id,
      address: address ?? this.address,
      paymentTypeId: paymentTypeId ?? this.paymentTypeId,
      walletId: walletId??this.walletId
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt.millisecondsSinceEpoch,
      'id': id,
      'address': address,
      'paymentTypeId': paymentTypeId,
    };
  }

  factory PaymentAddress.fromMap(Map<String, dynamic> map) {
    return PaymentAddress(
      // ignore: prefer_if_null_operators
      walletId :
          map['walletId'] != null ? map['walletId'] as String : null,
     // walletId: map["walletId"]!=null?map["walletId"]:null,
      createdAt: DateTime.parse(map["createdAt"]),
      id: map['id'] as String,
      address: map['address'] as String,
      paymentTypeId: map['paymentTypeId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentAddress.fromJson(String source) =>
      PaymentAddress.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PaymentAddress(createdAt: $createdAt, id: $id, address: $address, paymentTypeId: $paymentTypeId)';
  }

  @override
  bool operator ==(covariant PaymentAddress other) {
    if (identical(this, other)) return true;

    return other.createdAt == createdAt &&
        other.id == id &&
        other.address == address &&
        other.paymentTypeId == paymentTypeId;
  }

  @override
  int get hashCode {
    return createdAt.hashCode ^
        id.hashCode ^
        address.hashCode ^
        paymentTypeId.hashCode;
  }
}
