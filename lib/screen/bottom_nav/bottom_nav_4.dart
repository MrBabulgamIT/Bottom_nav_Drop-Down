import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Bottom_Nav_4 extends StatelessWidget {
  const Bottom_Nav_4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.cyanAccent,
        body: Center(
          child: Text(
            "This is Page Number 4",
            style: TextStyle(fontSize: 20, wordSpacing: 2),
          ),
        ));
  }
}
