import 'package:flutter/material.dart';
import 'package:gym/view/widgets/cards.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Trainers(),
    Text('Profile'),
    Text('Settings'),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: NavigationBar(
          backgroundColor: const Color.fromARGB(255, 27, 26, 26),
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) =>
              setState(() => _selectedIndex = index),
          height: 60,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                Icons.home,
                color: Colors.blue,
                size: 28,
              ),
              label: ('Trainers()'),
            ),
            NavigationDestination(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                selectedIcon: Icon(
                  Icons.home,
                  color: Colors.blue,
                  size: 28,
                ),
                label: 'Hom'),
            NavigationDestination(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                selectedIcon: Icon(
                  Icons.home,
                  color: Colors.blue,
                  size: 28,
                ),
                label: 'Hom'),
            NavigationDestination(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                selectedIcon: Icon(
                  Icons.home,
                  color: Colors.blue,
                  size: 28,
                ),
                label: 'Hom'),
          ]),
    );
  }
}
