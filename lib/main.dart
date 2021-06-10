import 'package:flutter/material.dart';
// import 'package:followup/screens/Landing.dart';
// import 'package:followup/screens/Register.dart';
import 'package:followup/screens/Login.dart';

void main() {
  runApp(Index());
}

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
