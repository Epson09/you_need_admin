class Coupon {
  String? sId;
  String? couponCode;
  String? discountType;
  double? discountAmount;
  double? minimumPurchaseAmount;
  String? endDate;
  String? status;
  CatRef? applicableCategory;
  CatRef? applicableSubCategory;
  CatRef? applicableProduct;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Coupon(
      {this.sId,
      this.couponCode,
      this.discountType,
      this.discountAmount,
      this.minimumPurchaseAmount,
      this.endDate,
      this.status,
      this.applicableCategory,
      this.applicableSubCategory,
      this.applicableProduct,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Coupon.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    couponCode = json['couponCode'];
    discountType = json['discountType'];
    discountAmount = json['discountAmount']?.toDouble();
    minimumPurchaseAmount = json['minimumPurchaseAmount']?.toDouble();
    endDate = json['endDate'];
    status = json['status'];
    applicableCategory = json['applicableCategory'] != null
        ? new CatRef.fromJson(json['applicableCategory'])
        : null;
    applicableSubCategory = json['applicableSubCategory'] != null
        ? new CatRef.fromJson(json['applicableSubCategory'])
        : null;
    applicableProduct = json['applicableProduct'] != null
        ? new CatRef.fromJson(json['applicableProduct'])
        : null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['couponCode'] = this.couponCode;
    data['discountType'] = this.discountType;
    data['discountAmount'] = this.discountAmount;
    data['minimumPurchaseAmount'] = this.minimumPurchaseAmount;
    data['endDate'] = this.endDate;
    data['status'] = this.status;
    if (this.applicableCategory != null) {
      data['applicableCategory'] = this.applicableCategory!.toJson();
    }
    if (this.applicableSubCategory != null) {
      data['applicableSubCategory'] = this.applicableSubCategory!.toJson();
    }
    if (this.applicableProduct != null) {
      data['applicableProduct'] = this.applicableProduct!.toJson();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class CatRef {
  String? sId;
  String? name;

  CatRef({this.sId, this.name});

  CatRef.fromJson(Map<String, dynamic> json) {
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

final List<Coupon> demoCoupons = [
  Coupon(iV: 10,sId: "hgngrgzrg",updatedAt: DateTime.now().timeZoneName,status: 'validated',endDate: DateTime.now().timeZoneName,createdAt: DateTime.now().timeZoneName,
  applicableCategory: CatRef(name: "Coupon253",sId: "jfrk256"),
  applicableProduct: CatRef(name: 'Coupon23',sId: 'qfjflf55'),
  applicableSubCategory: CatRef(name: "Coupon25",sId: "jkjrrr2f5"),
  couponCode: 'skgzrgr255e6',
  discountAmount: 500.0,
  discountType: "personal",
  minimumPurchaseAmount: 200.0
  ),


  Coupon(iV: 11,sId: "hgngrgzr6",updatedAt: DateTime.now().timeZoneName,status: 'validated',endDate: DateTime.now().timeZoneName,createdAt: DateTime.now().timeZoneName,
  applicableCategory: CatRef(name: "Coupon253",sId: "jfrk256"),
  applicableProduct: CatRef(name: 'Coupon23',sId: 'qfjflf55'),
  applicableSubCategory: CatRef(name: "Coupon25",sId: "jkjrrr2f5"),
  couponCode: 'skgzrgr5e6',
  discountAmount: 300.0,
  discountType: "personal",
  minimumPurchaseAmount: 200.0
  )
];
