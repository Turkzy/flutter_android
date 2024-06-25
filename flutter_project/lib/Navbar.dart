import 'package:flutter/material.dart';
import 'package:flutter_project/AboutScreen.dart';
import 'package:flutter_project/dashboard_screen.dart';

class Navbar extends StatelessWidget {
  final String userId;

  const Navbar({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Fetch device width and height
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/bg.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.025),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'NCU',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.09,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                  Text(
                    'User ID: $userId',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.04,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, size: width * 0.06),
            title: Text(
              'Home',
              style: TextStyle(fontSize: width * 0.040),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DashboardScreen(userId: userId)),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info, size: width * 0.06),
            title: Text(
              'About',
              style: TextStyle(fontSize: width * 0.040),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AboutScreen(userId: userId)),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, size: width * 0.06),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: width * 0.040),
            ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
