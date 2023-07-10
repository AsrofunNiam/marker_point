import 'package:flutter/material.dart';
import 'package:marker_point/src/medical_services/screens/home_screen.dart';
import 'package:marker_point/src/medical_services/screens/settings_screen.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;
  final _screens = [
    const HomeScreen(),
    const SettingsScreen(),
    const SettingsScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 212, 212, 212),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color.fromARGB(235, 85, 94, 218),
            unselectedItemColor: Colors.black,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            onTap: (value) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return _screens[value];
              }));
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline), label: 'Message'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: 'Schedule'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Setting'),
            ]),
      ),
    );
  }
}
