import 'package:chats_app/screens/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat App UI Design",
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: StartScreen(),
    );
  }
}
