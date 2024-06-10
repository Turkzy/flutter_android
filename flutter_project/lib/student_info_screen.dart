import 'package:flutter/material.dart';

class StudentInfoScreen extends StatelessWidget {
  final String userId;

  StudentInfoScreen({required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Info'),
      ),
      body: Center(
        child: Text(
          'Displaying info for user ID: $userId',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
