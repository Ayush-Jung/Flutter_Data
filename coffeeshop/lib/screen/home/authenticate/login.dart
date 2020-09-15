import 'package:coffeeshop/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[800],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Coffee Shop'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text('sign in anon'),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();

            if (result == null) {
              print('Error in sign in');
            } else {
              print('Signed in');
              print(result);
            }
          },
        ),
      ),
    );
  }
}
