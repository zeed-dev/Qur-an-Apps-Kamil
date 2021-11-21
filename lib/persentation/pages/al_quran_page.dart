import 'package:flutter/material.dart';

class AlQuranPage extends StatelessWidget {
  static const ROUTE_NAME = "/alquran";

  const AlQuranPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Al-Qur'an Page"),
      ),
    );
  }
}
