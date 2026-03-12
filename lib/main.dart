import 'package:flutter/material.dart';
import 'splash_screen_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Thai HOtline App",
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        fontFamily: 'Kanit',
      ),
      home: SplashScreenUi(),
    );
  }
}
