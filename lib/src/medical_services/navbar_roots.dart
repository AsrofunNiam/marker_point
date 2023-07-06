import 'package:flutter/material.dart';
import 'package:marker_point/src/medical_services/home_screen.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  final _Screens = [
    //  home Screen
    const HomeScreen(),
    // message
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
