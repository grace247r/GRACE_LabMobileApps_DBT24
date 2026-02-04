import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'dashboard.dart';
import 'courses.dart';
import 'messages.dart';
import 'notification.dart';
import 'others.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login App',

      home: const LoginPage(),

      routes: {
        '/login': (context) => const LoginPage(),
        '/dashboard': (context) => const Dashboard(),
        '/courses':(context)=> const Courses(),
        '/messages': (context)=> const Messages(),
        '/notification': (context) => NotificationPage(),
        '/others' : (context) => Others()
      },
    );
  }
}
