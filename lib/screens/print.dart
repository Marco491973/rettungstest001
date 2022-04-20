import 'package:flutter/material.dart';

class Print extends StatelessWidget {
  const Print({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Print',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
