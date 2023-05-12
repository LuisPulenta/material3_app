import 'package:flutter/material.dart';
import 'package:material3_app/config/themes/themes.dart';
import 'package:material3_app/presentation/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material3 App',
      theme: AppTheme(selectedColor: 2).theme(),
      home: const ThemeConfigScreen(),
    );
  }
}
