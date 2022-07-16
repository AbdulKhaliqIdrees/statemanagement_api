import 'package:flutter/material.dart';
import 'package:statemanagement_api/views/my_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "State_Management_API",
      home: MyHome(),
    );
  }
}
