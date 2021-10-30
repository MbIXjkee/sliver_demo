import 'package:flutter/material.dart';
import 'package:sliver_demo/screen/demo/demo_screen.dart';

void main() {
  runApp(const MyApp());
}

/// App widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DemoScreen(),
    );
  }
}