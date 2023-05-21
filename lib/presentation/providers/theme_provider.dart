import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material3_app/config/themes/themes.dart';

//Un simple booleano
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

//Listado de colores inmutable
final colorListProvider = Provider<List<Color>>((ref) => colorThemes);

//Un simple entero
final selectedColorProvider = StateProvider<int>((ref) => 0);

// //Un objeto de tipo AppTheme
// final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
//   (ref) => ThemeNotifier(),
// );

// //Controller o Notifier
// class ThemeNotifier extends StateNotifier<AppTheme> {
//   //STATE = Estado =new AppTheme();
//   ThemeNotifier() : super(AppTheme());

//   void toggleDarMode() {
//     state = state.copyWith(isDarkmode: !state.isDarkmode);
//   }

//   void changeColorIndex(int colorIndex) {
//     state = state.copyWith(selectedColor: colorIndex);
//   }
// }
