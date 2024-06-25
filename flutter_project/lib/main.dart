import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;
  int _currentImageIndex = 0;
  List<String> _backgroundImages = [
    "lib/assets/bg2.png",
    "lib/assets/bg8.png",
    "lib/assets/bg9.png",
  ];
  final int _imageDisplayDuration = 10; // Display each image for 10 seconds
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startImageSlider();
  }

  @override
  void dispose() {
    _stopImageSlider();
    super.dispose();
  }

  void _startImageSlider() {
    _timer = Timer.periodic(Duration(seconds: _imageDisplayDuration), (timer) {
      setState(() {
        _currentImageIndex =
            (_currentImageIndex + 1) % _backgroundImages.length;
      });
    });
  }

  void _stopImageSlider() {
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/bg1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Row(
          children: [
            Image.asset(
              'lib/assets/logo.png',
              width: 60,
              height: 60,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                'NonChalant University',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 25,
                  fontFamily: 'Times New Roman',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          AnimatedSwitcher(
            duration: Duration(seconds: 1),
            switchInCurve: Curves.easeInOut,
            switchOutCurve: Curves.easeInOut,
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: Container(
              key: ValueKey<int>(_currentImageIndex),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_backgroundImages[_currentImageIndex]),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.039),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 58,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Times New Roman',
                  ),
                ),
                SizedBox(height: height * 0.04),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'User ID',
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    filled: true,
                    fillColor: Colors.blue.shade100.withOpacity(0.8),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: height * 0.008, horizontal: 10.0),
                  ),
                ),
                SizedBox(height: height * 0.02),
                TextField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    filled: true,
                    fillColor: Colors.blue.shade100.withOpacity(0.8),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: height * 0.008, horizontal: 10.0),
                  ),
                ),
                SizedBox(height: height * 0.02),
                ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 0, 5, 68),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side:
                          BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.15,
                      vertical: height * 0.01,
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.0,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _login() async {
    String userId = _usernameController.text.trim();
    String userPass = _passwordController.text.trim();

    try {
      final response = await http.post(
        Uri.parse('http://192.168.254.108:5000/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'user_id': userId,
          'user_pass': userPass,
        }),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print('Login successful: ${responseData['message']}');

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => DashboardScreen(userId: userId),
          ),
        );
      } else if (response.statusCode == 401) {
        print('Invalid username or password');

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Invalid Login'),
              content: Text('Invalid username or password. Please try again.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        print('Unexpected error occurred: ${response.statusCode}');
        throw Exception('Failed to login');
      }
    } catch (e) {
      print('Error: $e');

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('An error occurred: $e'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}
