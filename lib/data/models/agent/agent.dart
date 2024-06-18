
import 'dart:convert';

class AgentRequest {
  final String type;
  final double pay;
  final String description;
  final String userId;

  AgentRequest({
    required this.type,
    required this.pay,
    required this.description,
    required this.userId,
  });

  AgentRequest copyWith({
    String? type,
    double? pay,
    String? description,
    String? userId,
  }) =>
      AgentRequest(
        type: type ?? this.type,
        pay: pay ?? this.pay,
        description: description ?? this.description,
        userId: userId ?? this.userId,
      );

  factory AgentRequest.fromJson(String str) =>
      AgentRequest.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AgentRequest.fromMap(Map<String, dynamic> json) => AgentRequest(
        type: json["type"],
        pay: json["pay"],
        description: json["description"],
        userId: json["userId"],
      );

  Map<String, dynamic> toMap() => {
        "type": type,
        "pay": pay,
        "description": description,
        "userId": userId,
      };
}

class Agent {
  final String code;
   final String? id;
  final bool isActive;
  final double? pay; 
  final String? qrCode;
  final User? user;
  final String type;
  final String? description;
  final DateTime createdAt;

  Agent({
    required this.code,
    required this.isActive,
    this.pay,
    this.id,

    this.qrCode,
    this.description,
     this.user,
    required this.type,
    required this.createdAt,
  });

  Agent copyWith({
    String? code,
    bool? isActive,
    double? pay,
    User? user,
    String? description,
    String? type,
    DateTime? createdAt,
    String? qrCode,
    String? id
  }) =>
      Agent(
        code: code ?? this.code,
        isActive: isActive ?? this.isActive,
        pay: pay ?? this.pay,
        user: user ?? this.user,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
        description: description??this.description,
        qrCode: qrCode?? this.qrCode,
        id: id??this.id
      );

  factory Agent.fromJson(String str) => Agent.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Agent.fromMap(Map<String, dynamic> json) => Agent(
  
        code: json["code"],
        isActive: json["isActive"] as bool ,
        // ignore: prefer_null_aware_operators
        pay: json["pay"]!=null?json["pay"].toDouble():null,
        
        user:json["user"]!=null? User.fromMap(json["user"]):null,
        type: json["type"],
        createdAt: DateTime.parse(json["createdAt"]),
        description:json['description'],
        qrCode:json['qrCode']!=null?json['qrCode'] as String:null,

        id:json['id']!=null?json['id'] as String:null,
      );



  factory Agent.fromLocalMap(Map<String, dynamic> json) => Agent(
  
        code: json["code"],
        isActive: json["isActive"] as bool ,
        // ignore: prefer_null_aware_operators
        pay: json["pay"]!=null?json["pay"].toDouble():null,
        ///user: User.fromMap(json["user"]),
        type: json["type"],
         createdAt: DateTime.fromMillisecondsSinceEpoch(json['createdAt'] as int),
        description:json['description'],
        qrCode:json['qrCode']!=null?json['qrCode'] as String:null,

        id:json['id']!=null?json['id'] as String:null,
      );

  Map<String, dynamic> toMap() => {
        "code": code,
        "isActive": isActive,
        "pay": pay,
        //"user": user.toMap(),
        "type": type,
        "createdAt": createdAt.millisecondsSinceEpoch,
      };
}

class User {
  final String? firstname;
  final String? lastname;
  final String phone;
  final String? email;
  final String? address;
  final String? image;
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
        firstname: json["firstname"]!=null? json["firstname"] as String:null,
        lastname: json["lastname"]!=null? json["lastname"] as String:null,
        phone: json["phone"],
        email: json["email"]!=null? json["email"] as String:null,
        address: json["address"]!=null?json["address"] as String:null,
        image: json["image"]!=null?json["image"] as String:null,
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
