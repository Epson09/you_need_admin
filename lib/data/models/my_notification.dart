class MyNotification {
  String? sId;
  String? notificationId;
  String? title;
  String? description;
  String? imageUrl;
  String? createdAt;
  String? updatedAt;
  int? iV;

  MyNotification(
      {this.sId,
      this.notificationId,
      this.title,
      this.description,
      this.imageUrl,
      this.createdAt,
      this.updatedAt,
      this.iV});

  MyNotification.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    notificationId = json['notificationId'];
    title = json['title'];
    description = json['description'];
    imageUrl = json['imageUrl'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['notificationId'] = this.notificationId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['imageUrl'] = this.imageUrl;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

final List<MyNotification> demoNotifications = [
  MyNotification(
      createdAt: DateTime(2020, 11, 2, 6, 30).toIso8601String(),
      description:
          "notzrdjovjov  jvnkns kvk hsk ks vs  jks  jkvki shkmhidvhidnsvhid hzd",
      iV: 52,
      imageUrl:
          "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRct1o1JmvIn_fM8_rMC_XcTf6QN6PBRCcQC2LodNyuto0Ovi4jd5BtdoCgOO_9",
      notificationId: "jvnjivfhf25",
      sId: "vhfbvrlrrpl25",
      title: "Business",
      updatedAt: DateTime.now().toIso8601String()),
  MyNotification(
      createdAt: DateTime(2020, 2, 2, 6, 30).toIso8601String(),
      description:
          "notzrdjovjov  jvnkns kvk hsk ks vs  jks  jkvki shkmhidvhidnsvhid hzd",
      iV: 53,
      imageUrl:
          "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRYMCTx0SkRdAHWLYljDffIaydiU7diTPx23FSoKzp_p0vvfAyf_5FX_KtSMaos",
      notificationId: "jvnjivfhf25",
      sId: "vhfbvrlrrpl25",
      title: "Business",
      updatedAt: DateTime.now().toIso8601String()),
  MyNotification(
      createdAt: DateTime(2020, 3, 2, 6, 30).toIso8601String(),
      description:
          "notzrdjovjov  jvnkns kvk hsk ks vs  jslkks  jkvki shkmhidvhidnsvhid hzd",
      iV: 42,
      imageUrl:
          "https://www.mathon.fr/cdn/shop/files/2b199e4047864a9798728b9b2a1d42c2_600x600_crop_center.jpg?v=1715769141",
      notificationId: "jvnjivfhf25",
      sId: "vhfbvrlrrpl25",
      title: "Business",
      updatedAt: DateTime.now().toIso8601String()),
  MyNotification(
      createdAt: DateTime(2020, 6, 2, 6, 30).toIso8601String(),
      description:
          "notzrdjovjov  jvnkns kvk hsk ks vs  jks  jkvki shkmhidvhidnsvhid hzd",
      iV: 55,
      imageUrl:
          "https://www.mathon.fr/cdn/shop/products/da3d490245194fa7993c31b13019f630_600x600_crop_center.jpg?v=1712746947",
      notificationId: "jvnjivfhf25",
      sId: "vhfbvrlrrpl25",
      title: "Business",
      updatedAt: DateTime.now().toIso8601String()),
  MyNotification(
      createdAt: DateTime(2020, 8, 2, 6, 30).toIso8601String(),
      description:
          "notzrdjovjov  jvnkns kvk hsk ks vs  jks  jkvki shkmhidvhidnsvhid hzd",
      iV: 59,
      imageUrl:
          "https://www.mathon.fr/cdn/shop/products/f43b93997e83459da346aef7043914ce_83cac660-a39e-4828-b6b7-821192cc5877_600x600_crop_center.jpg?v=1716282035",
      notificationId: "jvnjivfhf25",
      sId: "vhfbvrlrrpl25",
      title: "Business",
      updatedAt: DateTime.now().toIso8601String())
];
