import 'package:flutter/material.dart';

class ChatBotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Bot'),
      ),
      body: Center(
        child: Text(
          'Chat Bot Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
