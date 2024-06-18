class Category {
  String? sId;
  String? name;
  String? image;
  String? createdAt;
  String? updatedAt;

  Category({this.sId, this.name, this.image, this.createdAt, this.updatedAt});

  Category.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    image = json['image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['image'] = this.image;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

final demoCategories = [
  Category(
      createdAt: DateTime.now().timeZoneName,
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAm9br34ESDKE5L-PkKNd0phIYEet51l0Eyq2olkKzwAHBCA-8PYlCBE5s66cr',
      name: "Men's clothing",
      sId: "jyifrfef78",
      updatedAt: DateTime.now().toIso8601String()),


      Category(
      createdAt: DateTime.now().timeZoneName,
      image:
          'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQNgsl087YxOtBTOeceNzI8beUk7anBnIoGl1IyQAUS4P3x4Af2jA0vjoChddNL',
      name: "Women's clothing",
      sId: "jyifrfe25f78",
      updatedAt: DateTime.now().toIso8601String()),


      Category(
      createdAt: DateTime.now().timeZoneName,
      image:
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRYMCTx0SkRdAHWLYljDffIaydiU7diTPx23FSoKzp_p0vvfAyf_5FX_KtSMaos',
      name: "Children's clothing",
      sId: "jyifrjhfef78",
      updatedAt: DateTime.now().toIso8601String()),
      Category(
      createdAt: DateTime.now().timeZoneName,
      image:
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRct1o1JmvIn_fM8_rMC_XcTf6QN6PBRCcQC2LodNyuto0Ovi4jd5BtdoCgOO_9',
      name: "Shoes",
      sId: "jyifrf54ef78",
      updatedAt: DateTime.now().toIso8601String()),
      Category(
      createdAt: DateTime.now().timeZoneName,
      image:
          'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSdnXxaGINnUm0bxmj3bnw9C4t3MVsWESaE7RpH7zG16hrl8ofpN00siEpaSgb4',
      name: "Produce",
      sId: "jyifrfef78",
      updatedAt: DateTime.now().toIso8601String())
];
