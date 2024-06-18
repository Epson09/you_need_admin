class Product {
  String? sId;
  String? name;
  String? description;
  int? quantity;
  double? price;
  double? offerPrice;
  ProRef? proCategoryId;
  ProRef? proSubCategoryId;
  ProRef? proBrandId;
  ProTypeRef? proVariantTypeId;
  List<String>? proVariantId;
  List<Images>? images;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Product(
      {this.sId,
        this.name,
        this.description,
        this.quantity,
        this.price,
        this.offerPrice,
        this.proCategoryId,
        this.proSubCategoryId,
        this.proBrandId,
        this.proVariantTypeId,
        this.proVariantId,
        this.images,
        this.createdAt,
        this.updatedAt,
        this.iV});

  Product.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    description = json['description'];
    quantity = json['quantity'];
    price = json['price']?.toDouble();;
    offerPrice = json['offerPrice']?.toDouble();;
    proCategoryId = json['proCategoryId'] != null
        ? new ProRef.fromJson(json['proCategoryId'])
        : null;
    proSubCategoryId = json['proSubCategoryId'] != null
        ? new ProRef.fromJson(json['proSubCategoryId'])
        : null;
    proBrandId = json['proBrandId'] != null
        ? new ProRef.fromJson(json['proBrandId'])
        : null;
    proVariantTypeId = json['proVariantTypeId'] != null
        ? new ProTypeRef.fromJson(json['proVariantTypeId'])
        : null;
    proVariantId = json['proVariantId'].cast<String>();
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(new Images.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = sId;
    data['name'] = name;
    data['description'] = description;
    data['quantity'] = quantity;
    data['price'] = price;
    data['offerPrice'] = offerPrice;
    if (proCategoryId != null) {
      data['proCategoryId'] = proCategoryId!.toJson();
    }
    if (proSubCategoryId != null) {
      data['proSubCategoryId'] = proSubCategoryId!.toJson();
    }
    if (proBrandId != null) {
      data['proBrandId'] = proBrandId!.toJson();
    }
    if (proVariantTypeId != null) {
      data['proVariantTypeId'] = proVariantTypeId!.toJson();
    }
    data['proVariantId'] = proVariantId;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}

class ProRef {
  String? sId;
  String? name;

  ProRef({this.sId, this.name});

  ProRef.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = sId;
    data['name'] = name;
    return data;
  }
}

class ProTypeRef {
  String? sId;
  String? type;

  ProTypeRef({this.sId, this.type});

  ProTypeRef.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = sId;
    data['type'] = type;
    return data;
  }
}

class Images {
  int? image;
  String? url;
  String? sId;

  Images({this.image, this.url, this.sId});

  Images.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    url = json['url'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = image;
    data['url'] = url;
    data['_id'] = sId;
    return data;
  }
}



final List<Product> demoProduct = [
Product(iV: 1,createdAt: DateTime.now().toIso8601String(),description: "Hotte de cuisson qui se rétracte dans le plan de travail de la cuisine, réfrigérateur avec caméra intégrée, aspirateur balai qui repousse les limites de l'autonomie... L'année 2017 a été riche en innovations dans le secteur de l'électroménager. Quels sont les appareils qui se sont faits une place de choix dans les foyers français et pourquoi ont-ils séduit le grand public ? Réponses dans notre top 10.",
name: "Les réfrigérateurs",
images: [
  Images(image: 1,url: "https://www.maisonapart.com/images/auto/640-480-c/20180228_170750_thinkstockphotos-513631128ok.jpg")
],

offerPrice: 250000,
price: 150000,
proBrandId: ProRef(name: "Electro",sId: "flvnrrrio"),
quantity: 50,


),

Product(iV: 2,createdAt: DateTime.now().toIso8601String(),description: "Le robot cuiseur multifonction 1000 W Mathon est un robot qui conviendra autant aux créatifs qu’à ceux qui manquent d’inspiration en cuisine. Ce robot cuiseur s’utilise de 3 manières au quotidien : En reproduisant pas à pas les recettes de son vaste répertoire En utilisant les 8 programmes automatiques correspondant aux fonctions essentielles en cuisine : pétrir, vapeur, mijoter, bouillir, râper/trancher, hacher, peser et Pulse Avec le mode manuel en réglant de 37 à 130 °C parmi 20 niveaux de température, en choisissant l’une des 12 vitesses et en sélectionnant la durée grâce au minuteur de 0 à 90 minutes..",
name: "Robot cuiseur multifonction",
images: [
  Images(image: 1,url: "https://www.mathon.fr/cdn/shop/files/2b199e4047864a9798728b9b2a1d42c2_600x600_crop_center.jpg?v=1715769141")
],

offerPrice: 50000,
price: 20000,
proBrandId: ProRef(name: "Electro",sId: "flv4rrrio"),
quantity: 10,


),

Product(iV: 3,createdAt: DateTime.now().toIso8601String(),description: "La lame dentelée de cette trancheuse coupe sans risque ni effort tous les types de pains : baguette, pain de campagne, pain de mie mais aussi cakes salés, sucrés, brioches… Sobre, elle se fond dans le décor du plan de travail.Son socle est en bois blanc avec décor épi. La lame de 25 cm est en inox.",
name: "Trancheuse à pain Mathon",
images: [
  Images(image: 1,url: "https://www.mathon.fr/cdn/shop/products/da3d490245194fa7993c31b13019f630_600x600_crop_center.jpg?v=1712746947")
],

offerPrice: 20000,
price: 10000,
proBrandId: ProRef(name: "Electro",sId: "flv4r0rio"),
quantity: 10,


),


Product(iV: 4,createdAt: DateTime.now().toIso8601String(),description: "Faites mijoter tous vos plats à feu doux, y compris vos plats en céramique, en verre et en terre : tajines, diables...Il répartit uniformément la chaleur à la base de la casserole ou du plat, sans brûler les aliments au fond, et évite le contact direct avec la flamme. Le diffuseur mijoteur réduit la vapeur et les odeurs de cuisson. Sur vos feux électriques ou à gaz, positionnez-le les pointes vers le haut et faites l'inverse pour les plaques à induction ou vitrocéramique. Nettoyage au lave-vaisselle. En acier émaillé.",
name: "Diffuseur mijoteur",
images: [
  Images(image: 4,url: "https://www.mathon.fr/cdn/shop/products/f43b93997e83459da346aef7043914ce_83cac660-a39e-4828-b6b7-821192cc5877_600x600_crop_center.jpg?v=1716282035")
],

offerPrice: 30000,
price: 5000,
proBrandId: ProRef(name: "Electro",sId: "flv4r0rio"),
quantity: 10,


),



];
