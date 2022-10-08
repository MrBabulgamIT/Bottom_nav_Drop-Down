import 'package:flutter/material.dart';

class Bottom_Nav_2 extends StatelessWidget {
  const Bottom_Nav_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            "This is Page Number 2",
            style: TextStyle(fontSize: 20, wordSpacing: 2, color: Colors.white),
          ),
        ));
  }
}
