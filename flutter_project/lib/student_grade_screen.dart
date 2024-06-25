import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StudentGradeScreen extends StatefulWidget {
  final String userId;

  StudentGradeScreen({required this.userId});

  @override
  _StudentGradeScreenState createState() => _StudentGradeScreenState();
}

class _StudentGradeScreenState extends State<StudentGradeScreen> {
  late Future<Map<String, List<Map<String, dynamic>>>> _futureFirstYearGrades;
  late Future<Map<String, List<Map<String, dynamic>>>> _futureSecondYearGrades;
  late Future<Map<String, List<Map<String, dynamic>>>> _futureThirdYearGrades;
  late Future<Map<String, List<Map<String, dynamic>>>> _futureFourthYearGrades;

  late Future<Map<String, dynamic>> _futureStudentInfo; // New state variable

  @override
  void initState() {
    super.initState();
    // Initialize future grades data
    _futureFirstYearGrades = fetchGrades('first-year');
    _futureSecondYearGrades = fetchGrades('second-year');
    _futureThirdYearGrades = fetchGrades('third-year');
    _futureFourthYearGrades = fetchGrades('fourth-year');

    // Initialize future student information
    _futureStudentInfo = fetchStudentInfo();
  }

  Future<Map<String, List<Map<String, dynamic>>>> fetchGrades(
      String year) async {
    final url =
        Uri.parse('http://192.168.254.108:5000/grades/$year/${widget.userId}');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        List<Map<String, dynamic>> grades =
            List<Map<String, dynamic>>.from(json.decode(response.body));
        return {
          '1st Semester': grades
              .where((grade) => grade['semester'] == '1st semester')
              .toList(),
          '2nd Semester': grades
              .where((grade) => grade['semester'] == '2nd semester')
              .toList(),
          'Summer Semester': grades
              .where((grade) => grade['semester'] == 'summer semester')
              .toList(),
        };
      } else if (response.statusCode == 404) {
        // Handle case where there are no grades available for the year
        return {};
      } else {
        throw Exception('Failed to load grades');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to load grades');
    }
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

  // Adjusted refreshGrades to return Future<void>
  Future<void> refreshGrades() async {
    setState(() {
      _futureFirstYearGrades = fetchGrades('first-year');
      _futureSecondYearGrades = fetchGrades('second-year');
      _futureThirdYearGrades = fetchGrades('third-year');
      _futureFourthYearGrades = fetchGrades('fourth-year');
    });
  }

  double calculateGWA(List<Map<String, dynamic>> grades) {
    double totalWeightedGrades = 0.0;
    int totalUnits = 0;

    for (var grade in grades) {
      double courseGrade =
          double.tryParse(grade['course_grade'].toString()) ?? 0.0;
      int units = int.tryParse(grade['units'].toString()) ?? 0;
      totalWeightedGrades += courseGrade * units;
      totalUnits += units;
    }

    return totalUnits > 0 ? totalWeightedGrades / totalUnits : 0.0;
  }

  double calculateOverallGWA(
      List<Map<String, List<Map<String, dynamic>>>> allGrades) {
    double totalWeightedGrades = 0.0;
    int totalUnits = 0;

    for (var gradesByYear in allGrades) {
      for (var grades in gradesByYear.values) {
        totalWeightedGrades +=
            calculateGWA(grades) * calculateTotalUnits(grades);
        totalUnits += calculateTotalUnits(grades);
      }
    }

    return totalUnits > 0 ? totalWeightedGrades / totalUnits : 0.0;
  }

  int calculateTotalUnits(List<Map<String, dynamic>> grades) {
    int totalUnits = 0;

    for (var grade in grades) {
      int units = int.tryParse(grade['units'].toString()) ?? 0;
      totalUnits += units;
    }

    return totalUnits;
  }

  Widget buildGradeTable(List<Map<String, dynamic>> grades) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: DataTable(
          headingRowColor:
              MaterialStateColor.resolveWith((states) => Colors.blue),
          dataRowColor: MaterialStateColor.resolveWith(
              (states) => Colors.blue.withOpacity(0.1)),
          border: TableBorder.all(width: 1, color: Colors.grey),
          columns: <DataColumn>[
            DataColumn(
              label: Center(
                child:
                    Text('Subject Code', style: TextStyle(color: Colors.white)),
              ),
            ),
            DataColumn(
              label: Center(
                child:
                    Text('Description', style: TextStyle(color: Colors.white)),
              ),
            ),
            DataColumn(
              label: Center(
                child: Text('Units', style: TextStyle(color: Colors.white)),
              ),
            ),
            DataColumn(
              label: Center(
                child:
                    Text('Course Grade', style: TextStyle(color: Colors.white)),
              ),
            ),
            DataColumn(
              label: Center(
                child: Text('Remarks', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
          rows: grades
              .map((grade) => DataRow(
                    cells: [
                      DataCell(
                        Center(
                          child: Text(
                            grade['subject_code'].toString(),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          grade['description'].toString(),
                        ),
                      ),
                      DataCell(
                        Center(
                          child: Text(
                            '${grade['units']}',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      DataCell(
                        Center(
                          child: Text(
                            grade['course_grade'].toString(),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      DataCell(
                        Center(
                          child: Text(
                            grade['remarks']?.toString() ?? '',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: grade['remarks'] == 'Passed'
                                  ? Colors.green
                                  : (grade['remarks'] == null ||
                                          grade['remarks'].isEmpty)
                                      ? Colors.black
                                      : Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }

  Widget buildSemesterSection(
      String semester, List<Map<String, dynamic>> grades, double gwa) {
    if (grades.isEmpty) {
      return SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            semester,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 8),
        Container(
          constraints: BoxConstraints(maxWidth: double.infinity),
          child: buildGradeTable(grades),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'GWA: ${gwa.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Divider(color: Colors.grey),
      ],
    );
  }

  Widget buildYearGradeSection(String year,
      Future<Map<String, List<Map<String, dynamic>>>> futureGrades) {
    return FutureBuilder<Map<String, List<Map<String, dynamic>>>>(
      future: futureGrades,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.data!.isEmpty) {
          return SizedBox.shrink();
        } else {
          final gradesBySemester = snapshot.data!;
          final gwa1stSemester =
              calculateGWA(gradesBySemester['1st Semester']!);
          final gwa2ndSemester =
              calculateGWA(gradesBySemester['2nd Semester']!);
          final gwaSummerSemester =
              calculateGWA(gradesBySemester['Summer Semester']!);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$year Grades',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 0),
              buildSemesterSection('1st Semester',
                  gradesBySemester['1st Semester']!, gwa1stSemester),
              SizedBox(height: 16),
              buildSemesterSection('2nd Semester',
                  gradesBySemester['2nd Semester']!, gwa2ndSemester),
              SizedBox(height: 16),
              buildSemesterSection('Summer Semester',
                  gradesBySemester['Summer Semester']!, gwaSummerSemester),
              SizedBox(height: 100),
              Divider(color: Colors.black),
            ],
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      // Wrap your Scaffold with Theme to customize AppBar
      data: Theme.of(context).copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent, // Transparent background
          elevation: 0, // No shadow
          iconTheme:
              IconThemeData(color: Colors.white), // Set back button color
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                'Student Grades',
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
        body: Container(
          color: Colors.lightBlue[50], // Light blue background color
          child: RefreshIndicator(
            onRefresh: refreshGrades,
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
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Student Name: ${studentInfo['student_name']}',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Course: ${studentInfo['course_name']}',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Status: ${studentInfo['status']}',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 16),
                              Container(
                                width: double.infinity,
                                // Adjust width as needed
                                child: Divider(
                                  thickness: 2.0, // Adjust thickness as needed
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    ),
                    buildYearGradeSection('First Year', _futureFirstYearGrades),
                    buildYearGradeSection(
                        'Second Year', _futureSecondYearGrades),
                    buildYearGradeSection('Third Year', _futureThirdYearGrades),
                    buildYearGradeSection(
                        'Fourth Year', _futureFourthYearGrades),
                    FutureBuilder<
                        List<Map<String, List<Map<String, dynamic>>>>>(
                      future: Future.wait([
                        _futureFirstYearGrades,
                        _futureSecondYearGrades,
                        _futureThirdYearGrades,
                        _futureFourthYearGrades
                      ]),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Center(
                              child: Text('Error: ${snapshot.error}'));
                        } else {
                          final allGrades = snapshot.data!;
                          final overallGWA = calculateOverallGWA(allGrades);
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Overall GWA: ${overallGWA.toStringAsFixed(2)}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
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
