import 'package:daftar_got/main_screen.dart';
import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Of Trones',
      home: MainScreen(),
    );
  }
}
