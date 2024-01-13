import 'package:flutter/material.dart';
import 'package:rps/play_screen.dart';
import 'package:rps/welcome_screen.dart';

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var actscreen = 'welcome';
  void playScreens() {
    setState(() {
      actscreen = 'playscreen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen = Welcome(playScreens);
    if (actscreen == 'playscreen') {
      screen = const PlayScreen();
    }
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 74, 33, 139),
            Color.fromARGB(255, 90, 1, 255)
          ], begin: Alignment.bottomLeft, end: Alignment.topRight),
        ),
        child: Center(
          child: screen,
        ));
  }
}
