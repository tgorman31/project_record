// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:project_record/app_screens/home_page.dart';
import 'package:project_record/app_screens/list_page.dart';
import 'package:project_record/app_screens/settings_page.dart';

import '../constants.dart';

class ProjectHome extends StatefulWidget {
  const ProjectHome({super.key});

  @override
  State<ProjectHome> createState() => _ProjectHomeState();
}

class _ProjectHomeState extends State<ProjectHome> {
  final List<Widget> _screens = [
    // Content for Home tab

    const HomePage(),
    const ListPage(), // Content for List tab
    const SettingsPage(),
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
        children: [
          navRailMethod(),
          Expanded(child: _screens[_selectedIndex]),
        ],
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
