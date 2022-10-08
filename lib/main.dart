import 'package:bottom_nav_drop_down/screen/drop_dawn/drop_down.dart';
import 'package:bottom_nav_drop_down/screen/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Drop_Down(),
    );
  }
}
