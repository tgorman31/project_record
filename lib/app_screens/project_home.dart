import 'package:flutter/material.dart';

import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';
import '../util/nav_rail.dart';

class ProjectHome extends StatefulWidget {
  const ProjectHome({super.key});

  @override
  State<ProjectHome> createState() => _ProjectHomeState();
}

class _ProjectHomeState extends State<ProjectHome> {
  final List<Widget> _screens = [
    // Content for Home tab
    Container(
      color: Colors.amber[500],
      alignment: Alignment.center,
      child: const Text(
        'Home',
        style: TextStyle(fontSize: 40),
      ),
    ), // Content for Home tab
    Container(
      color: Colors.blue[500],
      alignment: Alignment.center,
      child: const Text(
        'List',
        style: TextStyle(fontSize: 40),
      ),
    ), // Content for Home tab
    Container(
      color: Colors.green[500],
      alignment: Alignment.center,
      child: const Text(
        'Settings',
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];

  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAlignment = -1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      // appBar: myAppBar,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_screens[_selectedIndex], navRailMethod()],
      ),
    );
  }

  NavigationRail navRailMethod() {
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
