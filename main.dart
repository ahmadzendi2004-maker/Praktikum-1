import 'package:flutter/material.dart';
import 'umum/home.dart';

void main() {
  runApp(const HealthHubApp());
}

class HealthHubApp extends StatelessWidget {
  const HealthHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HealthHub',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFF7FF),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}