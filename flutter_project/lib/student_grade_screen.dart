import 'package:flutter/material.dart';

class StudentGradeScreen extends StatelessWidget {
  final String userId;

  StudentGradeScreen({required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Grade'),
      ),
      body: Center(
        child: Text(
          'Displaying grades for user ID: $userId',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
