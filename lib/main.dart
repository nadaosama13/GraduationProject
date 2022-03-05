//import 'package:epanel/AddAD.dart';
import 'package:flutter/material.dart';
import 'AddAD.dart';
import 'AddCar2.dart';
import 'AddCategory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddCar2(),
    );
  }
}
