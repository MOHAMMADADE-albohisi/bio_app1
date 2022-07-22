import 'package:bio_app1/screens/bio_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Mybio());
}

class Mybio extends StatelessWidget {
  const Mybio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bioscreen(),
    );
  }
}
