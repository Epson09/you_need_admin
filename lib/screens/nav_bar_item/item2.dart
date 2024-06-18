import 'package:flutter/material.dart';

class NavBarItemTwo extends StatefulWidget {
  const NavBarItemTwo({super.key});

  @override
  State<NavBarItemTwo> createState() => _NavBarItemTwoState();
}

class _NavBarItemTwoState extends State<NavBarItemTwo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("Opération screen")
        ],
      ),

    );
  }
}