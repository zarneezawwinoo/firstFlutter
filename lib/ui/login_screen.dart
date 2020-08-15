import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) => Center(
    child: Icon(
      Icons.image,
      size: 64,
      color: Theme.of(context).primaryColor,
    )
  );
}
