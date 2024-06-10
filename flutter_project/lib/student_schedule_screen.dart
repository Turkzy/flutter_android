import 'package:flutter/material.dart';

class StudentScheduleScreen extends StatelessWidget {
  final String userId;

  StudentScheduleScreen({required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Schedule'),
      ),
      body: Center(
        child: Text(
          'Displaying schedule for user ID: $userId',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
