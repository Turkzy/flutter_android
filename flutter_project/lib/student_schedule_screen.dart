import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StudentScheduleScreen extends StatefulWidget {
  final String userId;

  StudentScheduleScreen({required this.userId});

  @override
  _StudentScheduleScreenState createState() => _StudentScheduleScreenState();
}

class _StudentScheduleScreenState extends State<StudentScheduleScreen> {
  late Future<List<List<Map<String, dynamic>>>> _futureSchedules;

  @override
  void initState() {
    super.initState();
    _futureSchedules = fetchSchedules();
  }

  Future<List<List<Map<String, dynamic>>>> fetchSchedules() async {
    final url =
        Uri.parse('http://192.168.254.108:5000/schedules/${widget.userId}');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        List<Map<String, dynamic>> schedules =
            List<Map<String, dynamic>>.from(json.decode(response.body));

        // Sort schedules by year and semester
        schedules.sort((a, b) {
          // Compare years first
          int yearComparison = a['year'].compareTo(b['year']);
          if (yearComparison != 0) {
            return yearComparison;
          }

          // If years are the same, compare semesters
          List<String> semesterOrder = [
            '1st semester',
            '2nd semester',
            'summer semester'
          ];
          int semesterIndexA = semesterOrder.indexOf(a['semester']);
          int semesterIndexB = semesterOrder.indexOf(b['semester']);

          return semesterIndexA.compareTo(semesterIndexB);
        });

        // Group schedules by year and semester
        Map<String, Map<String, List<Map<String, dynamic>>>> groupedSchedules =
            {};

        schedules.forEach((schedule) {
          String year = schedule['year'];
          String semester = schedule['semester'];

          if (!groupedSchedules.containsKey(year)) {
            groupedSchedules[year] = {};
          }

          if (!groupedSchedules[year]!.containsKey(semester)) {
            groupedSchedules[year]![semester] = [];
          }

          groupedSchedules[year]![semester]!.add(schedule);
        });

        // Sort schedules by description within each semester
        groupedSchedules.forEach((year, semesters) {
          semesters.forEach((semester, schedules) {
            schedules
                .sort((a, b) => a['description'].compareTo(b['description']));
          });
        });

        // Convert to list format for easy access in UI
        List<List<Map<String, dynamic>>> result = [];
        groupedSchedules.forEach((year, semesters) {
          List<Map<String, dynamic>> yearSchedules = [];
          semesters.forEach((semester, schedules) {
            yearSchedules.add({'semester': semester, 'schedules': schedules});
          });
          result.add(yearSchedules);
        });

        return result;
      } else {
        throw Exception('Failed to load schedules');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to load schedules');
    }
  }

  Future<void> refreshSchedules() async {
    setState(() {
      _futureSchedules = fetchSchedules();
    });
  }

  String getOrdinal(int number) {
    if (number % 100 >= 11 && number % 100 <= 13) {
      return '${number}th';
    }
    switch (number % 10) {
      case 1:
        return '${number}st';
      case 2:
        return '${number}nd';
      case 3:
        return '${number}rd';
      default:
        return '${number}th';
    }
  }

  Widget buildScheduleTable(List<List<Map<String, dynamic>>> schedules) {
    return ListView.builder(
      itemCount: schedules.length,
      itemBuilder: (context, index) {
        List<Map<String, dynamic>> yearSchedules = schedules[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                '${getOrdinal(index + 1)} Year Schedules',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Times New Roman'),
              ),
            ),
            for (var i = 0; i < yearSchedules.length; i++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    margin:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              yearSchedules[i]['semester'],
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(
                            columns: [
                              DataColumn(
                                  label: Text('Subject Code',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold))),
                              DataColumn(
                                  label: Text('Description',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold))),
                              DataColumn(
                                  label: Text('Day',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold))),
                              DataColumn(
                                  label: Text('Time',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold))),
                              DataColumn(
                                  label: Text('Room',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold))),
                              DataColumn(
                                  label: Text('Faculty',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold))),
                              DataColumn(
                                  label: Text('Class Type',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold))),
                            ],
                            rows: yearSchedules[i]['schedules']
                                .map<DataRow>((schedule) {
                              return DataRow(cells: [
                                DataCell(
                                    Text(schedule['subject_code'].toString())),
                                DataCell(
                                    Text(schedule['description'].toString())),
                                DataCell(Text(schedule['day'].toString())),
                                DataCell(Text(schedule['time'].toString())),
                                DataCell(Text(schedule['room'].toString())),
                                DataCell(Text(schedule['faculty'].toString())),
                                DataCell(
                                    Text(schedule['class_type'].toString())),
                              ]);
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (i < yearSchedules.length - 1) SizedBox(height: 16),
                  // Add SizedBox between semesters except for the last one
                ],
              ),
            SizedBox(height: 100),
            // Adjust the final SizedBox height as per your requirement
          ],
        );
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
            'Student Schedule',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
                color: Colors.white),
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
            onRefresh: refreshSchedules,
            child: FutureBuilder<List<List<Map<String, dynamic>>>>(
              future: _futureSchedules,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text('No schedule available'));
                } else {
                  return buildScheduleTable(snapshot.data!);
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
