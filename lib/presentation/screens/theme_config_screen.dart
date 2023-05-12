import 'package:flutter/material.dart';
import 'package:material3_app/config/themes/app_theme.dart';

class ThemeConfigScreen extends StatelessWidget {
  const ThemeConfigScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThemeConfigScreen'),
        centerTitle: true,
      ),
      body: const _ThemeConfigView(),
    );
  }
}
//---------------------------------------------------
//---------- _ThemeConfigView -----------------------
//---------------------------------------------------

class _ThemeConfigView extends StatelessWidget {
  const _ThemeConfigView();

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
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
      Colors.black12,
      Colors.black26,
      Colors.black38,
      Colors.black45,
      Colors.black54,
      Colors.black87,
    ];
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _CustomContainer(colors[index * 6]),
              _CustomContainer(colors[index * 6 + 1]),
              _CustomContainer(colors[index * 6 + 2]),
              _CustomContainer(colors[index * 6 + 3]),
              _CustomContainer(colors[index * 6 + 4]),
              _CustomContainer(colors[index * 6 + 5]),
            ],
          ),
        ),
      ),
    );
  }
}

//---------------------------------------------------
//---------- _CustomContainer -----------------------
//---------------------------------------------------
class _CustomContainer extends StatelessWidget {
  final Color color;
  const _CustomContainer(this.color);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Container(
          width: size.width * 0.15,
          height: size.width * 0.15,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Colors.black),
            boxShadow: [
              BoxShadow(
                color: color,
                spreadRadius: 2,
                blurRadius: 1,
                offset: Offset(1, 0), // changes position of shadow
              ),
            ],
          ),
        ),
      ),
    );
  }
}
