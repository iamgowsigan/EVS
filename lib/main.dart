import 'package:evs/mainPage.dart';
import 'package:evs/secondPage.dart';
import 'package:evs/title.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Environmental Science',
      debugShowCheckedModeBanner: false,
      home: title(),
    );
  }
}
