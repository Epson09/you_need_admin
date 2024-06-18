import 'package:admin_you_need/routes/one_route.dart';
import 'package:admin_you_need/screens/business/business_screen.dart';
import 'package:admin_you_need/screens/category/category_screen.dart';
import 'package:admin_you_need/screens/boostages/boost_screen.dart';
import 'package:admin_you_need/screens/notification/notification_screen.dart';

import 'package:admin_you_need/screens/clients/user_screen.dart';
import 'package:admin_you_need/screens/wallet/wallet.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Map<String, Widget Function(BuildContext)> routes(
      BuildContext context) {
    List<OneRoute> routeList = Routes.withOutArgs();

    Map<String, Widget Function(BuildContext)> routes = {};

    for (var route in routeList) {
      Map<String, Widget Function(BuildContext)> map = {};
      map[route.name] = (context) => route.widget;

      routes.addAll(map);
    }

    return routes;
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      /*  case "/home":
        final args = settings.arguments as CurvedNavigationArgs;
        return MaterialPageRoute(
          builder: (context) {
            return CurvedNavigation(args);
          },
        );
      case "/verify-code":
        final args = settings.arguments as VerifyCodeArgs;
        return MaterialPageRoute(
          builder: (context) {
            return VerifyCodePage(args);
          },
        );
      case "/verify-recovery-code":
        final args = settings.arguments as VerifyRecoveryCodeArgs;
        return MaterialPageRoute(
          builder: (context) {
            return VerifyRecoveryCodePage(args);
          },
        );
      case "/change-password":
        final args = settings.arguments as String?;
        return MaterialPageRoute(
          builder: (context) {
            return ChangePasswordPage(args);
          },
        );
      case "/payment-deposit":
        final args = settings.arguments as PaymentDepositArgs;
        return MaterialPageRoute(
          builder: (context) {
            return PaymentDepositPage(args);
          },
        );
      case "/one-category":
        final args = settings.arguments as OneCategoryArgs;
        return MaterialPageRoute(
          builder: (context) {
            return OneCategory(args);
          },
        );
      case "/one-subcategory":
        final args = settings.arguments as OneSubcategoryArgs;
        return MaterialPageRoute(
          builder: (context) {
            return OneSubcategory(args);
          },
        );
      case "/one-food-category":
        final args = settings.arguments as OneFoodSubcategoryArgs;
        return MaterialPageRoute(
          builder: (context) {
            return OneFoodSubcategory(args);
          },
        );
      case "/one-article":
        final args = settings.arguments as int;
        return MaterialPageRoute(
          builder: (context) {
            return OneArticlePage(args);
          },
        );
      case "/one-food":
        final args = settings.arguments as int;
        return MaterialPageRoute(
          builder: (context) {
            return OneFoodPage(args);
          },
        );
      case "/order-details":
        final args = settings.arguments as OrderDetailsArgs;
        return MaterialPageRoute(
          builder: (context) {
            return OrderDetailsPage(args);
          },
        );
      case "/order-invoice":
        final args = settings.arguments as OrderDetailsArgs;
        return MaterialPageRoute(
          builder: (context) {
            return OrderInvoicePage(args);
          },
        );
      case "/one-restaurant":
        final args = settings.arguments as int;
        return MaterialPageRoute(
          builder: (context) {
            return OneRestaurantPage(args);
          },
        );
      case "/one-store":
        final args = settings.arguments as int;
        return MaterialPageRoute(
          builder: (context) {
            return OneStorePage(args);
          },
        );
      case "/one-video":
        final args = settings.arguments as int;
        return MaterialPageRoute(
          builder: (context) {
            return OneVideoPage(args);
          },
        );
      case "/search-results":
        final args = settings.arguments as SearchResultArgs;
        return MaterialPageRoute(
          builder: (context) {
            return SearchResultsPage(args);
          },
        );
      case "/comments":
        final args = settings.arguments as CommentsArgs;
        return MaterialPageRoute(
          builder: (context) {
            return CommentsPage(args);
          },
        );
      case "/comment-responses":
        final args = settings.arguments as CommentResponseArgs;
        return MaterialPageRoute(
          builder: (context) {
            return CommentResponsePage(args);
          },
        );
      */

      default:
        return null;
    }
  }
}

class Routes {
  static List<OneRoute> withOutArgs() {
    return [
      OneRoute("/Brands", const BrandScreen()),
      OneRoute("/category", const CategoryScreen()),
      // OneRoute("/Dashboard", const DashboardScreen()),
      //OneRoute("/SubCategory", SubCategoryScreen()),
      // OneRoute("/VariantType", VariantsTypeScreen()),
      OneRoute("/Variants", const UserScreen()),
      OneRoute("/Coupon", const BoostagesScreen()),
      // OneRoute("/Poster", const PosterScreen()),
      OneRoute("/Notifications", const NotificationScreen()),

      OneRoute("/wallet", const WalletScreen()),
    ];
  }
}
