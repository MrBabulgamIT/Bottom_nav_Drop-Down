import 'package:flutter/material.dart';

class Bottom_Nav_1 extends StatelessWidget {
  const Bottom_Nav_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        drawerScrimColor: Colors.white,
        backgroundColor: Colors.yellowAccent,
        body: Center(
          child: Text(
            "This is Page Number 1",
            style: TextStyle(fontSize: 20, wordSpacing: 2),
          ),
        ));
  }
}
