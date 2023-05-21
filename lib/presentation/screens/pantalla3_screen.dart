import 'package:flutter/material.dart';

class Pantalla3Screen extends StatelessWidget {
  const Pantalla3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla3Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Pantalla3Screen'),
      ),
    );
  }
}
