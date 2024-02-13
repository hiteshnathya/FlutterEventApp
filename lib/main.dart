import 'package:flutter/material.dart';
import 'package:local_event_app/Homepage/HomePageScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Local Event ',
      theme: ThemeData(primaryColor: Color(0xFF2A0A89),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

