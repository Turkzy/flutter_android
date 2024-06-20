import 'package:flutter/material.dart';

class StudentChecklistScreen extends StatelessWidget {
  final String userId;

  StudentChecklistScreen({required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Checklist'),
      ),
      body: Center(
        child: Text(
          'Displaying checklist for user ID: $userId',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
