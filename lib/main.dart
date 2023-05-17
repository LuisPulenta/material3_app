import 'package:flutter/material.dart';
import 'package:material3_app/config/routers/app_router.dart';
import 'package:material3_app/config/themes/themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'Material3 App',
      theme: AppTheme(selectedColor: 2).theme(),
    );
  }
}
