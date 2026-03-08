import 'package:flutter/material.dart';
import 'models/mahasiswa.dart';
import 'models/nav_item.dart';
import 'pages/checkout.dart';
import 'pages/dashboard.dart';
import 'pages/history.dart';
import 'pages/menus_page.dart';
import 'pages/profile_page.dart';

class HomeScreen extends StatefulWidget {
  final Mahasiswa mahasiswa;
  const HomeScreen({super.key, required this.mahasiswa});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const Dashboard(),
      const MenusPage(),
      const Checkout(),
      const History(),
      ProfilePage(mahasiswa: widget.mahasiswa),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text(drawerItems[_selectedIndex].title),
          backgroundColor: Colors.blueAccent,
        ),
        body: pages[_selectedIndex],drawer: Drawer(
  child: Column( 
    children: [
      UserAccountsDrawerHeader(
        accountName: Text(widget.mahasiswa.fullName),
        accountEmail: Text(widget.mahasiswa.email),
        currentAccountPicture: const CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.person, color: Colors.blueAccent),
        ),
      ),
      Expanded(
        child: ListView( 
          padding: EdgeInsets.zero,
          children: drawerItems.asMap().entries.map((entry) {
            int index = entry.key;
            NavItem item = entry.value;
            return ListTile(
              leading: Icon(item.icon, color: Colors.blueAccent),
              title: Text(item.title),
              selected: _selectedIndex == index,
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
                Navigator.pop(context);
              },
            );
          }).toList(),
        ),
      ),
    ],
  ),
)
    );
  }
}
