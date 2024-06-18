
import '../../data/models/coupon.dart';
import '../../data/models/my_notification.dart';
import '../../data/models/order.dart';
import '../../data/models/poster.dart';
import '../../data/models/product.dart';
import '../../data/models/variant_type.dart';
import '../../services/http_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' hide Category;
import '../../data/models/category.dart';
import '../../data/models/brand.dart';
import '../../data/models/sub_category.dart';
import '../../data/models/variant.dart';

class DataProvider extends ChangeNotifier {
  HttpService service = HttpService();

  // ignore: unused_field
  final List<Category> _allCategories = [];
  final List<Category> _filteredCategories = [];
  List<Category> get categories => _filteredCategories;

  // ignore: unused_field
  final List<SubCategory> _allSubCategories = [];
  final List<SubCategory> _filteredSubCategories = [];

  List<SubCategory> get subCategories => _filteredSubCategories;

  // ignore: unused_field
  final List<Brand> _allBrands = [];
  final List<Brand> _filteredBrands = [];
  List<Brand> get brands => _filteredBrands;

  // ignore: unused_field
  final List<VariantType> _allVariantTypes = [];
  final List<VariantType> _filteredVariantTypes = [];
  List<VariantType> get variantTypes => _filteredVariantTypes;

  // ignore: unused_field
  final List<Variant> _allVariants = [];
  final List<Variant> _filteredVariants = [];
  List<Variant> get variants => _filteredVariants;

  // ignore: unused_field
  final List<Product> _allProducts = [];
  final List<Product> _filteredProducts = [];
  List<Product> get products => _filteredProducts;

  // ignore: unused_field
  final List<Coupon> _allCoupons = [];
  final List<Coupon> _filteredCoupons = [];
  List<Coupon> get coupons => _filteredCoupons;

  // ignore: unused_field
  final List<Poster> _allPosters = [];
  final List<Poster> _filteredPosters = [];
  List<Poster> get posters => _filteredPosters;

  // ignore: unused_field
  final List<Order> _allOrders = [];
  final List<Order> _filteredOrders = [];
  List<Order> get orders => _filteredOrders;

  // ignore: unused_field
  final List<MyNotification> _allNotifications = [];
  final List<MyNotification> _filteredNotifications = [];
  List<MyNotification> get notifications => _filteredNotifications;

  DataProvider() {}


  //TODO: should complete getAllCategory


  //TODO: should complete filterCategories

  //TODO: should complete getAllSubCategory


  //TODO: should complete filterSubCategories


  //TODO: should complete getAllBrands


  //TODO: should complete filterBrands


  //TODO: should complete getAllVariantType


  //TODO: should complete filterVariantTypes



  //TODO: should complete getAllVariant


  //TODO: should complete filterVariants


  //TODO: should complete getAllProduct


  //TODO: should complete filterProducts


  //TODO: should complete getAllCoupons


  //TODO: should complete filterCoupons


  //TODO: should complete getAllPosters


  //TODO: should complete filterPosters


  //TODO: should complete getAllNotifications


  //TODO: should complete filterNotifications


  //TODO: should complete getAllOrders


  //TODO: should complete filterOrders




  //TODO: should complete calculateOrdersWithStatus


  //TODO: should complete filterProductsByQuantity


  //TODO: should complete calculateProductWithQuantity


}
