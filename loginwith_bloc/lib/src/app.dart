import 'package:flutter/material.dart';
import 'screens/loginscreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Me In',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
