import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'student_info_screen.dart';
import 'student_schedule_screen.dart';
import 'student_grade_screen.dart';
import 'student_study_plan_screen.dart';

class ChatBotScreen extends StatefulWidget {
  final String userId;

  ChatBotScreen({required this.userId});

  @override
  _ChatBotScreenState createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  FlutterTts flutterTts = FlutterTts();
  String botMessage = 'What is your concern about?.... Student Info?, Student Schedule?, Student Grade?, Student Study Plan?';
  String selectedOption = '';

  @override
  void initState() {
    super.initState();
    speak(botMessage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Bot'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                handleOptionSelection('student info');
              },
              child: Text('Student Info'),
            ),
            ElevatedButton(
              onPressed: () {
                handleOptionSelection('student schedule');
              },
              child: Text('Student Schedule'),
            ),
            ElevatedButton(
              onPressed: () {
                handleOptionSelection('student grade');
              },
              child: Text('Student Grade'),
            ),
            ElevatedButton(
              onPressed: () {
                handleOptionSelection('student study plan');
              },
              child: Text('Student Study Plan'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1);
    await flutterTts.setSpeechRate(0.5); // Adjust speech rate here (e.g., 0.5 for slower speech)
    await flutterTts.speak(text);
  }

  void handleOptionSelection(String option) {
    setState(() {
      selectedOption = option;
    });
    // Provide corresponding response based on the selected option
    switch (option) {
      case 'student info':
        speak('You selected student info.');
        // Navigate to student info screen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StudentInfoScreen(userId: widget.userId),
          ),
        );
        break;
      case 'student schedule':
        speak('You selected student schedule.');
        // Navigate to student schedule screen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StudentScheduleScreen(userId: widget.userId),
          ),
        );
        break;
      case 'student grade':
        speak('You selected student grade.');
        // Navigate to student grade screen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StudentGradeScreen(userId: widget.userId),
          ),
        );
        break;
      case 'student study plan':
        speak('You selected student study plan.');
        // Navigate to student study plan screen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StudentStudyPlanScreen(userId: widget.userId),
          ),
        );
        break;
      default:
        speak('Invalid option selected.');
        break;
    }
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
}
