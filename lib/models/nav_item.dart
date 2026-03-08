import 'package:flutter/material.dart';

class NavItem {
  final String title;
  final IconData icon;
  NavItem(this.title, this.icon);
}

List<NavItem> drawerItems = [
  NavItem('Dashboard', Icons.home),
  NavItem('Menus', Icons.menu_book),
  NavItem('Checkout', Icons.check_circle),
  NavItem('History', Icons.history),
  NavItem('Person', Icons.person),
];


