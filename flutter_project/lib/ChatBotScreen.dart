import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:http/http.dart' as http;
import 'student_info_screen.dart';
import 'student_schedule_screen.dart';
import 'student_grade_screen.dart';
import 'student_study_plan_screen.dart';
import 'student_checklist_screen.dart';

class ChatBotScreen extends StatefulWidget {
  final String userId;

  ChatBotScreen({required this.userId});

  @override
  _ChatBotScreenState createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen>
    with TickerProviderStateMixin {
  FlutterTts flutterTts = FlutterTts();
  final List<Map<String, String>> messages = [];
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  bool optionsDisplayed = false;
  bool isRegular = true;

  @override
  void initState() {
    super.initState();
    addMessage('bot', 'Hi.');
    speak('Hi.');
    fetchStudentStatus();
  }

  Future<void> fetchStudentStatus() async {
    final response = await http.get(Uri.parse(
        'http://192.168.254.108:5000/students/${widget.userId}/info'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        isRegular = data['status'] == 'Regular';
      });
    } else {
      print('Failed to load student status');
    }
  }

  void addMessage(String sender, String message) {
    final messageData = {'sender': sender, 'message': message};
    messages.add(messageData);
    _listKey.currentState?.insertItem(messages.length - 1);
    if (sender == 'bot') {
      speak(message);
    }
  }

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(text);
  }

  void handleUserMessage(String message) {
    if (message.trim().isEmpty) return;

    addMessage('user', message);
    _controller.clear();

    String lowerCaseMessage = message.toLowerCase();

    if (lowerCaseMessage == 'hello' || lowerCaseMessage == 'hi') {
      addMessage('bot', 'How can I help you? Please select an option:');
      setState(() {
        optionsDisplayed = true;
      });
    } else {
      addMessage('bot', 'Sorry, I only respond to "Hi & Hello".');
    }
  }

  void handleOptionSelection(String option) {
    addMessage('bot', 'You selected $option.');

    switch (option) {
      case 'student info':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StudentInfoScreen(userId: widget.userId),
          ),
        );
        break;
      case 'student schedule':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StudentScheduleScreen(userId: widget.userId),
          ),
        );
        break;
      case 'student grade':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StudentGradeScreen(userId: widget.userId),
          ),
        );
        break;
      case 'student study plan':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StudentStudyPlanScreen(userId: widget.userId),
          ),
        );
        break;
      case 'student checklist':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StudentChecklistScreen(userId: widget.userId),
          ),
        );
        break;
      default:
        addMessage('bot', 'Invalid option selected.');
        break;
    }
  }

  @override
  void dispose() {
    flutterTts.stop();
    _controller.dispose();
    super.dispose();
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
          title: Row(
            children: [
              Text(
                'Chat Bot',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          toolbarHeight: 60,
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
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/bgchatbot.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
            ),
            Column(
              children: [
                Expanded(
                  child: AnimatedList(
                    key: _listKey,
                    initialItemCount: messages.length,
                    itemBuilder: (context, index, animation) {
                      final message = messages[index];
                      final isBot = message['sender'] == 'bot';
                      return SizeTransition(
                        sizeFactor: animation,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: isBot
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.end,
                            children: [
                              if (isBot) ...[
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("lib/assets/bot_profile.jpg"),
                                ),
                                SizedBox(width: 10),
                              ],
                              Flexible(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  decoration: BoxDecoration(
                                    color: isBot
                                        ? Colors.grey[300]
                                        : Colors.blue[300],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    message['message']!,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color:
                                          isBot ? Colors.black : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              if (!isBot) ...[
                                SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("lib/assets/user_profile.png"),
                                ),
                              ],
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                if (optionsDisplayed &&
                    messages.isNotEmpty &&
                    messages.last['message'] ==
                        'How can I help you? Please select an option:')
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: [
                        ElevatedButton(
                          onPressed: () =>
                              handleOptionSelection('student info'),
                          child: Text(
                            'Student Info',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () =>
                              handleOptionSelection('student schedule'),
                          child: Text(
                            'Student Schedule',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () =>
                              handleOptionSelection('student grade'),
                          child: Text(
                            'Student Grade',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        if (!isRegular)
                          ElevatedButton(
                            onPressed: () =>
                                handleOptionSelection('student study plan'),
                            child: Text(
                              'Student Study Plan',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ElevatedButton(
                          onPressed: () =>
                              handleOptionSelection('student checklist'),
                          child: Text(
                            'Student Checklist',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _controller,
                          enabled: !optionsDisplayed,
                          decoration: InputDecoration(
                            hintText: optionsDisplayed
                                ? 'Options displayed'
                                : 'Type your message here...',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.3),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                          ),
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          onSubmitted: handleUserMessage,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.send, color: Colors.white),
                        onPressed: () {
                          handleUserMessage(_controller.text);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
