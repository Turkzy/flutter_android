import 'package:flutter/material.dart';
import 'package:flutter_project/AboutScreen.dart';
import 'package:flutter_project/dashboard_screen.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white, // Set the background color to white
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'NCU',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: 'Times New Roman',
                ),
              ),
              accountEmail: Text(
                'admin@ncu.org',
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/bg.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutScreen()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
