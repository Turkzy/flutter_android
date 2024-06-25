import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StudentStudyPlanScreen extends StatefulWidget {
  final String userId;

  StudentStudyPlanScreen({required this.userId});

  @override
  _StudentStudyPlanScreenState createState() => _StudentStudyPlanScreenState();
}

class _StudentStudyPlanScreenState extends State<StudentStudyPlanScreen> {
  late Future<Map<String, dynamic>> _futureStudentInfo;
  late Future<Map<String, List<Map<String, dynamic>>>> _futureStudyPlans;

  @override
  void initState() {
    super.initState();
    // Initialize future student info and study plans data
    _futureStudentInfo = fetchStudentInfo();
    _futureStudyPlans = fetchStudyPlans();
  }

  Future<Map<String, dynamic>> fetchStudentInfo() async {
    final url =
        Uri.parse('http://192.168.254.108:5000/students/${widget.userId}/info');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load student info');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to load student info');
    }
  }

  Future<Map<String, List<Map<String, dynamic>>>> fetchStudyPlans() async {
    final url =
        Uri.parse('http://192.168.254.108:5000/study-plans/${widget.userId}');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        List<Map<String, dynamic>> studyPlans =
            List<Map<String, dynamic>>.from(json.decode(response.body));
        return groupByYearAndSemester(studyPlans);
      } else if (response.statusCode == 404) {
        // Handle case where there are no study plans available for the user
        return {};
      } else {
        throw Exception('Failed to load study plans');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to load study plans');
    }
  }

  Map<String, List<Map<String, dynamic>>> groupByYearAndSemester(
      List<Map<String, dynamic>> studyPlans) {
    Map<String, List<Map<String, dynamic>>> grouped = {};

    for (var plan in studyPlans) {
      String key = '${plan['year']} - ${plan['semester']}';
      if (!grouped.containsKey(key)) {
        grouped[key] = [];
      }
      grouped[key]!.add(plan);
    }

    return grouped;
  }

  Widget buildStudyPlanTable(List<Map<String, dynamic>> studyPlans) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.blue),
        dataRowColor: MaterialStateColor.resolveWith(
            (states) => Colors.blue.withOpacity(0.1)),
        dividerThickness: 1,
        columns: <DataColumn>[
          DataColumn(
            label: Center(
                child: Text('Subject Code',
                    style: TextStyle(color: Colors.white))),
          ),
          DataColumn(
            label: Text('Description', style: TextStyle(color: Colors.white)),
          ),
          DataColumn(
            label: Center(
                child: Text('Units', style: TextStyle(color: Colors.white))),
          ),
          DataColumn(
            label: Center(
                child: Text('Pre-requisite',
                    style: TextStyle(color: Colors.white))),
          ),
        ],
        rows: studyPlans
            .map((plan) => DataRow(cells: [
                  DataCell(
                      Center(child: Text(plan['subject_code'].toString()))),
                  DataCell(Text(plan['description'].toString(),
                      textAlign: TextAlign.center)),
                  DataCell(Center(child: Text('${plan['units']}'))),
                  DataCell(Center(child: Text(plan['pre_requisite'] ?? ''))),
                ]))
            .toList(),
      ),
    );
  }

  Widget buildYearAndSemesterSection(
      String yearAndSemester, List<Map<String, dynamic>> studyPlans) {
    num totalUnits = 0; // Use num type
    for (var plan in studyPlans) {
      totalUnits += plan['units']; // No need for explicit casting
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            yearAndSemester,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 8),
        Container(
          constraints: BoxConstraints(maxWidth: double.infinity),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: buildStudyPlanTable(studyPlans),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Total Units: $totalUnits',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Divider(color: Colors.grey),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Student Study Plan',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Times New Roman',
              color: Colors.white,
            ),
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
                color: Colors.black.withOpacity(0.5),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.lightBlue[50],
          child: RefreshIndicator(
            onRefresh: () async {
              setState(() {
                _futureStudentInfo = fetchStudentInfo();
                _futureStudyPlans = fetchStudyPlans();
              });
            },
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FutureBuilder<Map<String, dynamic>>(
                      future: _futureStudentInfo,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Center(
                              child: Text('Error: ${snapshot.error}'));
                        } else {
                          final studentInfo = snapshot.data!;
                          return Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Student Name: ${studentInfo['student_name']}',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Course: ${studentInfo['course_name']}',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Status: ${studentInfo['status']}',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 0),
                                Container(
                                  width: 400, // Adjust width as needed
                                  child: Divider(
                                    thickness: 2.0,
                                    // Adjust thickness as needed
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                    ),
                    FutureBuilder<Map<String, List<Map<String, dynamic>>>>(
                      future: _futureStudyPlans,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Center(
                              child: Text('Error: ${snapshot.error}'));
                        } else if (snapshot.data!.isEmpty) {
                          return Center(
                              child: Text('No study plans available'));
                        } else {
                          final studyPlansByYearAndSemester = snapshot.data!;
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: studyPlansByYearAndSemester.entries
                                .map((entry) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildYearAndSemesterSection(
                                      entry.key, entry.value),
                                  SizedBox(height: 30),
                                ],
                              );
                            }).toList(),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
