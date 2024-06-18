// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:admin_you_need/data/models/address/address.dart';
import 'package:admin_you_need/data/models/agent/agent.dart';
import 'package:admin_you_need/data/models/business/business.dart';
import 'package:admin_you_need/data/models/enum/enum_model.dart';

//import 'package:flutter/foundation.dart';


class Wallet {
  final String id;
  final String currency;
  final int balance;
  final String label;
  final String type;
  final List<PaymentAddress>? adresses;
  final Agent agent;

  Wallet({
    required this.id,
    required this.currency,
    required this.balance,
    required this.label,
    required this.type,
    required this.adresses,
    required this.agent,
  });

  Wallet copyWith({
    String? id,
    String? currency,
    int? balance,
    String? label,
    String? type,
    List<PaymentAddress>? adresses,
    Agent? agent,
  }) =>
      Wallet(
        id: id ?? this.id,
        currency: currency ?? this.currency,
        balance: balance ?? this.balance,
        label: label ?? this.label,
        type: type ?? this.type,
        adresses: adresses ?? this.adresses,
        agent: agent ?? this.agent,
      );

  factory Wallet.fromJson(String str) => Wallet.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Wallet.fromMap(Map<String, dynamic> json) => Wallet(
        id: json["id"],
        currency: json["currency"],
        balance: json["balance"],
        label: json["label"],
        type: json["type"],
        adresses: json['adresses'] != null
            ? List<PaymentAddress>.from(
                json["adresses"].map((x) => PaymentAddress.fromMap(x)))
            : null,
        agent: Agent.fromMap(json["agent"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "currency": currency,
        "balance": balance,
        "label": label,
        "type": type,
        //"adresses": List<dynamic>.from(adresses.map((x) => x)),
        "agent": agent.toMap(),
      };
}



class User {
  final String firstname;
  final String lastname;
  final String phone;
  final String email;
  final String address;
  final String image;
  final bool isVerified;

  User({
    required this.firstname,
    required this.lastname,
    required this.phone,
    required this.email,
    required this.address,
    required this.image,
    required this.isVerified,
  });

  User copyWith({
    String? firstname,
    String? lastname,
    String? phone,
    String? email,
    String? address,
    String? image,
    bool? isVerified,
  }) =>
      User(
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        address: address ?? this.address,
        image: image ?? this.image,
        isVerified: isVerified ?? this.isVerified,
      );

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
        firstname: json["firstname"],
        lastname: json["lastname"],
        phone: json["phone"],
        email: json["email"],
        address: json["address"],
        image: json["image"],
        isVerified: json["isVerified"],
      );

  Map<String, dynamic> toMap() => {
        "firstname": firstname,
        "lastname": lastname,
        "phone": phone,
        "email": email,
        "address": address,
        "image": image,
        "isVerified": isVerified,
      };
}

class NewWallet {
  final String id;
  final String currency;
  final double balance;
  final String? label;
  final WalletType type;
  final List<PaymentAddress>? adresses;
  final BusinessItem? business;
  final Agent? agent;
  final DateTime createdAt;

  final DateTime updatedAt;
  NewWallet({
    required this.id,
    required this.currency,
    required this.balance,
    required this.label,
    required this.type,
    this.adresses,
    this.business,
    this.agent,
    required this.createdAt,
    required this.updatedAt,
  });

  NewWallet copyWith({
    String? id,
    String? currency,
    double? balance,
    String? label,
    WalletType? type,
    List<PaymentAddress>? adresses,
    BusinessItem? business,
    Agent? agent,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return NewWallet(
      id: id ?? this.id,
      currency: currency ?? this.currency,
      balance: balance ?? this.balance,
      label: label ?? this.label,
      type: type ?? this.type,
      adresses: adresses ?? this.adresses,
      business: business ?? this.business,
      agent: agent ?? this.agent,
      updatedAt: updatedAt?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'currency': currency,
      'balance': balance,
      'label': label,
      'type': type.toNetworkString(),

      //'agent': agent?.toMap(),
       'updatedAt': updatedAt.millisecondsSinceEpoch,
      
      'createdAt': createdAt.millisecondsSinceEpoch,
    };
  }

  factory NewWallet.fromMap(Map<String, dynamic> map) {
    return NewWallet(
      id: map['id'] as String,
      currency: map['currency'] as String,
      balance: map['balance'].toDouble(),
      label: map['label'] != null ? map['label'] as String : null,
      type: WalletType.fromString(map['type'] as String),
      updatedAt:DateTime.parse(map["updatedAt"]) ,
      adresses: map['adresses'] != null
          ? List<PaymentAddress>.from(
              map["adresses"].map((x) => PaymentAddress.fromMap(x)))
          : null,
          

      // adresses: List<PaymentAddress>.from(map["adresses"].map((x) => PaymentAddress.fromMap(x))),

       business: map['business'] != null
          ? BusinessItem.fromMap(map['business'] as Map<String, dynamic>)
          : null, 
      agent: map['agent'] != null
          ? Agent.fromMap(map['agent'] as Map<String, dynamic>)
          : null,
      createdAt: DateTime.parse(map["createdAt"]),
    );
  }

  factory NewWallet.fromLocalMap(Map<String, dynamic> map) {
    return NewWallet(
      id: map['id'] as String,
      currency: map['currency'] as String,
      balance: map['balance'].toDouble(),
      label: map['label'] != null ? map['label'] as String : null,
      type: WalletType.fromString(map['type'] as String),
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
       updatedAt:DateTime.fromMillisecondsSinceEpoch(map["updatedAt"] as int) ,
      
    );
  }

  String toJson() => json.encode(toMap());

  factory NewWallet.fromJson(String source) =>
      NewWallet.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Wallet(id: $id, currency: $currency, balance: $balance, label: $label, type: $type, agent: $agent, createdAt: $createdAt)'; //adresses: $adresses, business: $business,
  }

  @override
  bool operator ==(covariant NewWallet other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.currency == currency &&
        other.balance == balance &&
        other.label == label &&
        other.type == type &&
        //  listEquals(other.adresses, adresses) &&
        //  other.business == business &&
        other.agent == agent &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        currency.hashCode ^
        balance.hashCode ^
        label.hashCode ^
        type.hashCode ^
        //  adresses.hashCode ^
        //  business.hashCode ^
        agent.hashCode ^
        createdAt.hashCode;
  }
}
