import 'package:flutter/material.dart';
import 'Navbar.dart'; // Import your custom Navbar widget

class AboutScreen extends StatelessWidget {
  final String userId;

  const AboutScreen({Key? key, required this.userId}) : super(key: key);

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
    drawer: Navbar(userId: userId), // Use your custom Navbar widget here
    body: Padding(
    padding: const EdgeInsets.all(20.0),
    child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'Nonchalant University',
    style: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 20),
    Text(
    'Nonchalant University is a leading institution of higher education dedicated to fostering academic excellence and personal growth. With a rich history spanning decades, Nonchalant University offers a diverse range of programs and resources to support the success of its students.',
    style: TextStyle(fontSize: 18),
    ),
    SizedBox(height: 50),
    Text(
    'Mission:',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 10),
    Text(
    "Our mission is to provide accessible and innovative education that empowers individuals to achieve their goals and make meaningful contributions to society. We are committed to fostering a diverse and inclusive community where students, faculty, and staff collaborate to create an environment that promotes lifelong learning, critical thinking, and personal growth. Through our dedication to excellence in teaching, research, and service, we strive to prepare our students to be engaged global citizens who are equipped to address the challenges of the 21st century.",
      style: TextStyle(fontSize: 18),
    ),
      SizedBox(height: 50),
      Text(
        'Vision:',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Text(
        "Our vision is to be a leading institution of higher education recognized for our commitment to academic excellence, student success, and community engagement. We aspire to cultivate a culture of creativity, curiosity, and innovation, where individuals are inspired to reach their full potential and make a positive impact in the world. By fostering a culture of lifelong learning and continuous improvement, we aim to be a catalyst for positive change and a model for educational excellence.",
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(height: 50),
      Text(
        'History:',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Text(
        "Founded in [year], Nonchalant University has a rich history of providing quality education and fostering academic excellence. Since our inception, we have remained dedicated to our mission of empowering individuals through accessible and innovative education. Over the years, we have evolved to meet the changing needs of our students and society, expanding our programs and resources to offer a diverse range of educational opportunities. Today, we continue to build upon our legacy of excellence, preparing our students to thrive in a rapidly changing world.",
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(height: 50),
      Text(
        'Faculty:',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Text(
        "Our faculty members are at the heart of our institution, bringing a wealth of knowledge, expertise, and passion to the classroom. Comprised of dedicated educators, researchers, and scholars, our faculty are committed to providing an exceptional learning experience for our students. With a focus on student success and engagement, our faculty members go above and beyond to inspire and mentor the next generation of leaders. Through their innovative teaching methods, cutting-edge research, and commitment to excellence, our faculty play a vital role in shaping the future of our institution and society.",
        style: TextStyle(fontSize: 18),
      ),
    ],
    ),
    ),
    ),
    );
  }
}

