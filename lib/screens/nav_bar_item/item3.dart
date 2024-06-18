import 'package:flutter/material.dart';

class NavBarItemTree extends StatefulWidget {
  const NavBarItemTree({super.key});

  @override
  State<NavBarItemTree> createState() => _NavBarItemTreeState();
}

class _NavBarItemTreeState extends State<NavBarItemTree> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("Chat screen")
        ],
      ),

    );
  }
}
