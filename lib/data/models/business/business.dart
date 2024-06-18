// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:admin_you_need/data/models/business/schedule.dart';
import 'package:admin_you_need/data/models/enum/enum_model.dart';
import 'package:admin_you_need/data/models/wallet/wallet.dart';

class BusinessHome {
  final int currentPage;
  final int total;
  final List<BusinessItem> items;

  BusinessHome({
    required this.currentPage,
    required this.total,
    required this.items,
  });

  BusinessHome copyWith({
    int? currentPage,
    int? total,
    List<BusinessItem>? items,
  }) =>
      BusinessHome(
        currentPage: currentPage ?? this.currentPage,
        total: total ?? this.total,
        items: items ?? this.items,
      );

  factory BusinessHome.fromJson(String str) =>
      BusinessHome.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BusinessHome.fromMap(Map<String, dynamic> json) => BusinessHome(
        currentPage: json["currentPage"],
        total: json["total"],
        items: List<BusinessItem>.from(
            json["items"].map((x) => BusinessItem.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "currentPage": currentPage,
        "total": total,
        "items": List<dynamic>.from(items.map((x) => x.toMap())),
      };
}

class BusinessItem {
  final String? categoryId;
  final String? description;
  final String? email;
  final DateTime createdAt;
  final String? image;
  final String name;
  final String qrCode;
  final String? websiteUrl;
  final String? rccmNumber;
  final BusinessStatus status;
  final List<WorkSechedule>? workSechedules;
  final NewWallet? wallet;
  final bool isVerified;
  final String? phone;
  final String? place;
  final String? address;
  final String? placeDescription;
  final String id;
  final bool isRejeted;
  final String? rejectedReason;
  final List<Validation>? validations;

  BusinessItem({
    this.categoryId,
    this.description,
    this.email,
    required this.createdAt,
    this.image,
    required this.name,
    required this.qrCode,
    this.websiteUrl,
    this.rccmNumber,
    required this.status,
    this.workSechedules,
    this.wallet,
    required this.isVerified,
    this.phone,
    this.place,
    this.address,
    this.placeDescription,
    required this.id,
    required this.isRejeted,
    this.rejectedReason,
    this.validations,
  });

  BusinessItem copyWith({
    String? categoryId,
    String? description,
    String? email,
    DateTime? createdAt,
    String? image,
    String? name,
    String? qrCode,
    String? websiteUrl,
    String? rccmNumber,
    BusinessStatus? status,
    List<WorkSechedule>? workSechedules,
    NewWallet? wallet,
    bool? isVerified,
    String? phone,
    String? place,
    String? address,
    String? placeDescription,
    String? id,
    bool? isRejeted,
    String? rejectedReason,
    List<Validation>? validations,
  }) =>
      BusinessItem(
        categoryId: categoryId ?? this.categoryId,
        description: description ?? this.description,
        email: email ?? this.email,
        createdAt: createdAt ?? this.createdAt,
        image: image ?? this.image,
        name: name ?? this.name,
        qrCode: qrCode ?? this.qrCode,
        websiteUrl: websiteUrl ?? this.websiteUrl,
        rccmNumber: rccmNumber ?? this.rccmNumber,
        status: status ?? this.status,
        workSechedules: workSechedules ?? this.workSechedules,
        wallet: wallet ?? this.wallet,
        isVerified: isVerified ?? this.isVerified,
        phone: phone ?? this.phone,
        place: place ?? this.place,
        address: address ?? this.address,
        placeDescription: placeDescription ?? this.placeDescription,
        id: id ?? this.id,
        isRejeted: isRejeted ?? this.isRejeted,
        rejectedReason: rejectedReason ?? this.rejectedReason,
        validations: validations ?? this.validations,
      );

  factory BusinessItem.fromJson(String str) =>
      BusinessItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BusinessItem.fromMap(Map<String, dynamic> map) => BusinessItem(
        categoryId:
            map["categoryId"] != null ? map["categoryId"] as String : null,
        description:
            map['description'] != null ? map['description'] as String : null,
        email: map['address'] != null ? map['address'] as String : null,
        createdAt: DateTime.parse(map["createdAt"]),
        image: map['image'] != null ? map['image'] as String : null,
        name: map["name"] as String,
        qrCode: map["qrCode"] as String,
        websiteUrl:
            map['websiteUrl'] != null ? map['websiteUrl'] as String : null,
        rccmNumber:
            map['rccmNumber'] != null ? map['rccmNumber'] as String : null,
        status: BusinessStatus.fromString(map['status'] as String),
        workSechedules: map['workSechedules'] != null
            ? List<WorkSechedule>.from(
                map["workSechedules"].map((x) => WorkSechedule.fromMap(x)))
            : null,
        wallet: map['wallet'] != null
            ? NewWallet.fromMap(map['wallet'] as Map<String, dynamic>)
            : null,
        isVerified: map["isVerified"],
        phone: map['phone'] != null ? map['phone'] as String : null,
        place: map['place'] != null ? map['place'] as String : null,
        address: map['address'] != null ? map['address'] as String : null,
        placeDescription: map['placeDescription'] != null
            ? map['placeDescription'] as String
            : null,
        id: map["id"],
        isRejeted: map["isRejeted"],
        rejectedReason: map["rejectedReason"] != null
            ? map["rejectedReason"] as String
            : null,
        validations: map["validations"] != null
            ? List<Validation>.from(
                map["validations"].map((x) => Validation.fromMap(x)))
            : null,
      );

  Map<String, dynamic> toMap() => {
        "categoryId": categoryId,
        "description": description,
        "email": email,
        "createdAt": createdAt.toIso8601String(),
        "image": image,
        "name": name,
        "qrCode": qrCode,
        "websiteUrl": websiteUrl,
        "rccmNumber": rccmNumber,
        "status": status,

        ///  "workSechedules": List<dynamic>.from(workSechedules.map((x) => x)),
        //"wallet": wallet.to(),
        "isVerified": isVerified,
        "phone": phone,
        "place": place,
        "address": address,
        "placeDescription": placeDescription,
        "id": id,
        "isRejeted": isRejeted,
        "rejectedReason": rejectedReason,
        //  "validations": List<dynamic>.from(validations.map((x) => x.toMap())),
      };
}

class Validation {
  final bool isValid;
  final String id;
  final Criteria criteria;

  Validation({
    required this.isValid,
    required this.id,
    required this.criteria,
  });

  Validation copyWith({
    bool? isValid,
    String? id,
    Criteria? criteria,
  }) =>
      Validation(
        isValid: isValid ?? this.isValid,
        id: id ?? this.id,
        criteria: criteria ?? this.criteria,
      );

  factory Validation.fromJson(String str) =>
      Validation.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Validation.fromMap(Map<String, dynamic> json) => Validation(
        isValid: json["isValid"] as bool,
        id: json["id"] as String,
        criteria: Criteria.fromMap(json["criteria"]),
      );

  Map<String, dynamic> toMap() => {
        "isValid": isValid,
        "id": id,
        "criteria": criteria.toMap(),
      };
}

class Criteria {
  final String name;
  final String description;
  final bool isRequired;
  final String id;
  final String topic;

  Criteria({
    required this.name,
    required this.description,
    required this.isRequired,
    required this.id,
    required this.topic,
  });

  Criteria copyWith({
    String? name,
    String? description,
    bool? isRequired,
    String? id,
    String? topic,
  }) =>
      Criteria(
        name: name ?? this.name,
        description: description ?? this.description,
        isRequired: isRequired ?? this.isRequired,
        id: id ?? this.id,
        topic: topic ?? this.topic,
      );

  factory Criteria.fromJson(String str) => Criteria.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Criteria.fromMap(Map<String, dynamic> json) => Criteria(
        name: json["name"] as String,
        description: json["description"] as String,
        isRequired: json["isRequired"] as bool,
        id: json["id"] as String,
        topic: json["topic"] as String,
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "description": description,
        "isRequired": isRequired,
        "id": id,
        "topic": topic,
      };
}

final demoBusiness = [
  BusinessItem(
      createdAt: DateTime.now(),
      name: "Busin One",
      qrCode: "qrCode",
      status: BusinessStatus.failed,
      isVerified: true,
      id: "25566fjfyf",
      isRejeted: false,
      address: "fiefzfe jbvvl",
      description: "yirfnze vodvovojdkodno njvnovjd vjdnvodvd vkdvodvd kdv",
      email: "hpofj@example.com",
      image:
          "https://images.examples.com/wp-content/uploads/2017/03/business-Logo.jpg",
      categoryId: 'kligi'),
  BusinessItem(
      createdAt: DateTime.now(),
      name: "Busin Two",
      qrCode: "qrCode",
      status: BusinessStatus.succes,
      isVerified: true,
      id: "25566fjfy5f",
      isRejeted: false,
      address: "fuhfvpop jbvvl",
      description: "yirfnze vodvovojdkodno njvnovjd vjdnvodvd vkdvodvd kdv",
      email: "hpofj@example.com",
      image:
          "https://images.examples.com/wp-content/uploads/2017/03/Building-Construction-Business-Logo.jpg",
      categoryId: "kligi1")
];
