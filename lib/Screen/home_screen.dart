import 'package:flutter/material.dart';
import 'package:roll_dice/components/col_dice.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.color1, required this.color2});
  final Color color1;
  final Color color2;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [widget.color1, widget.color2],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Dice(),
      ),
    );
  }
}
