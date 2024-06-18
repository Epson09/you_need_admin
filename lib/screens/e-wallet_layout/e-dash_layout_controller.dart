import 'package:admin_you_need/screens/dashboard/admin_dash.dart';
import 'package:admin_you_need/screens/nav_bar_item/item1.dart';
import 'package:admin_you_need/screens/nav_bar_item/item2.dart';
import 'package:admin_you_need/screens/nav_bar_item/item3.dart';
import 'package:flutter/material.dart';

class BoardingItem {
  final String label;
  final Widget icon;
  final Widget screen;

  BoardingItem({
    required this.label,
    required this.icon,
    required this.screen,
  });
}

// ignore: camel_case_types
class E_WalletLayoutController {
  static int currentIndex = 0;
  static List<BoardingItem> item = [
    BoardingItem(
        label: "Services",
        icon: Image.asset(
          "assets/icons/home.png",
          height: 20,
          width: 20,
        ),
        screen: const DashHome()),
    BoardingItem(
        label: "Scanner",
        icon: Image.asset(
          "assets/icons/scanner.png",
          height: 20,
          width: 20,
        ),
        screen: const NavBarItemOne()),
    BoardingItem(
        label: "Operation",
        icon: Image.asset(
          "assets/icons/roue.png",
          //"assets/images/settings.png",
          height: 20,
          width: 20,
        ),
        screen: const NavBarItemTwo()),
    BoardingItem(
        label: "Messagerie",
        icon: Image.asset(
          "assets/icons/ms.png",
          height: 20,
          width: 20,
        ),
        screen:const NavBarItemTree()),
  ];

  static void changeIndex(int newIndex) {
    currentIndex = newIndex;
  }


}
