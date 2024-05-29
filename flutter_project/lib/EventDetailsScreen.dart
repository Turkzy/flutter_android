import 'package:flutter/material.dart';

class EventDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> eventData;

  const EventDetailsScreen({Key? key, required this.eventData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/bg1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Row(
          children: [
            Image.asset(
              'lib/assets/logo.png',
              width: 80,
              height: 80,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                'NonChalant University',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 25,
                  fontFamily: 'Times New Roman',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              eventData['event_title'],
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Date: ${eventData['event_date']}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Text(
              eventData['event_description'],
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
