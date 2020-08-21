import 'package:flutter/material.dart';
import 'package:mini_proj_eclub/constants.dart';
import 'package:mini_proj_eclub/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Project',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
            bodyText1: TextStyle(color: kSecondaryColor),
            bodyText2: TextStyle(color: kSecondaryColor)),
      ),
      home: MainScreen(),
    );
  }
}
