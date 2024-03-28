import 'package:eric_dearing/homePage.dart';
import 'package:eric_dearing/resumePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      /*initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        "/resume": (context) => const ResumePage()
      },*/
    );
  }
}
