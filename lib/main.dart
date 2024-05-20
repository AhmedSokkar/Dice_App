import 'package:flutter/material.dart';
import 'package:roll_dice/Screen/home_screen.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(
        color1: Colors.deepPurple,
        color2: Color.fromARGB(255, 238, 15, 246),
      ),
    );
  }
}
