import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Navbar.dart'; // Import your custom Navbar widget
import 'EventDetailsScreen.dart'; // Ensure the file name matches the actual file
import 'ChatBotScreen.dart'; // Ensure the file name matches the actual file

class DashboardScreen extends StatefulWidget {
  final String userId;

  DashboardScreen({required this.userId}); // Accept userId as a parameter

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Map<String, dynamic>> events = [];
  List<Color> boxColors = [
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.pink,
    Colors.purple,
    Colors.teal,
    Colors.red,
  ];

  @override
  void initState() {
    super.initState();
    fetchEvents();
  }

  Future<void> fetchEvents() async {
    final response =
    await http.get(Uri.parse('http://192.168.61.120:5000/events'));

    if (response.statusCode == 200) {
      setState(() {
        events = List<Map<String, dynamic>>.from(json.decode(response.body));
        events.sort((a, b) => a['event_date'].compareTo(b['event_date']));
      });
    } else {
      throw Exception('Failed to load events');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
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
              width: 80,
              height: 80,
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
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Navbar(userId: widget.userId), // Use your custom Navbar widget here
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Calendar Activities',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: events.isEmpty
                ? Center(child: CircularProgressIndicator())
                : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                crossAxisSpacing: 10,
                mainAxisSpacing: 0,
              ),
              itemCount: events.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EventDetailsScreen(
                            eventData: events[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                        color: boxColors[index % boxColors.length],
                      ),
                      child: ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              events[index]['event_title'],
                              style: const TextStyle(
                                fontSize: 25,
                                fontFamily: 'Times New Roman',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Date: ${events[index]['event_date']}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 40),
                            Row(
                              children: [
                                Text(
                                  'Click to see details',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatBotScreen(userId: widget.userId),
            ),
          );
        },
        tooltip: 'Chat Bot',
        child: Icon(Icons.smart_toy),
      ),
    );
  }
}
