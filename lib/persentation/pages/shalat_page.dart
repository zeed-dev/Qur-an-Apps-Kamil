import 'package:flutter/material.dart';

class ShalatPage extends StatelessWidget {
  static const ROUTE_NAME = "/shalat";

  const ShalatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Shalat Page"),
      ),
    );
  }
}
