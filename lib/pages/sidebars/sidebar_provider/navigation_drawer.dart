import 'package:draggablesheet/pages/sidebars/sidebar_provider/navigation_item.dart';
import 'package:draggablesheet/pages/sidebars/sidebar_provider/provider/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          //padding: padding,
          children: <Widget>[
            Container(
              padding: padding,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 24),
                  buildMenuItem(
                    context,
                    item: NavigationItem.people,
                    text: 'Gente',
                    icon: Icons.people,
                    //onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    context,
                    item: NavigationItem.favourites,
                    text: 'Favourites',
                    icon: Icons.favorite_border,
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    context,
                    item: NavigationItem.workflow,
                    text: 'WorkFlow',
                    icon: Icons.workspaces_outline,
                    //onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    context,
                    item: NavigationItem.updates,
                    text: 'Updates',
                    icon: Icons.update,
                    //onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 24),
                  Divider(
                    color: Colors.white70,
                  ),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    context,
                    item: NavigationItem.plugins,
                    text: 'Plugins',
                    icon: Icons.account_tree_outlined,
                    // onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    context,
                    item: NavigationItem.notifications,
                    text: 'Notifications',
                    icon: Icons.notifications_outlined,
                    //onClicked: () => selectedItem(context, 5),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    context,
                    item: NavigationItem.sign_out,
                    text: 'Sign Out',
                    icon: Icons.close,
                    //onClicked: () => selectedItem(context, 5),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(BuildContext context,
      {required NavigationItem item,
      required String text,
      required IconData icon}) {
    final provider = Provider.of<NavigationProvider>(context);
    final currentItem = provider.navigationItem;
    final isSelected = item == currentItem;

    final color = Colors.white;

    return Material(
      color: Colors.transparent,
      child: ListTile(
        selected: isSelected,
        selectedTileColor: Colors.white24,
        leading: Icon(icon, color: color),
        title: Text(
          text,
          style: TextStyle(color: color),
        ),
        onTap: () => selecteItem(context, item),
      ),
    );
  }

  void selecteItem(BuildContext context, NavigationItem item) {
    final provider = Provider.of<NavigationProvider>(context, listen: false);
    provider.setNavigationItem(item);
  }
 
}
