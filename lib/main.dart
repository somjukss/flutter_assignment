import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui/home_page.dart';
import 'package:flutter_assignment/ui/new_register.dart';
import './ui/login_UI.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'As1',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/",
      routes: {
        "/": (context) => HomeLog(),
        "/regis": (context) => NewRegis(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
