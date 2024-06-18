class SubCategory {
  String? sId;
  String? name;
  CategoryId? categoryId;
  String? createdAt;
  String? updatedAt;

  SubCategory(
      {this.sId, this.name, this.categoryId, this.createdAt, this.updatedAt});

  SubCategory.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    categoryId = json['categoryId'] != null
        ? new CategoryId.fromJson(json['categoryId'])
        : null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    if (this.categoryId != null) {
      data['categoryId'] = this.categoryId!.toJson();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class CategoryId {
  String? sId;
  String? name;

  CategoryId({this.sId, this.name});

  CategoryId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    return data;
  }
}

final demoSubCategories = [
  SubCategory(
      categoryId: CategoryId(name: 'CatId5', sId: 'skhfirgrg'),
      createdAt: DateTime.now().toIso8601String(),
      name: "Sub 1",
      sId: 'khkrfrk',
      updatedAt: DateTime.now().toIso8601String()),
  SubCategory(
      categoryId: CategoryId(name: 'CatId4', sId: 'skhf2455irgrg'),
      createdAt: DateTime.now().toIso8601String(),
      name: "Sub 2",
      sId: 'khkrfrk',
      updatedAt: DateTime.now().toIso8601String()),
  SubCategory(
      categoryId: CategoryId(name: 'CatId4', sId: 'skhfirgrg'),
      createdAt: DateTime.now().toIso8601String(),
      name: "Sub 3",
      sId: 'khkrfrk',
      updatedAt: DateTime.now().toIso8601String()),
  SubCategory(
      categoryId: CategoryId(name: 'CatId5', sId: 'skhfirgrg'),
      createdAt: DateTime.now().toIso8601String(),
      name: "Sub 4",
      sId: "kifrnr",
      updatedAt: DateTime.now().toIso8601String()),
  SubCategory(
      categoryId: CategoryId(name: 'CatId4', sId: 'skhfirgrg'),
      createdAt: DateTime.now().toIso8601String(),
      name: "Sub 5",
      sId: 'khkrfrk',
      updatedAt: DateTime.now().toIso8601String()),
  SubCategory(
      categoryId: CategoryId(name: 'CatId5', sId: 'skhfirgrg'),
      createdAt: DateTime.now().toIso8601String(),
      name: "Sub 6",
      sId: 'khkrfrk',
      updatedAt: DateTime.now().toIso8601String())
];
