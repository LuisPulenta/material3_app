import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material3_app/config/routers/app_router.dart';
import 'package:material3_app/config/themes/themes.dart';

import 'presentation/providers/theme_provider.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'Material3 App',
      theme: AppTheme(
              selectedColor: ref.watch(selectedColorProvider),
              isDarkmode: ref.watch(isDarkmodeProvider))
          .theme(),
    );
  }
}
