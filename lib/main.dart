import 'package:flutter/material.dart';

import './product_manager.dart';
import './pages/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple
        ),
        home: HomePage(),
    );
  }
}