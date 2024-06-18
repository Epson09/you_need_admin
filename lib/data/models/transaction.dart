// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:admin_you_need/data/models/enum/enum_model.dart';

class TransactionHome {
  final int currentPage;
  final int total;
  final List<Transaction> items;

  TransactionHome({
    required this.currentPage,
    required this.total,
    required this.items,
  });

  TransactionHome copyWith({
    int? currentPage,
    int? total,
    List<Transaction>? items,
  }) =>
      TransactionHome(
        currentPage: currentPage ?? this.currentPage,
        total: total ?? this.total,
        items: items ?? this.items,
      );

  factory TransactionHome.fromJson(String str) =>
      TransactionHome.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TransactionHome.fromMap(Map<String, dynamic> json) => TransactionHome(
        currentPage: json["currentPage"],
        total: json["total"],
        items: List<Transaction>.from(
            json["items"].map((x) => Transaction.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "currentPage": currentPage,
        "total": total,
        "items": List<dynamic>.from(items.map((x) => x.toMap())),
      };
}

class Transaction {
  final String id;
  final OperrationType type;
  final OperrationStatus status;
  final String ticketId;
  final double amount;
  final String? description;
  final String? paymentTypeId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? senderWalletId;
  final String? receiverWalletId;
  final ErWallet? receiverWallet;
  final ErWallet? senderWallet;
  Transaction({
    required this.id,
    required this.type,
    required this.status,
    required this.ticketId,
    required this.amount,
    this.description,
    this.paymentTypeId,
    required this.createdAt,
    required this.updatedAt,
    this.senderWalletId,
    this.receiverWalletId,
    this.receiverWallet,
    this.senderWallet,
  });

  Transaction copyWith({
    String? id,
    OperrationType? type,
    OperrationStatus? status,
    String? ticketId,
    double? amount,
    String? description,
    String? paymentTypeId,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? senderWalletId,
    String? receiverWalletId,
    ErWallet? receiverWallet,
    ErWallet? senderWallet,
  }) {
    return Transaction(
      id: id ?? this.id,
      type: type ?? this.type,
      status: status ?? this.status,
      ticketId: ticketId ?? this.ticketId,
      amount: amount ?? this.amount,
      description: description ?? this.description,
      paymentTypeId: paymentTypeId ?? this.paymentTypeId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      senderWalletId: senderWalletId ?? this.senderWalletId,
      receiverWalletId: receiverWalletId ?? this.receiverWalletId,
      receiverWallet: receiverWallet ?? this.receiverWallet,
      senderWallet: senderWallet ?? this.senderWallet,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
      'status': status.toNetworkString(),
      'ticketId': ticketId,
      'amount': amount,
      'description': description,
      'paymentTypeId': paymentTypeId,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt.millisecondsSinceEpoch,
      'senderWalletId': senderWalletId,
      'receiverWalletId': receiverWalletId,
    };
  }

  factory Transaction.fromLocalMap(Map<String, dynamic> map) {
    return Transaction(
      id: map['id'] as String,
      type: OperrationType.fromString(
          map['type'] as String), //map['type'] as String,
      status: OperrationStatus.fromString(map['status'] as String),
      ticketId: map['ticketId'] as String,
      amount: map['amount'].toDouble(),
      description:
          map['description'] != null ? map['description'] as String : null,
      paymentTypeId:
          map['paymentTypeId'] != null ? map['paymentTypeId'] as String : null,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int),

      senderWalletId: map['senderWalletId'] != null
          ? map['senderWalletId'] as String
          : null,
      receiverWalletId: map['receiverWalletId'] != null
          ? map['receiverWalletId'] as String
          : null,
    );
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      id: map['id'] as String,
      type: OperrationType.fromString(
          map['type'] as String), //map['type'] as String,
      status: OperrationStatus.fromString(map['status'] as String),
      ticketId: map['ticketId'] as String,
      amount: map['amount'].toDouble(),
      description:
          map['description'] != null ? map['description'] as String : null,
      paymentTypeId:
          map['paymentTypeId'] != null ? map['paymentTypeId'] as String : null,
      createdAt: DateTime.parse(map["createdAt"]),
      updatedAt: DateTime.parse(map["updatedAt"]),
      senderWalletId: map['senderWalletId'] != null
          ? map['senderWalletId'] as String
          : null,
      receiverWalletId: map['receiverWalletId'] != null
          ? map['receiverWalletId'] as String
          : null,
      receiverWallet: map['receiverWallet'] != null
          ? ErWallet.fromMap(map['receiverWallet'] as Map<String, dynamic>)
          : null,
      senderWallet: map['senderWallet'] != null
          ? ErWallet.fromMap(map['senderWallet'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Transaction.fromJson(String source) =>
      Transaction.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Transaction(id: $id, type: $type, status: $status, ticketId: $ticketId, amount: $amount, description: $description, paymentTypeId: $paymentTypeId, createdAt: $createdAt, updatedAt: $updatedAt, senderWalletId: $senderWalletId, receiverWalletId: $receiverWalletId, receiverWallet: $receiverWallet, senderWallet: $senderWallet)';
  }

  @override
  bool operator ==(covariant Transaction other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.type == type &&
        other.status == status &&
        other.ticketId == ticketId &&
        other.amount == amount &&
        other.description == description &&
        other.paymentTypeId == paymentTypeId &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.senderWalletId == senderWalletId &&
        other.receiverWalletId == receiverWalletId &&
        other.receiverWallet == receiverWallet &&
        other.senderWallet == senderWallet;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        type.hashCode ^
        status.hashCode ^
        ticketId.hashCode ^
        amount.hashCode ^
        description.hashCode ^
        paymentTypeId.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        senderWalletId.hashCode ^
        receiverWalletId.hashCode ^
        receiverWallet.hashCode ^
        senderWallet.hashCode;
  }
}

class ErWallet {
  final String type;
  final User user;

  ErWallet({
    required this.type,
    required this.user,
  });

  ErWallet copyWith({
    String? type,
    User? user,
  }) =>
      ErWallet(
        type: type ?? this.type,
        user: user ?? this.user,
      );

  factory ErWallet.fromJson(String str) => ErWallet.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ErWallet.fromMap(Map<String, dynamic> json) => ErWallet(
        type: json["type"],
        user: User.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "type": type,
        "user": user.toMap(),
      };
}

class TransactionValidation {
  final String id;
  final String label;
  final String currency;
  final int balance;
  final String type;
  final String userId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<TransactionsSent> transactionsSent;
  final User user;

  TransactionValidation({
    required this.id,
    required this.label,
    required this.currency,
    required this.balance,
    required this.type,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
    required this.transactionsSent,
    required this.user,
  });

  TransactionValidation copyWith({
    String? id,
    String? label,
    String? currency,
    int? balance,
    String? type,
    String? userId,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<TransactionsSent>? transactionsSent,
    User? user,
  }) =>
      TransactionValidation(
        id: id ?? this.id,
        label: label ?? this.label,
        currency: currency ?? this.currency,
        balance: balance ?? this.balance,
        type: type ?? this.type,
        userId: userId ?? this.userId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        transactionsSent: transactionsSent ?? this.transactionsSent,
        user: user ?? this.user,
      );

  factory TransactionValidation.fromJson(String str) =>
      TransactionValidation.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TransactionValidation.fromMap(Map<String, dynamic> json) =>
      TransactionValidation(
        id: json["id"],
        label: json["label"],
        currency: json["currency"],
        balance: json["balance"],
        type: json["type"],
        userId: json["userId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        transactionsSent: List<TransactionsSent>.from(
            json["transactionsSent"].map((x) => TransactionsSent.fromMap(x))),
        user: User.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "label": label,
        "currency": currency,
        "balance": balance,
        "type": type,
        "userId": userId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "transactionsSent":
            List<dynamic>.from(transactionsSent.map((x) => x.toMap())),
        "user": user.toMap(),
      };
}

class TransactionsSent {
  final int amount;
  final String status;
  final String type;

  TransactionsSent({
    required this.amount,
    required this.status,
    required this.type,
  });

  TransactionsSent copyWith({
    int? amount,
    String? status,
    String? type,
  }) =>
      TransactionsSent(
        amount: amount ?? this.amount,
        status: status ?? this.status,
        type: type ?? this.type,
      );

  factory TransactionsSent.fromJson(String str) =>
      TransactionsSent.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TransactionsSent.fromMap(Map<String, dynamic> json) =>
      TransactionsSent(
        amount: json["amount"],
        status: json["status"],
        type: json["type"],
      );

  Map<String, dynamic> toMap() => {
        "amount": amount,
        "status": status,
        "type": type,
      };
}

class User {
  final String? firstname;
  final String? lastname;
  final String? image;
  final String? phone;
  final String? qrCode;

  User({
    this.firstname,
    this.lastname,
    this.image,
    this.phone,
    this.qrCode,
  });

  User copyWith({
    String? firstname,
    String? lastname,
    String? image,
    String? phone,
    String? qrCode,
  }) =>
      User(
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        image: image ?? this.image,
        phone: phone ?? this.phone,
        qrCode: qrCode ?? this.qrCode,
      );

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
        image: json["image"] != null ? json["image"] as String : null,
        firstname:
            json["firstname"] != null ? json["firstname"] as String : null,
        lastname: json["lastname"] != null ? json["lastname"] as String : null,
        phone: json["phone"] != null ? json["phone"] as String : null,
        qrCode: json["qrCode"] != null ? json["qrCode"] as String : null,
      );

  Map<String, dynamic> toMap() => {
        "firstname": firstname,
        "lastname": lastname,
        "image": image,
        "phone": phone,
        "qrCode": qrCode,
      };
}

final transacts = [
  Transaction(
    id: "sfnrrf458rr",
    type: OperrationType.deposit,
    status: OperrationStatus.succes,
    ticketId: 'sjogronrognr55',
    amount: 52000,
    createdAt: DateTime.now(),
    updatedAt: DateTime.timestamp(),
    description: 'vous avez reçu un montant de 50000 FCFA',
  ),
  Transaction(
    id: "sf5nrrf48rr",
    type: OperrationType.deposit,
    status: OperrationStatus.succes,
    ticketId: 'sjogronro685333gnr55',
    amount: 2000,
    createdAt: DateTime(2024, 6, 12, 14, 30),
    updatedAt: DateTime.timestamp(),
    description: 'vous avez reçu un montant de 25000 FCFA',
  ),
  Transaction(
    id: "sfnrr58f48rr",
    type: OperrationType.deposit,
    status: OperrationStatus.succes,
    ticketId: 'sjogronr7ognr55',
    amount: 50500,
    createdAt: DateTime(2023, 1, 12, 14, 30),
    updatedAt: DateTime.timestamp(),
    description: 'vous avez reçu un montant de 50000 FCFA',
  ),
  Transaction(
    id: "sfnrrf5748rr",
    type: OperrationType.deposit,
    status: OperrationStatus.succes,
    ticketId: 'sjogronrognr5685',
    amount: 50800,
    createdAt: DateTime(2022, 2, 12, 10, 30),
    updatedAt: DateTime.timestamp(),
    description: 'vous avez reçu un montant de 50000 FCFA',
  ),
  Transaction(
    id: "sfnrr93f48rr",
    type: OperrationType.deposit,
    status: OperrationStatus.succes,
    ticketId: 'sjogronrogn35r55',
    amount: 230000,
    createdAt: DateTime(2020, 11, 2, 6, 30),
    updatedAt: DateTime.timestamp(),
    description: 'vous avez reçu un montant de 50000 FCFA',
  ),
  Transaction(
    id: "sfnrr8f48rr",
    type: OperrationType.deposit,
    status: OperrationStatus.succes,
    ticketId: 'sjogronrog88nr55',
    amount: 120000,
    createdAt: DateTime.now(),
    updatedAt: DateTime.timestamp(),
    description: 'vous avez reçu un montant de 50000 FCFA',
  )
];
