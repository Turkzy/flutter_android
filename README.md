Import the SQL first before running the backend server

Steps:
- Download the SQL folder containing the SQL info of each students.
- run the xampp controller and go to localhost/phpmyadmin/
- Import the flutter SQL and name it flutter to import all sql. if there is existing database flutter..inside try to import the sql(course,events, gradefirstyr, gradesecondyr, gradethirdyr, gradefourthyr, schedule, students, study_plan).



Run the backend Server

Steps:
- Download the backend folder
- Open VS Code
- Open the backend folder and try to run by typing npm start at the terminal (upon sucessfull it will show at the terminal "All models were synchronized successfully.")



Run the frontend

Steps:
- Download the flutter_project
- Open Android Studio
- Open the flutter_project
- Open terminal by pressing alt+f12 or (at the top menu click VIEW and TOOL WINDOWS and find the TERMINAL)
- type flutter run at the terminal. or just click the Run (main.dart) at the top


to make it work just change the hardcoded IPADDRESS

STEPS:
- Open CMD at your computer and type ipconfig and copy the IPv4 Address. . . . . . . . . . . : 192.168.254.103 (Note: Only 192.168.254.103)
  
In the flutter_project
- main.dart Line 241 change the ipaddress (Uri.parse('http://192.168.254.103:5000/login'),)  THIS IS FOR LOGIN
- dashboart_screen.dart Line 45(Uri.parse('http://192.168.254.103:5000/students/${widget.userId}/info'), and Line 66 Uri.parse('http://192.168.254.103:5000/events')) THIS IS FOR EVENT CALENDAR
- student_grade_screen.dart Line 38 (final url = Uri.parse('http://192.168.254.108:5000/grades/$year/${widget.userId}');), and Line 71 (final url = Uri.parse('http://192.168.254.108:5000/students/${widget.userId}/info');)
- student_info_screen.dart Line 25 (final url = Uri.parse('http://192.168.254.103:5000/students/${widget.userId}/info');)
- student_schedule_screen.dart Line 25 (final url = Uri.parse('http://192.168.254.103:5000/schedules/${widget.userId}');)
- student_study_plan_screen.dart Line 28 ( final url = Uri.parse('http://192.168.254.108:5000/students/${widget.userId}/info');), and Line 46 ( final url = Uri.parse('http://192.168.254.108:5000/study-plans/${widget.userId}');)
- student_checklist_screen.dart Line 32 (final url = Uri.parse('http://192.168.254.108:5000/students/${widget.userId}/info');), and Line 50 (final url = Uri.parse('http://192.168.254.108:5000/checklist/${widget.userId}');)
- after change all the IPADDRESS you may now run it Thank you!


#VERSION USED#
- Android Studio - Runtime Version 17.0.10+0--11572160 amd64
- VS Code - Version 1.90.1
- Flutter - 3.22.0
