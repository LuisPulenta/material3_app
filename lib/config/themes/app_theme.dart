import 'package:flutter/material.dart';

const Color _customColor = Color(0xff5c11d4);

const List<Color> colorThemes = [
  _customColor,
  Colors.blueAccent,
  Colors.blue,
  Colors.lightBlue,
  Colors.lightBlueAccent,
  Colors.cyan,
  Colors.cyanAccent,
  Colors.blueGrey,
  Colors.teal,
  Colors.tealAccent,
  Colors.red,
  Colors.redAccent,
  Colors.pink,
  Colors.pinkAccent,
  Colors.deepOrange,
  Colors.deepOrangeAccent,
  Colors.orange,
  Colors.orangeAccent,
  Colors.yellow,
  Colors.yellowAccent,
  Colors.amber,
  Colors.amberAccent,
  Colors.lime,
  Colors.limeAccent,
  Colors.green,
  Colors.greenAccent,
  Colors.lightGreen,
  Colors.lightGreenAccent,
  Colors.purple,
  Colors.purpleAccent,
  Colors.deepPurple,
  Colors.deepPurpleAccent,
  Colors.indigo,
  Colors.indigoAccent,
  Colors.brown,
  Colors.grey,
  Colors.white,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 8})
      : assert(selectedColor >= 0 && selectedColor <= colorThemes.length - 1,
            'selectedColor debe estar entre 0 y ${colorThemes.length}');

  ThemeData theme() {
    Color color = colorThemes[selectedColor];
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: color,
      //brightness: Brightness.dark,
      appBarTheme: const AppBarTheme()
          .copyWith(centerTitle: true, backgroundColor: color),

      textTheme: ThemeData.light().textTheme.apply(
            fontFamily: "PTSansNarrow-Regular",
          ),
      primaryTextTheme: ThemeData.light().textTheme.apply(
            fontFamily: "PTSansNarrow-Regular",
          ),
    );
  }
}
