import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import 'Navbar.dart';
import 'EventDetailsScreen.dart';
import 'ChatBotScreen.dart';
import 'package:flutter_tts/flutter_tts.dart';

class DashboardScreen extends StatefulWidget {
  final String userId;

  DashboardScreen({required this.userId});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Map<String, dynamic>> events = [];
  List<Color> boxColors = [
    Color(0xFF008080),
    Color(0xFF800080),
    Color(0xFFB22222),
    Color(0xFF4682B4),
    Color(0xFF2E8B57),
    Color(0xFF800000),
    Color(0xFF556B2F),
    Color(0xFF9932CC),
  ];

  String studentName = '';
  String courseName = ''; // Added for displaying course name

  @override
  void initState() {
    super.initState();
    fetchStudentInfoAndSpeakName(); // Call method to fetch info and speak name
    fetchEvents();
  }

  Future<void> fetchStudentInfoAndSpeakName() async {
    try {
      final response = await http.get(
        Uri.parse('http://192.168.254.103:5000/students/${widget.userId}/info'),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        setState(() {
          studentName = responseData['student_name'];
          courseName = responseData['course_name']; // Update course name
        });

        // Speak student's name immediately after fetching
        speakStudentName();
      } else {
        throw Exception('Failed to load student info');
      }
    } catch (e) {
      print('Error fetching student info: $e');
    }
  }

  Future<void> fetchEvents() async {
    final response =
    await http.get(Uri.parse('http://192.168.254.103:5000/events'));

    if (response.statusCode == 200) {
      List<Map<String, dynamic>> fetchedEvents =
      List<Map<String, dynamic>>.from(json.decode(response.body));

      fetchedEvents.sort((a, b) =>
          DateTime.parse(a['event_date'])
              .compareTo(DateTime.parse(b['event_date'])));

      setState(() {
        events = fetchedEvents;
      });
    } else {
      throw Exception('Failed to load events');
    }
  }

  Future<void> refreshEvents() async {
    await fetchEvents();
  }

  Future<void> speakStudentName() async {
    FlutterTts flutterTts = FlutterTts();
    await flutterTts.setLanguage('en-US');
    await flutterTts.setSpeechRate(0.6);
    await flutterTts.setVolume(1.0);
    await flutterTts.setPitch(1.0);
    await flutterTts.speak('Welcome, $studentName');
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
      drawer: Navbar(userId: widget.userId),
      body: RefreshIndicator(
        onRefresh: refreshEvents,
        child: Container(
          color: Colors.lightBlue[50],
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 16.0),
                  child: Center(
                    child: Text(
                      'Calendar Activities',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                events.isEmpty
                    ? Center(child: CircularProgressIndicator())
                    : GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 3.0,
                  ),
                  itemCount: events.length,
                  itemBuilder: (context, index) {
                    DateTime eventDate =
                    DateTime.parse(events[index]['event_date']);
                    String formattedDate =
                    DateFormat.yMMMd().format(eventDate);

                    return InkWell(
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
                          borderRadius: BorderRadius.circular(12.0),
                          color: boxColors[index % boxColors.length],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                events[index]['event_title'],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                formattedDate,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
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
