import 'package:flutter/material.dart';
import 'package:pageview_ex/screens/blank.screen.dart';
import 'package:pageview_ex/screens/home.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BlankScreen(),
    );
  }
}
