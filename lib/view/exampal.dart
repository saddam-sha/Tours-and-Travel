import 'package:flutter/material.dart';

class Exampal extends StatelessWidget {
  const Exampal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 0.16,
        width: MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
