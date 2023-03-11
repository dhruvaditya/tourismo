import 'package:flutter/material.dart';
import './screen/FirstRoute.dart';
import './components/app_drawer.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tourismo',
      home: FirstRoute(),
    );

  }
}
