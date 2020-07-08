import 'package:flutter/material.dart';
import 'package:bank/pages/homePage.dart';

void main() {
  runApp(BankApp());
}

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Homepage(),
      
    );
  }
}
