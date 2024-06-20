import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StudentInfoScreen extends StatefulWidget {
  final String userId;

  StudentInfoScreen({required this.userId});

  @override
  _StudentInfoScreenState createState() => _StudentInfoScreenState();
}

class _StudentInfoScreenState extends State<StudentInfoScreen> {
  late Future<Map<String, dynamic>> _futureStudentInfo;

  @override
  void initState() {
    super.initState();
    _futureStudentInfo = _fetchStudentInfo();
  }

  Future<Map<String, dynamic>> _fetchStudentInfo() async {
    final url = Uri.parse('http://192.168.254.103:5000/students/${widget.userId}/info');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load student info');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to load student info');
    }
  }

  Future<void> _refreshStudentInfo() async {
    setState(() {
      _futureStudentInfo = _fetchStudentInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      // Wrap your Scaffold with Theme to customize AppBar
      data: Theme.of(context).copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent, // Transparent background
          elevation: 0, // No shadow
          iconTheme: IconThemeData(color: Colors.white), // Set back button color
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                'Student Info',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          toolbarHeight: 70,
          flexibleSpace: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/assets/bg1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                color: Colors.black.withOpacity(0.5), // Dark overlay
              ),
            ],
          ),
        ),
        body: Center(
          child: RefreshIndicator(
            onRefresh: _refreshStudentInfo,
            child: FutureBuilder<Map<String, dynamic>>(
              future: _futureStudentInfo,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                } else {
                  final studentInfo = snapshot.data!;
                  final courseName = studentInfo['course_name'];
                  final gender = studentInfo['gender'];
                  final birthday = studentInfo['birthday'];
                  final status = studentInfo['status'];

                  return ListView(
                    padding: EdgeInsets.all(16.0),
                    children: <Widget>[
                      _buildInfoTile('Student Name', studentInfo['student_name']),
                      _buildInfoTile('Address', studentInfo['address']),
                      _buildInfoTile('Gender', _parseGender(gender)),
                      _buildInfoTile('Birthday', _parseDate(birthday)),
                      _buildInfoTile('Cellphone', studentInfo['cellphone']),
                      _buildInfoTile('Email', studentInfo['email']),
                      _buildInfoTile('Mother\'s Name', studentInfo['mother_name']),
                      _buildInfoTile('Mother\'s Contact', studentInfo['mother_contact']),
                      _buildInfoTile('School Graduated', studentInfo['school_graduated']),
                      _buildInfoTile('Blood Type', studentInfo['blood_type']),
                      _buildInfoTile('Course', courseName),
                      _buildInfoTile('Status', _parseStatus(status)),
                    ],
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  String _parseGender(String? gender) {
    return gender == 'Male' ? 'Male' : gender == 'Female' ? 'Female' : 'Unknown';
  }

  String _parseDate(String? date) {
    if (date != null) {
      try {
        final parsedDate = DateTime.parse(date);
        return '${parsedDate.day}/${parsedDate.month}/${parsedDate.year}';
      } catch (e) {
        print('Error parsing date: $e');
      }
    }
    return 'Unknown';
  }

  String _parseStatus(String? status) {
    return status == 'Regular' ? 'Regular' : status == 'Irregular' ? 'Irregular' : 'Unknown';
  }

  Widget _buildInfoTile(String title, String? value) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18, // Adjust title font size
          color: Colors.black, // Adjust title color
        ),
      ),
      subtitle: Text(
        value ?? 'Unknown',
        style: TextStyle(
          fontSize: 16, // Adjust subtitle font size
          color: Colors.black87, // Adjust subtitle color
        ),
      ),
    );
  }
}
