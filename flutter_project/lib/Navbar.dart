import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final String userId;

  const Navbar({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'User ID: $userId',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          // Add more ListTile widgets here for additional drawer items
        ],
      ),
    );
  }
}
