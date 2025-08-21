// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/app_theme.dart';
import 'package:flutter_app/widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gaming App',
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
