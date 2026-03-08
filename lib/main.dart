import 'package:flutter/material.dart';
import 'package:nequi/screen/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Nequi Colombia',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// LoginScreen(),