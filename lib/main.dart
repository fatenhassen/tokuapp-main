import 'package:flutter/material.dart';
import 'package:toku/screens/Home_Page.dart';

void main() {
  runApp(Tokuapp());
}

class Tokuapp extends StatelessWidget {
  const Tokuapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


