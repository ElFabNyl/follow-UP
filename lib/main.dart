import 'package:flutter/material.dart';
// import 'package:followup/screens/Landing.dart';
// import 'package:followup/screens/Register.dart';
// import 'package:followup/screens/Login.dart';
// import 'package:followup/screens/AddConvert.dart';
import 'package:followup/screens/Home.dart';
// import 'package:followup/screens/Landing.dart';

void main() {
  runApp(Index());
}

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
