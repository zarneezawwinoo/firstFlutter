import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) => Center(
    child: Column(
      children: <Widget>[
        Icon(
          Icons.image,
          size: 64,
          color: Theme.of(context).primaryColor,
        ),
        const Text(
          'Simple Text Demo',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 32,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    )
  );
}
