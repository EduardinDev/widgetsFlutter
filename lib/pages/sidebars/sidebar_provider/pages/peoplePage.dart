
import 'package:draggablesheet/pages/sidebars/sidebar_provider/navigation_drawer.dart';
import 'package:flutter/material.dart';

class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('People Page'),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
  );
}
