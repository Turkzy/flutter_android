import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StudentChecklistScreen extends StatefulWidget {
  final String userId;

  StudentChecklistScreen({required this.userId});

  @override
  _StudentChecklistScreenState createState() => _StudentChecklistScreenState();
}

class _StudentChecklistScreenState extends State<StudentChecklistScreen> {
  late Future<Map<String, dynamic>> _futureStudentInfo;
  late Future<Map<String, List<Map<String, dynamic>>>> _futureStudyPlans;

  // State variables for overall totals
  num totalOverallUnits = 0;
  num totalOverallLec = 0;
  num totalOverallLab = 0;

  @override
  void initState() {
    super.initState();
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
        Uri.parse('http://192.168.254.108:5000/checklist/${widget.userId}');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        List<Map<String, dynamic>> studyPlans =
            List<Map<String, dynamic>>.from(json.decode(response.body));

        // Calculate overall totals
        setState(() {
          calculateOverallTotals(studyPlans);
        });

        return groupByYearAndSemester(studyPlans);
      } else if (response.statusCode == 404) {
        return {};
      } else {
        throw Exception('Failed to load checklist');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to load checklist');
    }
  }

  void calculateOverallTotals(List<Map<String, dynamic>> studyPlans) {
    totalOverallUnits = 0;
    totalOverallLec = 0;
    totalOverallLab = 0;

    for (var plan in studyPlans) {
      totalOverallUnits += int.tryParse(plan['units'].toString()) ?? 0;
      totalOverallLec += int.tryParse(plan['lec'].toString()) ?? 0;
      totalOverallLab += int.tryParse(plan['lab'].toString()) ?? 0;
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

  double calculateGWA(List<Map<String, dynamic>> studyPlans) {
    double totalWeightedScore = 0.0;
    double totalUnits = 0.0;

    for (var plan in studyPlans) {
      int units = int.tryParse(plan['units'].toString()) ?? 0;
      double grade = double.tryParse(plan['grade'].toString()) ?? 0.0;

      totalWeightedScore += units * grade;
      totalUnits += units;
    }

    if (totalUnits > 0) {
      return totalWeightedScore / totalUnits;
    } else {
      return 0.0;
    }
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
                child: Text('Lec', style: TextStyle(color: Colors.white))),
          ),
          DataColumn(
            label: Center(
                child: Text('Lab', style: TextStyle(color: Colors.white))),
          ),
          DataColumn(
            label: Center(
                child: Text('Grade', style: TextStyle(color: Colors.white))),
          ),
        ],
        rows: buildDataRows(studyPlans),
      ),
    );
  }

  List<DataRow> buildDataRows(List<Map<String, dynamic>> studyPlans) {
    List<DataRow> dataRows = studyPlans
        .map((plan) => DataRow(cells: [
              DataCell(Center(child: Text(plan['subject_code'].toString()))),
              DataCell(Text(plan['description'].toString(),
                  textAlign: TextAlign.center)),
              DataCell(Center(child: Text('${plan['units']}'))),
              DataCell(Center(child: Text(plan['lec'] ?? ''))),
              DataCell(Center(child: Text(plan['lab'] ?? ''))),
              DataCell(Center(child: Text(plan['grade'] ?? ''))),
            ]))
        .toList();

    return dataRows;
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
            'Student Checklist',
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
                                  'User ID: ${studentInfo['user_id']}',
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
                                SizedBox(height: 10),
                                Container(
                                  width: 400,
                                  child: Divider(
                                    thickness: 2.0,
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
                          return Center(child: Text('No checklist available'));
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
                    // Display overall totals
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Total no. of: ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Units: $totalOverallUnits',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Lec: $totalOverallLec',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Lab: $totalOverallLab',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
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

  Widget buildYearAndSemesterSection(
      String yearAndSemester, List<Map<String, dynamic>> studyPlans) {
    num totalUnits = 0;
    num totalLec = 0;
    num totalLab = 0;

    // Calculate totals and accumulate them
    for (var plan in studyPlans) {
      totalUnits += int.tryParse(plan['units'].toString()) ?? 0;
      totalLec += int.tryParse(plan['lec'].toString()) ?? 0;
      totalLab += int.tryParse(plan['lab'].toString()) ?? 0;
    }

    double gwa = 0.0;
    if (totalUnits > 0) {
      gwa = calculateGWA(studyPlans);
    }

    List<DataRow> dataRows = studyPlans
        .map((plan) => DataRow(cells: [
              DataCell(Center(child: Text(plan['subject_code'].toString()))),
              DataCell(Text(plan['description'].toString(),
                  textAlign: TextAlign.center)),
              DataCell(Center(child: Text('${plan['units']}'))),
              DataCell(Center(child: Text(plan['lec'] ?? ''))),
              DataCell(Center(child: Text(plan['lab'] ?? ''))),
              DataCell(Center(child: Text(plan['grade'] ?? ''))),
            ]))
        .toList();

    // Add a new DataRow for totals
    dataRows.add(DataRow(cells: [
      DataCell(Text('Total', style: TextStyle(fontWeight: FontWeight.bold))),
      DataCell(Text('')),
      DataCell(Center(
          child: Text('$totalUnits',
              style: TextStyle(fontWeight: FontWeight.bold)))),
      DataCell(Center(
          child: Text('$totalLec',
              style: TextStyle(fontWeight: FontWeight.bold)))),
      DataCell(Center(
          child: Text('$totalLab',
              style: TextStyle(fontWeight: FontWeight.bold)))),
      DataCell(Text('')), // Placeholder for 'Grade' column
    ]));

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
                      label: Text('Description',
                          style: TextStyle(color: Colors.white)),
                    ),
                    DataColumn(
                      label: Center(
                          child: Text('Units',
                              style: TextStyle(color: Colors.white))),
                    ),
                    DataColumn(
                      label: Center(
                          child: Text('Lec',
                              style: TextStyle(color: Colors.white))),
                    ),
                    DataColumn(
                      label: Center(
                          child: Text('Lab',
                              style: TextStyle(color: Colors.white))),
                    ),
                    DataColumn(
                      label: Center(
                          child: Text('Grade',
                              style: TextStyle(color: Colors.white))),
                    ),
                  ],
                  rows: dataRows,
                ),
              ),
              Divider(color: Colors.grey),
              if (totalUnits > 0)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'GWA: ${gwa.toStringAsFixed(2)}',
                    // Display GWA rounded to two decimal places
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
