// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:login_and_signup_page_flutter/screen/Home.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login & SignUp",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
