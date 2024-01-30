import 'package:flutter/material.dart';
import 'package:navigation/animate_widget_across_screens/main_screen.dart';

void main() {
  runApp(const HeroApp());
}

class HeroApp extends StatelessWidget {
  const HeroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Transition Demo",
      home: MainScreen(),
    );
  }
}
