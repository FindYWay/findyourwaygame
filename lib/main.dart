import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const FindYourWayApp());
}

class FindYourWayApp extends StatelessWidget {
  const FindYourWayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find Your Way - AIESEC Quiz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
