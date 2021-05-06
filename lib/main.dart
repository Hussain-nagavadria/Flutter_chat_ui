import 'package:chat_app/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        primaryColor: Colors.red,
        accentColor: Color(0xFFFEF9EB),

      ),
      home: HomeScreen(),
    );
  }

}
