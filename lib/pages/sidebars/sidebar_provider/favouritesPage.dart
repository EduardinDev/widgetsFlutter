
import 'package:draggablesheet/pages/sidebars/sidebar_provider/navigation_drawer.dart';
import 'package:flutter/material.dart';

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Favourites Page'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
      );
}
