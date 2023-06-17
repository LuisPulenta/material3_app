import 'package:flutter/material.dart';

class TextstylesScreen extends StatelessWidget {
  const TextstylesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estilos de Texto'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'bodySmall',
              style: textStyles.bodySmall,
            ),
            Text(
              'bodyMedium',
              style: textStyles.bodyMedium,
            ),
            Text(
              'bodyLarge',
              style: textStyles.bodyLarge,
            ),
            Text(
              'displaySmall',
              style: textStyles.displaySmall,
            ),
            Text(
              'displayMedium',
              style: textStyles.displayMedium,
            ),
            Text(
              'displayLarge',
              style: textStyles.displayLarge,
            ),
            Text(
              'headlineSmall',
              style: textStyles.headlineSmall,
            ),
            Text(
              'headlineMedium',
              style: textStyles.headlineMedium,
            ),
            Text(
              'headlineMedium',
              style: textStyles.headlineMedium,
            ),
            Text(
              'labelSmall',
              style: textStyles.labelSmall,
            ),
            Text(
              'labelMedium',
              style: textStyles.labelMedium,
            ),
            Text(
              'labelLarge',
              style: textStyles.labelLarge,
            ),
            Text(
              'titleSmall',
              style: textStyles.titleSmall,
            ),
            Text(
              'titleMedium',
              style: textStyles.titleMedium,
            ),
            Text(
              'titleLarge',
              style: textStyles.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
