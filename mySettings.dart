import 'package:flutter/material.dart';
import 'package:plant_prototype/Constants/styles.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var styleContants = styleValues();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Settings",
          style: styleContants.textStyle5,
        ),
        backgroundColor: Colors.white,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            "Under Progress..",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
