import 'package:flutter/material.dart';
import 'package:rps/myapp.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Myapp(),
      ),
    ),
  );
}
