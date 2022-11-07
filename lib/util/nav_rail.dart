import 'package:flutter/material.dart';

class MyNavRail extends StatefulWidget {
  const MyNavRail({super.key});

  @override
  State<MyNavRail> createState() => _MyNavRailState();
}

class _MyNavRailState extends State<MyNavRail> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAlignment = -1.0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(
            icon: Icon(Icons.home_filled),
            selectedIcon: Icon(Icons.home_filled, color: Colors.white),
            label: Text('Home')),
        NavigationRailDestination(
            icon: Icon(Icons.list),
            selectedIcon: Icon(Icons.list, color: Colors.white),
            label: Text('Second')),
        NavigationRailDestination(
            icon: Icon(Icons.settings),
            selectedIcon: Icon(Icons.settings, color: Colors.white),
            label: Text('Third')),
      ],
      selectedIndex: _selectedIndex,
      groupAlignment: groupAlignment,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      labelType: labelType,
    );
  }
}
