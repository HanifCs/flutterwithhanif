import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to $days of course"),
          ),
        ),
      ),
    );
  }
}
