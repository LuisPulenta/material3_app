import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material3_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: CustomButton(
          color: colors.inversePrimary,
          text: 'Configuración',
          icon: Icons.settings,
          onPressed: () {
            context.push('/theme');
          },
        ),
      ),
    );
  }
}
