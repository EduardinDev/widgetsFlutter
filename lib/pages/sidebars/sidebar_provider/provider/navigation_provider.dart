import 'package:draggablesheet/pages/sidebars/sidebar_provider/navigation_item.dart';
import 'package:flutter/cupertino.dart';

class NavigationProvider extends ChangeNotifier {
  NavigationItem _navigationItem = NavigationItem.people;

  NavigationItem get navigationItem => _navigationItem;

  void setNavigationItem(NavigationItem navigationItem) {
    _navigationItem = navigationItem;
    notifyListeners();
  }

  
}
