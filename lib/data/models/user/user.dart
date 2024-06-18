// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:admin_you_need/data/models/enum/enum_model.dart';
import 'package:admin_you_need/data/models/wallet/wallet.dart';
import 'package:flutter/foundation.dart';


class User {
  final String id;
  final String? firstname;
  final String? lastname;
  final String? email;
  final String? address;

  final String? age;
  final String phone;
  final String? pin;
  final String? qrCode;
  final String? pushToken;
  final String? profession;
  final bool? isVerified;
  final String? image;
  final Civility? civility;

  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<Role>? roles;
  final List<NewWallet>? wallets;
  User({
    required this.id,
    this.firstname,
    this.lastname,
    this.email,
    this.address,
    required this.phone,
    this.pin,
    required this.qrCode,
    this.pushToken,
    this.profession,
     this.isVerified,
    this.image,
    this.age,
    this.civility,
     this.createdAt,
     this.updatedAt,
    this.roles,
    this.wallets,
  });

  User copyWith({
    String? id,
    String? firstname,
    String? lastname,
    String? email,
    String? address,
    String? age,
    Civility? civility,
    String? phone,
    String? pin,
    String? qrCode,
    String? pushToken,
    String? profession,
    bool? isVerified,
    String? image,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<Role>? roles,
    List<NewWallet>? wallets,
  }) {
    return User(
        id: id ?? this.id,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        email: email ?? this.email,
        address: address ?? this.address,
        phone: phone ?? this.phone,
        pin: pin ?? this.pin,
        qrCode: qrCode ?? this.qrCode,
        pushToken: pushToken ?? this.pushToken,
        profession: profession ?? this.profession,
        isVerified: isVerified ?? this.isVerified,
        image: image ?? this.image,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        roles: roles ?? this.roles,
        wallets: wallets ?? this.wallets,
        age: age ?? this.age,
        civility: civility ?? this.civility);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'address': address,
      'phone': phone,
      'pin': pin,
      'qrCode': qrCode,
      'pushToken': pushToken,
      'profession': profession,
      'isVerified': isVerified! ? 1 : 0,
      'image': image ?? "",
      'createdAt': createdAt!.millisecondsSinceEpoch,
      'updatedAt': updatedAt!.millisecondsSinceEpoch,
      //'roles': roles!.map((x) => x.toMap()).toList(),
      //'wallets': wallets!.map((x) => x.toMap()).toList(),
      'age': age,
      'civility': civility!.toNetworkString()
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as String,
      firstname: map['firstname'] != null ? map['firstname'] as String : null,
      lastname: map['lastname'] != null ? map['lastname'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      address: map['address'] != null ? map['address'] as String : null,
      phone: map['phone'] as String,
      pin: map['pin'] != null ? map['pin'] as String : null,
      qrCode:map['qrCode']!=null? map['qrCode'] as String:null,
      pushToken: map['pushToken'] != null ? map['pushToken'] as String : null,
      profession:
          map['profession'] != null ? map['profession'] as String : null,
      isVerified:map['isVerified']!=null? map['isVerified'] as bool:null,
      image: map['image'] != null ? map['image'] as String : null,
      createdAt:map["createdAt"]!=null? DateTime.parse(map["createdAt"]):null,
      updatedAt:map["updatedAt"]!=null? DateTime.parse(map["updatedAt"]):null,
      roles: map['roles'] != null
          ? List<Role>.from(map["roles"].map((x) => Role.fromMap(x)))
          : null,
      wallets: map['wallets'] != null
          ? List<NewWallet>.from(
              map["wallets"].map((x) => NewWallet.fromMap(x)))
          : null,
   age: map['age'] != null ? map['age'] as String : null,
      civility: map['civility'] != null
          ? Civility.fromMap(map['civility'] as String)
          : null,
    );
  }

  factory User.fromLocalMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as String,
      firstname: map['firstname'] != null ? map['firstname'] as String : null,
      lastname: map['lastname'] != null ? map['lastname'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      address: map['address'] != null ? map['address'] as String : null,
      phone: map['phone'] as String,
      pin: map['pin'] != null ? map['pin'] as String : null,
      qrCode: map['qrCode'] as String,
      pushToken: map['pushToken'] != null ? map['pushToken'] as String : null,
      profession:
          map['profession'] != null ? map['profession'] as String : null,
      isVerified: map['isVerified'] as bool,
      image: map['image'] != null ? map['image'] as String : null,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int),

     
      age: map['age'] != null ? map['age'] as String : null,
      civility: map['civility'] != null
          ? Civility.fromMap(map['civility'] as String)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(id: $id, firstname: $firstname, lastname: $lastname, email: $email, address: $address, phone: $phone, pin: $pin, qrCode: $qrCode, pushToken: $pushToken, profession: $profession, isVerified: $isVerified, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, roles: $roles, wallets: $wallets)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.firstname == firstname &&
        other.lastname == lastname &&
        other.email == email &&
        other.address == address &&
        other.phone == phone &&
        other.pin == pin &&
        other.qrCode == qrCode &&
        other.pushToken == pushToken &&
        other.profession == profession &&
        other.isVerified == isVerified &&
        other.image == image &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        listEquals(other.roles, roles) &&
        listEquals(other.wallets, wallets);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        firstname.hashCode ^
        lastname.hashCode ^
        email.hashCode ^
        address.hashCode ^
        phone.hashCode ^
        pin.hashCode ^
        qrCode.hashCode ^
        pushToken.hashCode ^
        profession.hashCode ^
        isVerified.hashCode ^
        image.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        roles.hashCode ^
        wallets.hashCode;
  }
}

final List<User> demoUsers = [
  User(
      id: "4589frgrr",
      phone: "+229 63630301",
      firstname: "Angelina",
      lastname: "Jolie",
      qrCode: "qrCode",
      isVerified: false,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      age: "50",
      civility: Civility.female,
      
      image: 'https://media.themoviedb.org/t/p/w220_and_h330_face/nXA9vMvskmIDB5NqHCkTQPmemep.jpg'
      
      ),
  User(
      id: "4589frgrr4",
      phone: "+229 6350Angelina Jolie6301",
      qrCode: "qrCode",
      firstname: "ABDA",
      lastname: "Jake",
      isVerified: false,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now()),
  User(
      id: "4589frgrr2",
      phone: "+229 61636301",
      qrCode: "qrCode",
      firstname: "JUOL",
      lastname: "GTFO",
      isVerified: false,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now()),
  User(
      id: "4589frg63r",
      phone: "+229 68630301",
      qrCode: "qrCode",
      firstname: "GYUI",
      lastname: "Olamz",
      isVerified: false,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now()),
  User(
      id: "4589frgr25r4",
      phone: "+229 93536301",
      firstname: "Juab",
      lastname: "jyeg",
      qrCode: "qrCode",
      isVerified: false,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now()),
  User(
      id: "4589frg58rr2",
      phone: "+229 91636301",
      firstname: "YIN",
      lastname: "KUsfi",
      qrCode: "qrCode",
      isVerified: false,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now()),
];


class Role {
    final String id;
    final String name;
    final DateTime createdAt;
    final DateTime updatedAt;

    Role({
        required this.id,
        required this.name,
        required this.createdAt,
        required this.updatedAt,
    });

    Role copyWith({
        String? id,
        String? name,
        DateTime? createdAt,
        DateTime? updatedAt,
    }) => 
        Role(
            id: id ?? this.id,
            name: name ?? this.name,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
        );

    factory Role.fromJson(String str) => Role.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Role.fromMap(Map<String, dynamic> json) => Role(
        id: json["id"],
        name: json["name"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}