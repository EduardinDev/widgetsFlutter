import 'package:draggablesheet/pages/sidebars/sidebar_provider/navigation_item.dart';
import 'package:draggablesheet/pages/sidebars/sidebar_provider/provider/navigation_provider.dart';
import 'package:draggablesheet/pages/sidebars/sidebar_provider/sidebarProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de la aplicación'),
        centerTitle: true,
      ),
      body: ElevatedButton(
        onPressed: () {
          final provider =
              Provider.of<NavigationProvider>(context, listen: false);

          if (provider.navigationItem == NavigationItem.people) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => SidebarProvider(),
              ),
            );
          } else {
            provider.setNavigationItem(NavigationItem.people);
            
          }
        },
        child: Text('Presioname bb'),
      ),
    );
  }
}
