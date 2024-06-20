import flutter sql on phpmyadmin database name is flutter.

/* RUN THE BACKEND*/
-open xampp run apache and mysql
-open vs code and run the backend by typing on terminal (npm start)

/* RUN THE ANDROID APK*/
-copy the file flutter_project into the directory of your Android Studio for SDK.
-open CMD on your computer and type (ipconfig and copy the "IPv4 Address. . . . . . . . . . . : 192.168.61.120")
-after copying the ip address paste it on code in android studion before running.
-main.dart change the ip on line 81("Uri.parse('http://192.168.61.120:5000/login'),") to make login function
-dashboard_screen.dart change the ip on line 38 ("await http.get(Uri.parse('http://192.168.61.120:5000/events'));") to fetch the events
-open the file in Android Studio and run thru web or APK.
