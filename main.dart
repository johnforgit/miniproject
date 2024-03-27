import 'package:flutter/material.dart';
import 'package:plant_prototype/Pages/hiddenDrawerMenu.dart';
import 'package:plant_prototype/Pages/myHomePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HiddenDrawer(),
      debugShowCheckedModeBanner: false,
    );
  }
}
