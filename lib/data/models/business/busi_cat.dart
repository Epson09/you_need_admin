// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BusiCatHome {
  final int currentPage;
  final int total;
  final List<BusiCat> items;

  BusiCatHome({
    required this.currentPage,
    required this.total,
    required this.items,
  });

  BusiCatHome copyWith({
    int? currentPage,
    int? total,
    List<BusiCat>? items,
  }) =>
      BusiCatHome(
        currentPage: currentPage ?? this.currentPage,
        total: total ?? this.total,
        items: items ?? this.items,
      );

  factory BusiCatHome.fromJson(String str) =>
      BusiCatHome.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BusiCatHome.fromMap(Map<String, dynamic> json) => BusiCatHome(
        currentPage: json["currentPage"],
        total: json["total"],
        items: List<BusiCat>.from(json["items"].map((x) => BusiCat.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "currentPage": currentPage,
        "total": total,
        "items": List<dynamic>.from(items.map((x) => x.toMap())),
      };
}

class BusiCat {
  final DateTime createdAt;
  final String id;
  final String name;
  final String image;
  final String? description;
  //final List<NewBusiness> businesses;
  BusiCat({
    required this.createdAt,
    required this.id,
    required this.name,
    required this.image,
    this.description,
    //required this.businesses,
  });

  BusiCat copyWith({
    DateTime? createdAt,
    String? id,
    String? name,
    String? image,
    String? description,
    // List<NewBusiness>? businesses,
  }) {
    return BusiCat(
      createdAt: createdAt ?? this.createdAt,
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      description: description ?? this.description,
      //  businesses: businesses ?? this.businesses,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt.millisecondsSinceEpoch,
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      //'businesses': businesses.map((x) => x.toMap()).toList(),
    };
  }

  factory BusiCat.fromMap(Map<String, dynamic> map) {
    return BusiCat(
      createdAt: DateTime.parse(map["createdAt"]),
      id: map['id'] as String,
      name: map['name'] as String,
      image: map['image'] as String,
      description:
          map['description'] != null ? map['description'] as String : null,
      /* businesses: List<NewBusiness>.from(
            map["businesses"].map((x) => NewBusiness.fromMap(x))),  */
    );
  }

  String toJson() => json.encode(toMap());

  factory BusiCat.fromJson(String source) =>
      BusiCat.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BusiCat(createdAt: $createdAt, id: $id, name: $name, image: $image, description: $description, )';
  }

  @override
  bool operator ==(covariant BusiCat other) {
    if (identical(this, other)) return true;

    return other.createdAt == createdAt &&
        other.id == id &&
        other.name == name &&
        other.image == image &&
        other.description == description;
    /*  &&
      listEquals(other.businesses, businesses
      
      ); */
  }

  @override
  int get hashCode {
    return createdAt.hashCode ^
        id.hashCode ^
        name.hashCode ^
        image.hashCode ^
        description.hashCode;
    // businesses.hashCode;
  }
}

final demoBusicat = [
   BusiCat(createdAt: DateTime.now(), id: "kligi", name: "BusiCat1", image: "image"),
   BusiCat(createdAt: DateTime.now(), id: "kligi1", name: "BusiCat2", image: "image")
];

