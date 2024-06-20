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
  late Future<Map<String, List<Map<String, dynamic>>>> _futureFirstYearGrades;
  late Future<Map<String, List<Map<String, dynamic>>>> _futureSecondYearGrades;
  late Future<Map<String, List<Map<String, dynamic>>>> _futureThirdYearGrades;
  late Future<Map<String, List<Map<String, dynamic>>>> _futureFourthYearGrades;

  @override
  void initState() {
    super.initState();
    // Initialize future grades data
    _futureFirstYearGrades = fetchGrades('first-year');
    _futureSecondYearGrades = fetchGrades('second-year');
    _futureThirdYearGrades = fetchGrades('third-year');
    _futureFourthYearGrades = fetchGrades('fourth-year');
  }

  Future<Map<String, List<Map<String, dynamic>>>> fetchGrades(String year) async {
    final url = Uri.parse('http://192.168.254.103:5000/grades/$year/${widget.userId}');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        List<Map<String, dynamic>> grades = List<Map<String, dynamic>>.from(json.decode(response.body));
        return {
          '1st Semester': grades.where((grade) => grade['semester'] == '1st semester').toList(),
          '2nd Semester': grades.where((grade) => grade['semester'] == '2nd semester').toList(),
          'Summer Semester': grades.where((grade) => grade['semester'] == 'summer semester').toList(),
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
      double courseGrade = double.tryParse(grade['course_grade'].toString()) ?? 0.0;
      int units = int.tryParse(grade['units'].toString()) ?? 0;
      totalWeightedGrades += courseGrade * units;
      totalUnits += units;
    }

    return totalUnits > 0 ? totalWeightedGrades / totalUnits : 0.0;
  }

  double calculateOverallGWA(List<Map<String, List<Map<String, dynamic>>>> allGrades) {
    double totalWeightedGrades = 0.0;
    int totalUnits = 0;

    for (var gradesByYear in allGrades) {
      for (var grades in gradesByYear.values) {
        for (var grade in grades) {
          double courseGrade = double.tryParse(grade['course_grade'].toString()) ?? 0.0;
          int units = int.tryParse(grade['units'].toString()) ?? 0;
          totalWeightedGrades += courseGrade * units;
          totalUnits += units;
        }
      }
    }

    return totalUnits > 0 ? totalWeightedGrades / totalUnits : 0.0;
  }

  Widget buildGradeTable(List<Map<String, dynamic>> grades) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor: MaterialStateColor.resolveWith((states) => Colors.blue),
        dataRowColor: MaterialStateColor.resolveWith((states) => Colors.blue.withOpacity(0.1)),
        dividerThickness: 1,
        columns: <DataColumn>[
          DataColumn(
            label: Text('Subject Code', style: TextStyle(color: Colors.white)),
          ),
          DataColumn(
            label: Text('Description', style: TextStyle(color: Colors.white)),
          ),
          DataColumn(
            label: Text('Units', style: TextStyle(color: Colors.white)),
          ),
        ],
        rows: grades
            .map((grade) => DataRow(cells: [
          DataCell(Text(grade['subject_code'].toString())),
          DataCell(Text(grade['description'].toString())),
          DataCell(Text('${grade['units']}')),
        ]))
            .toList(),
      ),
    );
  }

  Widget buildSemesterSection(String semester, List<Map<String, dynamic>> grades) {
    if (grades.isEmpty) {
      return SizedBox.shrink();
    }
    double gwa = calculateGWA(grades);
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

  Widget buildYearGradeSection(String year, Future<Map<String, List<Map<String, dynamic>>>> futureGrades) {
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
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$year Grades',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 8),
              buildSemesterSection('1st Semester', gradesBySemester['1st Semester']!),
              SizedBox(height: 16),
              buildSemesterSection('2nd Semester', gradesBySemester['2nd Semester']!),
              SizedBox(height: 16),
              buildSemesterSection('Summer Semester', gradesBySemester['Summer Semester']!),
              SizedBox(height: 20),
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
            onRefresh: refreshGrades,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    buildYearGradeSection('First Year', _futureFirstYearGrades),
                    buildYearGradeSection('Second Year', _futureSecondYearGrades),
                    buildYearGradeSection('Third Year', _futureThirdYearGrades),
                    buildYearGradeSection('Fourth Year', _futureFourthYearGrades),
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
