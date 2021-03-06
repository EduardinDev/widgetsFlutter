
import 'package:draggablesheet/pages/sidebars/sidebar_provider/inicio.dart';
import 'package:draggablesheet/pages/sidebars/sidebar_provider/navigation_item.dart';
import 'package:draggablesheet/pages/sidebars/sidebar_provider/pages/favouritesPage.dart';
import 'package:draggablesheet/pages/sidebars/sidebar_provider/pages/peoplePage.dart';

import 'package:draggablesheet/pages/sidebars/sidebar_provider/provider/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SidebarProvider extends StatefulWidget {
  @override
  _SidebarProviderState createState() => _SidebarProviderState();
}

class _SidebarProviderState extends State<SidebarProvider> {
  @override
  Widget build(BuildContext context) => buildPages();

  Widget buildPages() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.people:
        return PeoplePage();

      case NavigationItem.favourites:
        return FavouritesPage();

      case NavigationItem.sign_out:{
        return InicioPage();
      }
        

      default:
        {
          return PeoplePage();
        }
    }
  }


  
}
