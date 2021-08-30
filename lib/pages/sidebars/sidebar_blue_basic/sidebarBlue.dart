import 'package:draggablesheet/pages/sidebars/sidebar_blue_basic/navigation_drawer.dart';
import 'package:flutter/material.dart';

class SidebarBlue extends StatefulWidget {
  @override
  _SidebarBlueState createState() => _SidebarBlueState();
}

class _SidebarBlueState extends State<SidebarBlue> {
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('Navigation Drawer'),
      centerTitle: true,
    ),
  );
}
