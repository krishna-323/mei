import 'package:flutter/material.dart';
import 'package:mei/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mei',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
          fontFamily: "TitilliumWeb"
      ),
      home: const LoginScreen(),
    );
  }
}

