import 'package:flutter/material.dart';

class NavBarItemOne extends StatefulWidget {
  const NavBarItemOne({super.key});

  @override
  State<NavBarItemOne> createState() => _NavBarItemOneState();
}

class _NavBarItemOneState extends State<NavBarItemOne> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("Scan screen")
        ],
      ),

    );
  }
}