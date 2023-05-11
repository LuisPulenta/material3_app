import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material3 App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material3 App'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Hello Material3'),
        ),
      ),
    );
  }
}
