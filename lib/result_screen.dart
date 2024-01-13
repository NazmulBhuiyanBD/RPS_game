import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {super.key, required this.cmpChoose, required this.ownChoose});
  final int cmpChoose;
  final int ownChoose;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  var result = 'win';
  var cmpChooset = 0;
  var ownChooset = 0;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
