import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const ROUTE_NAME = "/home";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
