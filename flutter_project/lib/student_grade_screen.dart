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

  // Adjusted refreshGrades to return Future<void>
  Future<void> refreshGrades() async {
    setState(() {
      _futureFirstYearGrades = fetchGrades('first-year');
      _futureSecondYearGrades = fetchGrades('second-year');
      _futureThirdYearGrades = fetchGrades('third-year');
      _futureFourthYearGrades = fetchGrades('fourth-year');
    });
  }

  Widget buildGradeTable(List<Map<String, dynamic>> grades) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: DataTable(
          headingRowColor: MaterialStateColor.resolveWith((states) => Colors.blue),
          dataRowColor: MaterialStateColor.resolveWith((states) => Colors.blue.withOpacity(0.1)),
          border: TableBorder.all(width: 1, color: Colors.grey),
          columns: <DataColumn>[
            DataColumn(
              label: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text('Subject Code', style: TextStyle(color: Colors.white)),
              ),
            ),
            DataColumn(
              label: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text('Description', style: TextStyle(color: Colors.white)),
              ),
            ),
            DataColumn(
              label: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text('Units', style: TextStyle(color: Colors.white)),
              ),
            ),
            DataColumn(
              label: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text('Course Grade', style: TextStyle(color: Colors.white)),
              ),
            ),
            DataColumn(
              label: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text('Remarks', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
          rows: grades
              .map((grade) => DataRow(
            cells: [
              DataCell(
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Text(grade['subject_code'].toString()),
                ),
              ),
              DataCell(
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(grade['description'].toString()),
                ),
              ),
              DataCell(
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('${grade['units']}'),
                ),
              ),
              DataCell(
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(grade['course_grade'].toString()),
                ),
              ),
              DataCell(
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    grade['remarks']?.toString() ?? '',
                    style: TextStyle(
                      color: grade['remarks'] == 'Passed' ? Colors.green : (grade['remarks'] == null || grade['remarks'].isEmpty) ? Colors.black : Colors.red,
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



  Widget buildSemesterSection(String semester, List<Map<String, dynamic>> grades) {
    if (grades.isEmpty) {
      return Center(
      );
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
      ],
    );
  }

  Widget buildYearGradeSection(
      String year, Future<Map<String, List<Map<String, dynamic>>>> futureGrades) {
    return FutureBuilder<Map<String, List<Map<String, dynamic>>>>(
      future: futureGrades,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.data!.isEmpty) {
          return Center(child: Text('No grades available for $year'));
        } else {
          final gradesBySemester = snapshot.data!;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$year Grades',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 0),
              buildSemesterSection('1st Semester', gradesBySemester['1st Semester']!),
              SizedBox(height: 16),
              buildSemesterSection('2nd Semester', gradesBySemester['2nd Semester']!),
              SizedBox(height: 16),
              buildSemesterSection('Summer Semester', gradesBySemester['Summer Semester']!),
              SizedBox(height: 100),
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
          iconTheme: IconThemeData(color: Colors.white), // Set back button color
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
    child: InteractiveViewer(
    constrained: true,
    scaleEnabled: true,
    minScale: 0.1,
    maxScale: 4.0,
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
      ),
    );
  }
}
