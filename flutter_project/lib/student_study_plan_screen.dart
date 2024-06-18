import 'package:flutter/material.dart';

class StudentStudyPlanScreen extends StatelessWidget {
  final String userId;

  StudentStudyPlanScreen({required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Study Plan'),
      ),
      body: Center(
        child: Text(
          'Displaying study plan for user ID: $userId',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
