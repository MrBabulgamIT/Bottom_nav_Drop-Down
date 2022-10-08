import 'package:flutter/material.dart';

class Bottom_Nav_3 extends StatelessWidget {
  const Bottom_Nav_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: Text(
            "This is Page Number 3",
            style: TextStyle(fontSize: 20, wordSpacing: 2),
          ),
        ));
  }
}
