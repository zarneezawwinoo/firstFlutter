import 'package:flutter/material.dart';
import 'ui/text_field_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' First Flutter',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TextFieldScreen(),

    );
}
