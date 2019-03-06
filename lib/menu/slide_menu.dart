import 'package:coupon/pages/settings_page.dart';
import "package:flutter/material.dart";

import 'package:coupon/pages/profile_page.dart';

class SlideMenu extends StatefulWidget {
  @override
  _SlideMenuState createState() => _SlideMenuState();
}

class _SlideMenuState extends State<SlideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Dominik Tilgner"),
            accountEmail: Text("dominik.tilgner@outlook.de"),
            currentAccountPicture: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/profile_pic.jpg"),
              )
            ),
          ),
          ListTile(
            trailing: Icon(Icons.group),
            title: const Text("Gruppen"),
          ),
          Divider(),
          ListTile(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            ),
            leading: Icon(Icons.settings),
            title: const Text("Einstellungen"),
          ),
        ],
      ),
    );
  }
}
